<#
.SYNOPSIS
    Download remote images referenced in markdown files and rewrite them with
    short kebab-case alt text and local relative URLs.
 
.DESCRIPTION
    For every *.md file under -Path:
      1. Finds every ![alt](url) image.
      2. Numbers them in order of appearance (1..N) per file.
      3. Builds a slug from the markdown file name (lowercase, kebab-case).
      4. Downloads each remote image into:
            <Path>/<AssetsDirName>/<relative dir>/<slug>/<slug>-figure-<N>.<ext>
      5. Rewrites the image to:
            ![<slug>-figure-<N>](<relative path to downloaded file>)
      6. Local images that already exist on disk are left untouched (only the
         alt text is normalized), so the script is safe to re-run.
 
.PARAMETER Path
    Folder to scan recursively. Required.
 
.PARAMETER AssetsDirName
    Name of the assets folder created under -Path. Default: "assets".
 
.PARAMETER WhatIf
    Show planned changes without writing files or downloading.
 
.EXAMPLE
    .\scripts\Localize-Images.ps1 -Path ".\Object-Oriented Design"
#>
[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory)]
    [string]$Path,
 
    [string]$AssetsDirName = 'assets'
)
 
$ErrorActionPreference = 'Stop'
 
function ConvertTo-Kebab {
    param([string]$Text)
    $t = $Text.ToLowerInvariant()
    $t = [regex]::Replace($t, '[^a-z0-9]+', '-')
    return $t.Trim('-')
}
 
function Encode-UrlPath {
    param([string]$RelativePath)
    # Encode each segment separately so '/' separators are preserved.
    ($RelativePath -split '/' | ForEach-Object {
        [System.Uri]::EscapeDataString($_)
    }) -join '/'
}
 
$rootPath = (Resolve-Path -LiteralPath $Path).Path
$assetsRoot = Join-Path $rootPath $AssetsDirName
 
if (-not (Test-Path -LiteralPath $assetsRoot)) {
    if ($PSCmdlet.ShouldProcess($assetsRoot, 'Create assets root')) {
        New-Item -ItemType Directory -Path $assetsRoot | Out-Null
    }
}
 
$mdFiles = Get-ChildItem -LiteralPath $rootPath -Recurse -Filter *.md -File |
    Where-Object { -not $_.FullName.StartsWith($assetsRoot, [System.StringComparison]::OrdinalIgnoreCase) }
 
# Alt text may contain literal ']' (e.g. "[1 2 3 4]"); only treat ']' as the
# terminator when it is immediately followed by '('. Newlines are not allowed
# inside the alt to avoid runaway matches.
$imgRegex = [regex]'!\[(?<alt>(?:[^\]\r\n]|\](?!\())*)\]\((?<url>[^)\s]+)(?<title>\s+"[^"]*")?\)'
 
$totalUpdated = 0
$totalDownloaded = 0
$totalSkipped = 0
$totalFailed = 0
 
foreach ($file in $mdFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.UTF8Encoding]::new($false))
    $matches = $imgRegex.Matches($content)
    if ($matches.Count -eq 0) { continue }
 
    $relDir = [System.IO.Path]::GetRelativePath($rootPath, $file.DirectoryName)
    if ($relDir -eq '.') { $relDir = '' }
 
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
    $slug = ConvertTo-Kebab $baseName
    if ([string]::IsNullOrEmpty($slug)) { $slug = 'figure' }
 
    $assetDir = if ([string]::IsNullOrEmpty($relDir)) {
        Join-Path $assetsRoot $slug
    } else {
        Join-Path (Join-Path $assetsRoot $relDir) $slug
    }
 
    if (-not (Test-Path -LiteralPath $assetDir)) {
        if ($PSCmdlet.ShouldProcess($assetDir, 'Create asset directory')) {
            New-Item -ItemType Directory -Path $assetDir -Force | Out-Null
        }
    }
 
    Write-Host ""
    Write-Host "==> $($file.FullName)" -ForegroundColor Cyan
    Write-Host "    images: $($matches.Count)  slug: $slug"
 
    $index = 0
    $evaluator = {
        param($m)
        $script:index++
        $i = $script:index
        $url = $m.Groups['url'].Value
        $newAlt = "$slug-figure-$i"
 
        if ($url -match '^https?://') {
            $cleanUrl = ($url -split '\?')[0]
            $ext = [System.IO.Path]::GetExtension($cleanUrl)
            if ([string]::IsNullOrWhiteSpace($ext) -or $ext.Length -gt 5) { $ext = '.png' }
            $localFileName = "$newAlt$ext"
            $localFullPath = Join-Path $assetDir $localFileName
 
            if (Test-Path -LiteralPath $localFullPath) {
                Write-Host "    [skip] $localFileName" -ForegroundColor DarkGray
                $script:totalSkipped++
            } else {
                if ($PSCmdlet.ShouldProcess($url, "Download to $localFileName")) {
                    try {
                        Invoke-WebRequest -Uri $url -OutFile $localFullPath -UseBasicParsing -MaximumRedirection 5
                        Write-Host "    [ get] $localFileName" -ForegroundColor Green
                        $script:totalDownloaded++
                    } catch {
                        Write-Warning "    [fail] $url -> $($_.Exception.Message)"
                        $script:totalFailed++
                        return "![$newAlt]($url)"
                    }
                }
            }
 
            $relFromFile = [System.IO.Path]::GetRelativePath($file.DirectoryName, $localFullPath) -replace '\\', '/'
            $encoded = Encode-UrlPath $relFromFile
            return "![$newAlt]($encoded)"
        }
        else {
            # Already a local / relative path — only normalize the alt.
            return "![$newAlt]($url)"
        }
    }
 
    $newContent = $imgRegex.Replace($content, $evaluator)
 
    if ($newContent -ne $content) {
        if ($PSCmdlet.ShouldProcess($file.FullName, 'Rewrite markdown')) {
            [System.IO.File]::WriteAllText($file.FullName, $newContent, [System.Text.UTF8Encoding]::new($false))
            $totalUpdated++
            Write-Host "    [save] markdown updated" -ForegroundColor Yellow
        }
    }
}
 
Write-Host ""
Write-Host "----- Summary -----" -ForegroundColor Cyan
Write-Host "Files updated:    $totalUpdated"
Write-Host "Images downloaded:$totalDownloaded"
Write-Host "Images skipped:   $totalSkipped (already on disk)"
Write-Host "Images failed:    $totalFailed"
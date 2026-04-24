# Localize-Images.ps1
 
Downloads remote images referenced in markdown files into a local `assets/`
folder and rewrites the markdown to use short kebab-case alt text and local
relative URLs.
 
## What it does
 
For every `*.md` file under `-Path`:
 
1. Finds every `![alt](url)` image in document order.
2. Builds a slug from the markdown file name (e.g. `4. Design a Parking Lot.md`
   → `4-design-a-parking-lot`).
3. For each image (numbered 1..N):
   - Downloads it to
     `<Path>/assets/<relative dir>/<slug>/<slug>-figure-<N>.<ext>`
   - Rewrites the markdown line to
     `![<slug>-figure-<N>](<relative path>)`
4. Skips downloads when the target file already exists, so the script is
   safe to re-run.
 
## Usage
 
```powershell
# From the repo root
.\scripts\Localize-Images.ps1 -Path ".\Object-Oriented Design"
 
# Custom assets folder name
.\scripts\Localize-Images.ps1 -Path ".\Mobile System Design" -AssetsDirName "_assets"
 
# Dry run — show what would happen, no downloads, no file writes
.\scripts\Localize-Images.ps1 -Path ".\System Design" -WhatIf
```
 
## Notes
 
- Requires PowerShell 7+ (uses `Path.GetRelativePath`).
- Files are written as UTF-8 without BOM.
- Only `http(s)://` image URLs are downloaded. Already-local image references
  are left in place; only their alt text is normalized.
- Failed downloads are logged as warnings and the original URL is kept.
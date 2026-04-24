# CheatSheet

A personal Obsidian vault for technical interview preparation and career notes.
It combines algorithm patterns, system design case studies, object-oriented
design practice, machine learning and generative AI system design, mobile system
design, resume guidance, and helper scripts for maintaining the notes.

## Table of Contents

- [Coding Interview Patterns](#coding-interview-patterns) - Core data structure
  and algorithm patterns with practice problems.
- [System Design](#system-design) - Scalable backend architecture concepts and
  end-to-end design interview examples.
- [Object-Oriented Design](#object-oriented-design) - OOD interview frameworks
  and domain modeling exercises.
- [Mobile System Design](#mobile-system-design) - Mobile architecture patterns
  and app-focused design case studies.
- [Machine Learning System Design](#machine-learning-system-design) - ML product
  design examples covering ranking, recommendation, search, and safety.
- [Generative AI System Design](#generative-ai-system-design) - GenAI system
  designs for assistants, RAG, generation, translation, and media workflows.
- [How to Write a Good Resume](#how-to-write-a-good-resume) - Resume strategy,
  structure, examples, and hiring-process context.
- [Scripts](#scripts) - Utility scripts for keeping markdown assets organized.

## Coding Interview Patterns

[Open section](./Coding%20Interview%20Patterns/)

Algorithm and data structure notes organized by reusable problem-solving
patterns. Use this section to recognize the right approach quickly, review common
templates, and practice representative interview problems.

| Section | Description |
| --- | --- |
| [1. Two Pointers](./Coding%20Interview%20Patterns/1.%20Two%20Pointers/) | Solve array and string problems by moving two indexes toward a target condition. |
| [2. Hash Maps And Sets](./Coding%20Interview%20Patterns/2.%20Hash%20Maps%20And%20Sets/) | Use fast lookup, counting, and membership checks to simplify search problems. |
| [3. Linked Lists](./Coding%20Interview%20Patterns/3.%20Linked%20Lists/) | Practice pointer manipulation, list reversal, cycle-style reasoning, and cache design. |
| [4. Fast And Slow Pointers](./Coding%20Interview%20Patterns/4.%20Fast%20And%20Slow%20Pointers/) | Detect cycles, find midpoints, and reason about repeated states with two speeds. |
| [5. Sliding Windows](./Coding%20Interview%20Patterns/5.%20Sliding%20Windows/) | Maintain a moving range to solve substring, subarray, and frequency-window problems. |
| [6. Binary Search](./Coding%20Interview%20Patterns/6.%20Binary%20Search/) | Search sorted spaces, answer ranges, rotated arrays, and monotonic decision problems. |
| [7. Stacks](./Coding%20Interview%20Patterns/7.%20Stacks/) | Model nested structure, expression evaluation, monotonic stacks, and undo-like flows. |
| [8. Heaps](./Coding%20Interview%20Patterns/8.%20Heaps/) | Track top-k items, streaming medians, and ordered merges with priority queues. |
| [9. Intervals](./Coding%20Interview%20Patterns/9.%20Intervals/) | Merge, compare, and count overlaps across ranges and schedules. |
| [10. Prefix Sums](./Coding%20Interview%20Patterns/10.%20Prefix%20Sums/) | Precompute cumulative values for fast range queries and subarray counting. |
| [11. Trees](./Coding%20Interview%20Patterns/11.%20Trees/) | Traverse, validate, serialize, and reason about binary trees and BSTs. |
| [12. Tries](./Coding%20Interview%20Patterns/12.%20Tries/) | Build prefix trees for autocomplete, wildcard lookup, and board-word search. |
| [13. Graphs](./Coding%20Interview%20Patterns/13.%20Graphs/) | Apply BFS, DFS, union-find, topological sorting, and shortest-path thinking. |
| [14. Backtracking](./Coding%20Interview%20Patterns/14.%20Backtracking/) | Explore combinations, permutations, constraints, and search trees systematically. |
| [15. Dynamic Programming](./Coding%20Interview%20Patterns/15.%20Dynamic%20Programming/) | Break problems into reusable subproblems with recurrence and state design. |
| [16. Greedy](./Coding%20Interview%20Patterns/16.%20Gready/) | Make locally optimal choices when the problem structure supports them. |
| [17. Sort And Search](./Coding%20Interview%20Patterns/17.%20Sort%20And%20Search/) | Review sorting, partitioning, selection, and linked-list sorting techniques. |
| [18. Bit Manipulation](./Coding%20Interview%20Patterns/18.%20Bit%20Manipulation/) | Use bit operations for compact arithmetic, masks, parity, and low-level tricks. |
| [19. Math and Geometry](./Coding%20Interview%20Patterns/19.%20Math%20and%20Geometry/) | Handle coordinate, number, geometry, and simulation-style interview problems. |

## System Design

[Open section](./System%20Design/)

Backend system design notes for learning how large-scale services evolve from a
single server to distributed architectures. The section combines core concepts,
estimation practice, and detailed product designs.

| Note | Description |
| --- | --- |
| [1. Scale From Zero To Millions Of Users](./System%20Design/1.%20Scale%20From%20Zero%20To%20Millions%20Of%20Users.md) | Introduces scaling stages, load balancing, databases, caches, CDNs, and reliability basics. |
| [2. Back-of-the-envelope Estimation](./System%20Design/2.%20Back-of-the-envelope%20Estimation.md) | Builds quick capacity, traffic, storage, and bandwidth estimates for interviews. |
| [3. A Framework For System Design Interviews](./System%20Design/3.%20A%20Framework%20For%20System%20Design%20Interviews.md) | Provides a repeatable structure for requirements, APIs, data model, design, and trade-offs. |
| [4. Design A Rate Limiter](./System%20Design/4.%20Design%20A%20Rate%20Limiter.md) | Explores request throttling algorithms and distributed enforcement. |
| [5. Design Consistent Hashing](./System%20Design/5.%20Design%20Consistent%20Hashing.md) | Explains data distribution, virtual nodes, and minimizing remapping during scale changes. |
| [6. Design A Key-value Store](./System%20Design/6.%20Design%20A%20Key-value%20Store.md) | Covers partitioning, replication, consistency, conflict resolution, and storage engines. |
| [7. Design A Unique ID Generator In Distributed Systems](./System%20Design/7.%20Design%20A%20Unique%20ID%20Generator%20In%20Distributed%20Systems.md) | Compares ID generation strategies such as UUIDs, Snowflake-style IDs, and database sequences. |
| [8. Design A URL Shortener](./System%20Design/8.%20Design%20A%20URL%20Shortener.md) | Designs short-link creation, redirection, hashing, storage, and analytics. |
| [9. Design A Web Crawler](./System%20Design/9.%20Design%20A%20Web%20Crawler.md) | Models crawling, scheduling, deduplication, politeness, and content processing. |
| [10. Design A Notification System](./System%20Design/10.%20Design%20A%20Notification%20System.md) | Covers fanout, channels, templates, preferences, retries, and delivery tracking. |
| [11. Design A News Feed System](./System%20Design/11.%20Design%20A%20News%20Feed%20System.md) | Explores feed generation, ranking, fanout strategies, and timeline storage. |
| [12. Design A Chat System](./System%20Design/12.%20Design%20A%20Chat%20System.md) | Designs messaging, delivery status, presence, push notifications, and storage. |
| [13. Design A Search Autocomplete System](./System%20Design/13.%20Design%20A%20Search%20Autocomplete%20System.md) | Covers prefix lookup, ranking, freshness, and high-throughput suggestion serving. |
| [14. Design YouTube](./System%20Design/14.%20Design%20YouTube.md) | Designs upload, transcoding, metadata, recommendations, and video delivery. |
| [15. Design Google Drive](./System%20Design/15.%20Design%20Google%20Drive.md) | Covers file sync, chunking, metadata, conflict handling, and permissions. |
| [16. Proximity Service](./System%20Design/16.%20Proximity%20Service.md) | Designs location indexing and nearby-place queries. |
| [17. Nearby Friends](./System%20Design/17.%20Nearby%20Friends.md) | Handles real-time location sharing, privacy, updates, and proximity matching. |
| [18. Google Maps](./System%20Design/18.%20Google%20Maps.md) | Reviews map data, routing, tiles, geocoding, and traffic-aware serving. |
| [19. Distributed Message Queue](./System%20Design/19.%20Distributed%20Message%20Queue.md) | Covers producers, consumers, partitions, ordering, retries, and durability. |
| [20. Metrics Monitoring and Alerting System](./System%20Design/20.%20Metrics%20Monitoring%20and%20Alerting%20System.md) | Designs ingestion, aggregation, storage, dashboards, and alert evaluation. |
| [21. Ad Click Event Aggregation](./System%20Design/21.%20Ad%20Click%20Event%20Aggregation.md) | Models stream ingestion, counting, deduplication, and near-real-time analytics. |
| [22. Hotel Reservation System](./System%20Design/22.%20Hotel%20Reservation%20System.md) | Covers inventory, booking consistency, payments, and availability search. |
| [23. Distributed Email Service](./System%20Design/23.%20Distributed%20Email%20Service.md) | Designs sending, receiving, storage, spam handling, and reliability. |
| [24. S3-like Object Storage](./System%20Design/24.%20S3-like%20Object%20Storage.md) | Explores object metadata, blob storage, replication, durability, and APIs. |
| [25. Real-time Gaming Leaderboard](./System%20Design/25.%20Real-time%20Gaming%20Leaderboard.md) | Designs ranking updates, score storage, and low-latency leaderboard reads. |
| [26. Payment System](./System%20Design/26.%20Payment%20System.md) | Covers payment flows, idempotency, ledgers, reconciliation, and failure handling. |
| [27. Digital Wallet](./System%20Design/27.%20Digital%20Wallet.md) | Models balances, transfers, transaction history, compliance, and consistency. |
| [28. Stock Exchange](./System%20Design/28.%20Stock%20Exchange.md) | Reviews order books, matching engines, market data, and latency-sensitive design. |
| [29. The Learning Continues](./System%20Design/29.%20The%20Learning%20Continues.md) | Wraps the section with guidance for continued system design practice. |

## Object-Oriented Design

[Open section](./Object-Oriented%20Design/)

OOD interview preparation focused on turning real-world requirements into clean
objects, responsibilities, relationships, and extensible domain models.

| Note | Description |
| --- | --- |
| [1. What is an Object-Oriented Design Interview](./Object-Oriented%20Design/1.%20What%20is%20an%20Object-Oriented%20Design%20Interview.md) | Explains what OOD interviews test and how they differ from algorithm rounds. |
| [2. A Framework for the OOD Interview](./Object-Oriented%20Design/2.%20A%20Framework%20for%20the%20OOD%20Interview.md) | Gives a structured approach for requirements, classes, relationships, and behaviors. |
| [3. OOP Fundamentals](./Object-Oriented%20Design/3.%20OOP%20Fundamentals.md) | Reviews encapsulation, abstraction, inheritance, polymorphism, and design principles. |
| [4. Design a Parking Lot](./Object-Oriented%20Design/4.%20Design%20a%20Parking%20Lot.md) | Practices modeling spaces, vehicles, tickets, pricing, and availability. |
| [5. Design a Movie Ticket Booking System](./Object-Oriented%20Design/5.%20Design%20a%20Movie%20Ticket%20Booking%20System.md) | Covers shows, seats, reservations, payments, and booking workflows. |
| [6. Design a Unix File Search System](./Object-Oriented%20Design/6.%20Design%20a%20Unix%20File%20Search%20System.md) | Models filters, search criteria, file metadata, and extensible query behavior. |
| [7. Design a Vending Machine](./Object-Oriented%20Design/7.%20Design%20a%20Vending%20Machine.md) | Designs inventory, payments, product selection, and machine states. |
| [8. Design an Elevator System](./Object-Oriented%20Design/8.%20Design%20an%20Elevator%20System.md) | Explores dispatching, requests, elevator state, and scheduling logic. |
| [9. Design a Grocery Store System](./Object-Oriented%20Design/9.%20Design%20a%20Grocery%20Store%20System.md) | Models products, carts, checkout, pricing, discounts, and inventory. |
| [10. Design a Tic Tac Toe Game](./Object-Oriented%20Design/10.%20Design%20a%20Tic%20Tac%20Toe%20Game.md) | Practices board state, players, moves, validation, and win detection. |
| [11. Design a Blackjack Game](./Object-Oriented%20Design/11.%20Design%20a%20Blackjack%20Game.md) | Models cards, decks, hands, players, dealers, and game rules. |
| [12. Design a Shipping Locker System](./Object-Oriented%20Design/12.%20Design%20a%20Shipping%20Locker%20System.md) | Covers lockers, packages, pickup codes, delivery flows, and expiration. |
| [13. Design an ATM System](./Object-Oriented%20Design/13.%20Design%20an%20ATM%20System.md) | Designs accounts, cards, authentication, withdrawals, deposits, and transactions. |
| [14. Design a Restaurant Management System](./Object-Oriented%20Design/14.%20Design%20a%20Restaurant%20Management%20System.md) | Models reservations, tables, orders, menus, staff, and billing. |

## Mobile System Design

[Open section](./Mobile%20System%20Design/)

Mobile design notes for client architecture, offline behavior, pagination,
syncing, media, notifications, and app-specific trade-offs.

| Note | Description |
| --- | --- |
| [1. Introduction](./Mobile%20System%20Design/1.%20Introduction.md) | Introduces the scope and expectations of mobile system design interviews. |
| [2. A framework for Mobile SD interviews](./Mobile%20System%20Design/2.%20A%20framework%20for%20Mobile%20SD%20interviews.md) | Provides a step-by-step interview structure for mobile products. |
| [3. News feed app](./Mobile%20System%20Design/3.%20News%20feed%20app.md) | Designs feed rendering, caching, pagination, refresh, and offline behavior. |
| [4. Chat app](./Mobile%20System%20Design/4.%20Chat%20app.md) | Covers messaging, local storage, delivery state, sync, and notifications. |
| [5. Stock trading app](./Mobile%20System%20Design/5.%20Stock%20trading%20app.md) | Reviews real-time data, trading flows, reliability, and security-sensitive UX. |
| [6. Pagination library](./Mobile%20System%20Design/6.%20Pagination%20library.md) | Explores reusable paging abstractions, loading states, and data-source boundaries. |
| [7. Hotel reservation app](./Mobile%20System%20Design/7.%20Hotel%20reservation%20app.md) | Designs search, availability, booking, payments, and confirmation flows. |
| [8. Google Drive app](./Mobile%20System%20Design/8.%20Google%20Drive%20app.md) | Covers file browsing, sync, uploads, conflict handling, and offline access. |
| [9. YouTube app](./Mobile%20System%20Design/9.%20YouTube%20app.md) | Designs video browsing, playback, caching, recommendations, and uploads. |
| [10. Mobile System Design Building Blocks](./Mobile%20System%20Design/10.%20Mobile%20System%20Design%20Building%20Blocks.md) | Summarizes common client-side primitives used across mobile designs. |
| [11. Quick Reference Cheat Sheet for MSD Interview](./Mobile%20System%20Design/11.%20Quick%20Reference%20Cheat%20Sheet%20for%20MSD%20Interview.md) | Provides a compact review sheet for mobile interview preparation. |

## Machine Learning System Design

[Open section](./Machine%20Learning%20System%20Design/)

ML system design case studies that connect product goals to data collection,
training, serving, evaluation, monitoring, and feedback loops.

| Note | Description |
| --- | --- |
| [1. Introduction and Overview](./Machine%20Learning%20System%20Design/1.%20Introduction%20and%20Overview.md) | Establishes the ML design interview framework and lifecycle. |
| [2. Visual Search System](./Machine%20Learning%20System%20Design/2.%20Visual%20Search%20System.md) | Designs image embedding, retrieval, ranking, and latency-aware serving. |
| [3. Google Street View Blurring System](./Machine%20Learning%20System%20Design/3.%20Google%20Street%20View%20Blurring%20System.md) | Covers detection, privacy filtering, human review, and large-scale image processing. |
| [4. YouTube Video Search](./Machine%20Learning%20System%20Design/4.%20YouTube%20Video%20Search.md) | Designs video indexing, query understanding, ranking, and evaluation. |
| [5. Harmful Content Detection](./Machine%20Learning%20System%20Design/5.%20Harmful%20Content%20Detection.md) | Reviews classification, moderation queues, policy signals, and safety trade-offs. |
| [6. Video Recommendation System](./Machine%20Learning%20System%20Design/6.%20Video%20Recommendation%20System.md) | Covers candidate generation, ranking, personalization, and feedback loops. |
| [7. Event Recommendation System](./Machine%20Learning%20System%20Design/7.%20Event%20Recommendation%20System.md) | Designs recommendations using location, interests, social signals, and freshness. |
| [8. Ad Click Prediction on Social Platforms](./Machine%20Learning%20System%20Design/8.%20Ad%20Click%20Prediction%20on%20Social%20Platforms.md) | Models CTR prediction, feature pipelines, online serving, and business metrics. |
| [9. Similar Listings on Vacation Rental Platforms](./Machine%20Learning%20System%20Design/9.%20Similar%20Listings%20on%20Vacation%20Rental%20Platforms.md) | Explores embeddings, similarity retrieval, ranking, and marketplace constraints. |
| [10. Personalized News Feed](./Machine%20Learning%20System%20Design/10.%20Personalized%20News%20Feed.md) | Designs feed personalization, ranking features, freshness, and engagement metrics. |
| [11. People You May Know](./Machine%20Learning%20System%20Design/11.%20People%20You%20May%20Know.md) | Covers graph features, candidate generation, ranking, and trust/privacy concerns. |

## Generative AI System Design

[Open section](./Generative%20AI%20System%20Design/)

GenAI system design examples for language, image, video, retrieval, and
personalization systems. Use this section to connect model behavior with product
requirements, data pipelines, evaluation, safety, and serving architecture.

| Note | Description |
| --- | --- |
| [1. Introduction and Overview](./Generative%20AI%20System%20Design/1.%20Introduction%20and%20Overview.md) | Introduces common GenAI design concepts, lifecycle, and interview framing. |
| [2. Gmail Smart Compose](./Generative%20AI%20System%20Design/2.%20Gmail%20Smart%20Compose.md) | Designs text suggestion, personalization, latency, ranking, and acceptance metrics. |
| [3. Google Translate](./Generative%20AI%20System%20Design/3.%20Google%20Translate.md) | Covers translation models, language coverage, evaluation, and serving constraints. |
| [4. ChatGPT Personal Assistant Chatbot](./Generative%20AI%20System%20Design/4.%20ChatGPT%20Personal%20Assistant%20Chatbot.md) | Designs assistant memory, tools, context retrieval, safety, and conversation UX. |
| [5. Image Captioning](./Generative%20AI%20System%20Design/5.%20Image%20Captioning.md) | Connects vision-language models to caption generation, ranking, and evaluation. |
| [6. Retrieval-Augmented Generation](./Generative%20AI%20System%20Design/6.%20Retrieval-Augmented%20Generation.md) | Covers indexing, retrieval, grounding, answer generation, and hallucination control. |
| [7. Realistic Face Generation](./Generative%20AI%20System%20Design/7.%20Realistic%20Face%20Generation.md) | Reviews generative image modeling, identity constraints, quality, and safety. |
| [8. High-Resolution Image Synthesis](./Generative%20AI%20System%20Design/8.%20High-Resolution%20Image%20Synthesis.md) | Designs high-quality generation, upscaling, conditioning, and serving pipelines. |
| [9. Text-to-Image Generation](./Generative%20AI%20System%20Design/9.%20Text-to-Image%20Generation.md) | Covers prompt processing, diffusion-style generation, moderation, and evaluation. |
| [10. Personalized Headshot Generation](./Generative%20AI%20System%20Design/10.%20Personalized%20Headshot%20Generation.md) | Designs identity-preserving generation, uploads, personalization, and quality control. |
| [11. Text-to-Video Generation](./Generative%20AI%20System%20Design/11.%20Text-to-Video%20Generation.md) | Explores temporal consistency, generation pipelines, compute cost, and safety review. |

## How to Write a Good Resume

[Open section](./How%20to%20Write%20a%20Good%20Resume/)

Career-writing notes that explain how resumes are screened, how to structure a
technical resume, and how to improve it with examples and revision exercises.

| Section | Description |
| --- | --- |
| [Acknowledgements](./How%20to%20Write%20a%20Good%20Resume/1.%20Acknowledgements.md) | Credits and context for the resume-writing material. |
| [Introduction](./How%20to%20Write%20a%20Good%20Resume/2.%20Introduction.md) | Frames the purpose of the resume guide and how to use it. |
| [Part 1. Resumes and the Hiring Process](./How%20to%20Write%20a%20Good%20Resume/PART%201.%20RESUMES%20AND%20THE%20HIRING%20PROCESS/) | Explains why resumes matter and how they move through hiring pipelines. |
| [Part 2. Writing the Resume](./How%20to%20Write%20a%20Good%20Resume/PART%202.%20WRITING%20THE%20RESUME/) | Covers resume basics, structure, impact, common mistakes, and polishing exercises. |
| [Part 3. Examples and Inspiration](./How%20to%20Write%20a%20Good%20Resume/PART%203.%20EXAMPLES%20AND%20INSPIRATION/) | Provides templates, improvement examples, and hiring-manager screening advice. |
| [Conclusion](./How%20to%20Write%20a%20Good%20Resume/3.%20Conclusion.md) | Closes the guide with final resume-building takeaways. |

## Scripts

[Open section](./scripts/)

Maintenance utilities for the vault.

| Script | Description |
| --- | --- |
| [Localize-Images.ps1](./scripts/Localize-Images.ps1) | Downloads remote markdown images into local assets folders and rewrites image links with stable relative paths. |
| [scripts README](./scripts/README.md) | Documents usage, behavior, dry-run support, and notes for the image-localization script. |

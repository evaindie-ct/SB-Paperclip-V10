# San Bernardo System Infrastructure & Design Workflow Plan

> **For Hermes:** This is the infrastructure blueprint. Execute task by task after user approval.
> Eagle is the visual file manager. Paperclip workers + Hermes are the data/automation layer.
> The repo (`~/Documents/SB-V10/`) is the shared filesystem between them.

**Goal:** Build the complete visual + data infrastructure so every San Bernardo product has:
- A visual home in Eagle (pink folders, colour tags, thumbnail previews)
- A data home in the repo (product-status tracker, standardised file naming)
- A defined workflow for moving through the 9-stage pipeline (design-to-production-system-v1.md)

**Architecture:**
- **Layer 1: Visual (Eagle)** -- you browse/search by colour, see thumbnails, drag files between folders
- **Layer 2: Data (repo + tracker)** -- the product-status.xlsx, the reference databases, the Paperclip worker instructions
- **Layer 3: Automation (Hermes + Paperclip)** -- I (Hermes) manage the data layer, Paperclip workers execute tasks
- **Bridge:** Eagle API -- so Paperclip workers can search the library programmatically

**Constraints:**
- You cannot use Airtable (per earlier decision)
- You already use Miro for mood boards
- No paid subscriptions wanted unless essential
- Eagle is one-time $34.95

---

## Phase 1: Visual Asset Library (Eagle)

### Task 1.1: Install Eagle
- Download from https://eagle.cool/
- One-time payment $34.95
- Install on this machine (Windows/Linux? need to check)
- Create library at ~/Documents/SB-Eagle-Library/

### Task 1.2: Build the folder structure in Eagle
- Root folder: SAN BERNARDO
- Colour-coded subfolders per product:
  - [red] Fitz Roy
  - [blue] Horizons
  - [green] Austral
  - [orange] Borreguito
  - [purple] Cherry Coded
  - [pink] Polo Sur
  - [yellow] Poncho Andino
  - [grey] Gorro Andino
  - [teal] Cardigan Trevelin
  - [brown] Manta
  - [lime] Musgo Antartico
- Plus reference folders:
  - [white] Brand Assets (logos, fonts, colours, packaging)
  - [white] Suppliers & Factories
  - [white] Mood Boards & Inspiration

### Task 1.3: Import all existing files into Eagle
- Import from: `~/Documents/SB-V10/companies/san-bernardo/reference-files/productos/Productos/`
- Import brand assets from: `grafica/` and `assets/`
- Eagle auto-generates thumbnails for AI, PDF, PNG, JPG, PSD files
- Each product folder gets its files imported

### Task 1.4: Tag every file with metadata
- Tags per file: product name, stage number, colourway, fibre type, designer
- Example: Fitz Roy tech pack -> tags: `FitzRoy`, `stage4`, `cream`, `merino`, `Rebecca`
- Eagle has auto-tag based on folder (files tagged with parent folder name)

### Task 1.5: Set up colour search tagging
- For each image/tech pack: add colour tags for dominant colours
- "Cream", "Black", "Cherry", "Bordo", "Chocolate", "Blue", "Green"
- This enables search by colour palette across the library

---

## Phase 2: Product Status Data Layer

### Task 2.1: Create product-status.xlsx
- Every product as a row
- Columns: Name, Pipeline Stage (0-8), Status, Designer, Files Exist, Gaps, Priority
- Stored in the repo at `companies/san-bernardo/product-status.xlsx`
- This is the single source of truth for where each product is

### Task 2.2: Clean up dated filenames
- `Gorro_Andino_23_04_2025.xlsx` -> `04-gorro-andino-spec.xlsx`
- `Gorro_Andino_09_04_2025 (1).xlsx` -> remove duplicate/older versions
- `FITZ ROY SWEATER REVISED COLOURS_1.ai` -> `01-fitz-roy-flat-front.ai`
- Standard: `[stage-number]-[product-name]-[description].[ext]`

### Task 2.3: Create supplier database (structured)
- Extract from Suppliers_SB.xlsx and Knitwear_2025.xlsx Factories sheet
- Structured as a queryable format in the repo
- Paperclip workers can search it by country, MOQ, rating, product type

### Task 2.4: Create stockist contact database
- Extract from Suppliers_SB.xlsx STOCK sheet (1,371 stockists)
- Organised by country/city for Paperclip B2B Sales Lead to use

### Task 2.5: Rewrite launch-critical-path.md
- Update dates (currently says May 2025)
- Align with the 9-stage pipeline from design-to-production-system-v1.md
- Reflect actual current state (drafts, not production)

---

## Phase 3: Design Workflow Definition

### Task 3.1: Define how a product moves through Eagle + tracker
- You see a product in Eagle at stage 2
- You move its folder colour or tag to stage 3
- I update the product-status.xlsx
- The worker instructions in Paperclip get the latest status

### Task 3.2: Define the design handoff process
- When a designer (Rebecca/Carolyn) sends files:
  1. Files go into the product folder in the repo
  2. I import into Eagle with tags
  3. Product-status.xlsx gets updated
  4. Stage is assessed and assigned

### Task 3.3: Define the visual pipeline board
- Option A: Miro board with columns per stage, product cards that link to Eagle files
- Option B: Eagle smart folders per stage (auto-collect files by stage tag)
- Option C: Both (Miro for overview, Eagle for deep asset access)

### Task 3.4: Specify what happens at each stage transition
- Stage 0->1: When you approve a concept, you add the first vector flat to Eagle
- Stage 1->2: When yarn is selected, the yarn spec file is added and tagged
- Each transition triggers: Eagle update + tracker update + repo commit

---

## Phase 4: Paperclip Worker Integration

### Task 4.1: Research Eagle API capabilities
- Does Eagle expose a REST API? (indications say yes, port 41595)
- Can workers search by colour via API?
- Can workers add tags to files?
- Can workers retrieve file paths?

### Task 4.2: Decide integration mode
- If API works: write a thin bridge script Paperclip workers can call
- If API doesn't work: Eagle is your visual tool only, workers use the repo filesystem

### Task 4.3: Update Paperclip worker instructions
- The Knitwear Technical Specialist, Tech Pack Lead, Librarian Worker get instructions on:
  - Where to find files (repo paths)
  - How to reference Eagle library paths
  - How to update the product-status.xlsx

---

## Phase 5: Execute Phase 1 of the Pipeline (First Products)

### Task 5.1: Lock the first batch of products
- Decide which products go first
- The most advanced ones (Fitz Roy, Horizons, Austral) are candidates

### Task 5.2: Complete each stage per product through the system
- For the first product: close all gaps from stage 0 to current stage
- Then advance it through the pipeline with the full system in place

---

## Open Decisions (need your input)

1. **Edge browser or Chrome?** Eagle has a browser extension for saving inspiration -- which browser do you use?
2. **Eagle library location:** Keep it on this machine or on external/cloud drive?
3. **Product status tool:** Should product-status.xlsx live in the repo (git-tracked) or standalone?
4. **First product batch:** How do you want to decide which products to start the pipeline with?

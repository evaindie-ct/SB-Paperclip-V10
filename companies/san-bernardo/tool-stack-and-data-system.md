# San Bernardo Tool Stack & Data System v1

Your current state: mood boards in Miro, measurement spreadsheet in Google Drive,
design drafts as reference images. Goal: a connected system where each Paperclip
worker has the tools and databases they need to execute their scope.

---

## RECOMMENDED STACK BY FUNCTION

### 1. SKETCHING & TECHNICAL FLATS
**Tool: Adobe Illustrator**
Why: Industry standard. Factories require vector files (.ai or .eps). Inkscape is
free alternative but factories prefer Illustrator.
Cost: EUR 25/month (Illustrator alone) or EUR 65/month (Creative Cloud full suite)
Learning curve: steep (2-6 months to factory-ready flats), but this is your only
option for professional vector technical sketches.
Alternative: Repsketch (easier, fashion-specific sketching with built-in proportions)
Paperclip worker: Template/Production Designer, Design Lead

### 2. TECH PACK CREATION & MANAGEMENT
**Recommended: Techpacker**
Why: Cloud-based, real-time collaboration, reusable BOM/spec libraries, version
control, status tracking. Can export to PDF for factories. Integrates with
Illustrator. Used by 10,000+ brands. Cheaper than full PLM.
Cost: USD 35-125/user/month depending on plan
Alternative low cost: Adobe Illustrator + Google Sheets + manual PDF compile
Alternative AI: Adstronaut AI (USD 3-5 per tech pack from photo, less control)
Paperclip worker: Tech Pack / Product Development Lead, Template/Production Designer

### 3. COLOUR MANAGEMENT
**Tool: Pantone Connect**
Why: Digital access to 15,000+ Pantone colours. Convert HEX, CMYK, RGB to
Pantone codes. Create and save custom palettes per collection. Share colour
references directly with factories.
Cost: Free basic tier, paid for full access
Physical: Pantone FHI (Fashion, Home + Interiors) cotton swatch book -- mandatory
for any fashion brand. Factories need physical colour references to match.
Cost: ~EUR 400-600 one-time for the swatch book set
Paperclip worker: Design Lead, Knitwear Technical Specialist

### 4. SUPPLIER & MATERIAL DATABASE
There is no single "fashion supplier directory" that covers everything. The
industry standard approach for small brands:

**Yarn suppliers (merino/alpaca):**
- Zegna Baruffa (Italy) -- luxury, high minimums
- Suedwolle Group (Germany) -- mid-high volume, diverse
- Xin'ao (China) -- acquired Duncan Cashmere, supplies Prada/Burberry
- UPW (China) -- large volume, traceable supply chain
- Botto Giuseppe (Italy) -- vertical integration
- Loro Piana (Italy) -- luxury, high minimums
- Todd & Duncan (UK/Scotland) -- cashmere specialist
- PRACTICAL: Your factories will either stock yarn from these spinners or have
  their own relationships. The fastest path is asking factories what they have.
  Spinners generally require minimums of 50-200kg per colour which is too high
  for your first season.

**Trim & hardware suppliers:**
- Cusmytrims.com -- custom labels, buttons, patches, hang tags, packaging, low MOQ
- TrimTag.com -- wholesale buttons, zipper pulls, labels
- BrandID.com -- custom fashion trims
- Fast delivery, low minimums for small brands

**Factory directory:**
- Maker's Row (US-focused, not ideal for EU)
- CFDA Production Directory (US-focused)
- Source Fashion UK (trade shows, not directory)
- Alibaba (hit or miss, but your 12 shortlisted factories are already from here)

**Recommended approach for San Bernardo:**
Build your OWN supplier database in Airtable or Google Sheets with structured
fields so Paperclip workers can query it. Start with the data you already have
(12 factories) and add yarn spinners, trim suppliers, etc. as you work with them.

### 5. PRODUCT DATA MANAGEMENT
**Recommended: Airtable**
Why: Database + spreadsheet + collaboration. Each product (model) is a record.
Linked records for: colourways, sizes, BOM items, suppliers, tech pack versions,
sample tracking. Can be the single source of truth for Paperclip workers.
Cost: Free tier (1,000 records/base), paid from USD 20/user/month
Paperclip worker: Product Catalog Lead, Data/Reporting Operator

**Alternative: Google Sheets**
Cheaper but no relational data, no linked records, poor version control.
Only use if budget is zero.

### 6. MOODBOARDS & INSPIRATION
You already have Miro. Keep it. It's fine for this.
Paperclip worker: Design Lead, Marketing Lead

### 7. PROJECT MANAGEMENT
You already have Paperclip workers for this (Operations Coordinator).
If you need a visual timeline: Notion or Google Sheets (simple).
Paperclip worker: Operations Coordinator

### 8. COMMUNICATION WITH FACTORIES
WeChat for Chinese factories, email for European. No tool changes this.

---

## PROPOSED DATA ARCHITECTURE

Airtable base structure (can also be done in Google Sheets if preferred):

### Table 1: Products (models)
| Field | Type | Example |
|---|---|---|
| Product ID | Auto-increment | SB-SW-001 |
| Name | Text | Classic Merino Crew |
| Category | Single select | Sweater / Scarf |
| Collection | Single select | AW25 |
| Status | Single select | Design / Tech Pack / Quoting / Sampling / Production |
| Design Lead | Link to Designers | |
| Tech Pack | Attachment (PDF) | |
| Tech Pack version | Number | 0.1 / 0.2 / 1.0 |
| Measurement sheet | Attachment | |
| Price target (retail) | Currency | EUR 390 |
| Price target (wholesale) | Currency | EUR 195 |
| Notes | Long text | |

### Table 2: Colourways (linked to Products)
| Field | Type | Example |
|---|---|---|
| Product | Link to Products | SB-SW-001 |
| Colour name | Text | Charcoal |
| Pantone code | Text | 19-4007 TCX |
| Hex code | Text | #4A4A4A |
| Status | Single select | Approved / Pending sample / Rejected |
| Factory colour reference | Text | 801-Grey |

### Table 3: Sizes
| Field | Type | Example |
|---|---|---|
| Product | Link to Products | SB-SW-001 |
| Size | Single select | XS / S / M / L / XL |
| Chest | Number (cm) | 52 |
| Body length | Number (cm) | 66 |
| Sleeve length | Number (cm) | 62 |
| Shoulder | Number (cm) | 46 |
| Tolerance | Text | +/- 1cm |

### Table 4: BOM (linked to Products)
| Field | Type | Example |
|---|---|---|
| Product | Link to Products | SB-SW-001 |
| Material type | Single select | Yarn / Button / Label / Thread |
| Supplier | Link to Suppliers | Zegna Baruffa |
| Supplier product code | Text | BAR-1234-MERINO |
| Colour | Text | Charcoal |
| Quantity per garment | Number | 1 (label) / 200g (yarn) |
| Unit cost | Currency | EUR 12/kg |
| Lead time | Number (days) | 14 |
| MOQ | Number | 50kg |

### Table 5: Suppliers
| Field | Type | Example |
|---|---|---|
| Supplier name | Text | Xin'ao Yarns |
| Type | Multi select | Yarn spinner / Factory / Trims |
| Country | Text | China |
| Contact | Text | Contact person name |
| WeChat/Email | Text | |
| Products they supply | Long text | Merino, cashmere blends |
| Minimum MOQ | Number | 50kg |
| Payment terms | Text | 30% deposit, 70% before shipment |
| Lead time | Number (days) | 45-60 |
| Rating | Number | 4/5 |
| Notes | Long text | |

### Table 6: Quotes (linked to Products + Suppliers)
| Field | Type | Example |
|---|---|---|
| Product | Link to Products | SB-SW-001 |
| Supplier | Link to Suppliers | Factory A |
| Unit price (500 pcs) | Currency | EUR 28 |
| Sample cost | Currency | EUR 120 |
| Sample lead time | Number (days) | 10 |
| Production lead time | Number (days) | 45 |
| MOQ per colourway | Number | 150 |
| Payment terms | Text | 30/70 |
| Incoterms | Single select | FOB / CIF / EXW |
| Status | Single select | Received / Evaluating / Won / Lost |

### Table 7: Samples (linked to Products + Suppliers)
| Field | Type | Example |
|---|---|---|
| Product | Link to Products | SB-SW-001 |
| Supplier | Link to Suppliers | Factory A |
| Sample type | Single select | Proto / SMS / PP / PAS |
| Date ordered | Date | 2026-05-10 |
| Date received | Date | 2026-05-20 |
| Status | Single select | Ordered / Received / Approved / Rejected |
| Fit review | Long text | |
| Wash test result | Long text | |
| Photo | Attachment | |

---

## WHICH WORKER OWNS WHAT

| Data | Owner (Paperclip worker) | Tool |
|---|---|---|
| Product master data | Product Catalog Lead | Airtable |
| Colours & Pantones | Design Lead | Pantone Connect + Airtable |
| Measurements & grading | Tech Pack / Product Development Lead | Airtable |
| BOM | Tech Pack / Product Development Lead | Airtable |
| Supplier list | Factory Sourcing Lead | Airtable |
| Factory quotes | Factory Sourcing Lead | Airtable |
| Sample tracking | Supplier/Factory Liaison | Airtable |
| Tech pack PDFs | Template/Production Designer | Techpacker or Illustrator |
| Mood boards & inspiration | Design Lead | Miro |
| Timeline & blockers | Operations Coordinator | Paperclip / Notion |
| Costing & margin | Commercial Finance Lead | Airtable |
| Marketing calendar | Marketing Lead | Notion / Google Sheets |

---

## NEXT STEPS TO SET THIS UP

1. Choose tech pack tool: Techpacker (recommended) or Adobe Illustrator + sheets
2. Buy Pantone FHI cotton swatch set (physical) + set up Pantone Connect (digital)
3. Build the Airtable base with the 7 tables above -- this becomes the data layer
4. Populate with what you already have: products, colour palette, 12 factories
5. Start the Phase 1 tasks, entering data into the system as you go
6. Sync with your Google Drive measurement spreadsheet (export to Airtable)

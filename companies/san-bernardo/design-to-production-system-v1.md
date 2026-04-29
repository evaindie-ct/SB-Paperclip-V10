# San Bernardo Design-to-Production System v1

> Pipeline for tracking every product from concept to production-ready.
> Each product lives at exactly one stage. Stage transitions require artifacts.

Brand: San Bernardo | Entity: FITZ ROY PATAGONIA SL
Season: AW 2025 | Category: Knitwear (merino/alpaca sweaters + scarves)
Created: 2026-04-29 | Version: 1.0

---

## Pipeline Overview

```
STAGE 0        STAGE 1        STAGE 2        STAGE 3        STAGE 4
CONCEPT   -->  FLAT SKETCH --> YARN+KNIT  --> GRADED SPEC--> ARTWORK+
(Mood board,    (Vector        (Yarn line,    +BOM          COLOURWAYS
design brief)   silhouette)    gauge, knit    (Measurements, (Pantone codes,
                                structure)     materials)     BMP files,
                                                              colour-ups)

STAGE 5        STAGE 6        STAGE 7        STAGE 8
FACTORY-READY-->FACTORY     -->SAMPLING    -->IN PRODUCTION
TECH PACK      ENGAGEMENT     (Proto -> SMS    (Bulk PO placed,
(Complete       (Quotes,       -> PP, wash      production
PDF per         factory        tests, fit       underway)
model)          selected)      approval)
```

## File Organisation Standard

All product files live in `reference-files/productos/Productos/[Product Name]/`
Named according to this convention for each stage:

| Stage | Required Files |
|-------|---------------|
| 0 Concept | `00_mood-board.(jpg/png)`, `00_design-brief.md` |
| 1 Flat Sketch | `01_flat-front.ai`, `01_flat-back.ai`, `01_flat-side.ai` (if needed) |
| 2 Yarn+Knit Spec | `02_yarn-spec.md` or `02_yarn-spec.xlsx` (mill, product code, gauge, ply) |
| 3 Graded Spec+BOM | `03_graded-spec.xlsx`, `03_bom.xlsx` |
| 4 Artwork+Colourways | `04_jacquard.bmp` (if applicable), `04_colorways.png` |
| 5 Factory-Ready | `05_tech-pack-v1.0.pdf` |
| 6 Factory Engagement | `06_factory-quotes.xlsx`, `06_selection-rationale.md` |
| 7 Sampling | `07_proto-report.md`, `07_sms-report.md`, `07_pp-report.md` |
| 8 Production | `08_production-po.pdf`, `08-sealed-sample-ref.jpg` |

## Stage-Transition Requirements (Artifact Checklist)

### STAGE 0 -- CONCEPT (Entry point)
**What it means:** The product idea exists. Direction is set.
**Exit criteria to 1:**
- [ ] Mood board or reference images saved in product folder
- [ ] Design brief written: model type, silhouette direction, target customer
- [ ] Initial colour palette noted (even if rough)

### STAGE 1 -- FLAT SKETCH
**What it means:** A vector technical silhouette exists (front + back).
**Exit criteria to 2:**
- [ ] Front technical flat in vector format (.ai or .svg)
- [ ] Back view
- [ ] Stitch callouts (ribbing locations, body stitch changes)
- [ ] Measurement guide lines (HPS, chest, length, sleeve)
- [ ] Human Owner sign-off on silhouette

### STAGE 2 -- YARN + KNIT SPEC
**What it means:** Yarn line selected from mill catalog. Gauge and knit structure defined.
**Exit criteria to 3:**
- [ ] Yarn selected: mill, product code, composition, ply, weight, colour reference
- [ ] Gauge determined (GG): e.g. 5GG, 7GG, 12GG
- [ ] Knit structure documented: jersey, rib, cable, jacquard
- [ ] If jacquard/structure: reference image or stitch map included

### STAGE 3 -- GRADED SPEC + BOM
**What it means:** Every measurement documented XS-XL. All materials listed.
**Exit criteria to 4:**
- [ ] Points of measurement (POMs) defined with diagram
- [ ] Base size (M) measurements from mannequin
- [ ] Grading rules documented
- [ ] Graded spec table (all sizes, one view)
- [ ] BOM: main yarn + contrast yarns + thread + labels + trims + packaging
- [ ] Tolerance per measurement (+/- 1cm knits standard)

### STAGE 4 -- ARTWORK + COLOURWAYS
**What it means:** Colourway docs done. Jacquard BMP files ready (if applicable).
**Exit criteria to 5:**
- [ ] Pantone codes assigned per colourway per model
- [ ] Colour-up visuals (can be simple PNG mockups)
- [ ] If jacquard/colourwork: pixel-accurate BMP with reduced palette
- [ ] If cable/stitch: stitch diagram or reference

### STAGE 5 -- FACTORY-READY TECH PACK
**What it means:** Complete single-document tech pack (PDF) ready to send.
**Exit criteria to 6:**
- [ ] Tech pack compiled as single PDF containing:
  - Header: style name/number, season, date, version, brand, contact
  - Technical flats (front + back + detail views)
  - BOM table
  - Yarn spec
  - Knit spec (gauge, stitch structures)
  - Measurement table with POM diagram
  - Construction notes (seam types, linking, finishing)
  - Jacquard BMP / stitch maps (if applicable)
  - Label placement diagram
  - Packaging instructions
  - Blank sample feedback section
  - Colourway callouts per model with Pantone codes
- [ ] Versioned: v0.1 (draft), v0.2 (after factory feedback), v1.0 (final)

### STAGE 6 -- FACTORY ENGAGEMENT
**What it means:** Tech pack sent to factories. Quotes received. Factory selected.
**Exit criteria to 7:**
- [ ] Tech packs sent to shortlisted factories for tech review
- [ ] Factory technical feedback collected, tech packs revised to v0.2
- [ ] Quotes received (per model: unit price, sample cost, lead time, MOQ, terms, incoterms)
- [ ] Factory selected per model with rationale
- [ ] Sample PO placed (proto: 1 garment, 1 colourway)
- [ ] Human Owner approved factory selection + sample budget

### STAGE 7 -- SAMPLING
**What it means:** Physical samples exist. Iterative proto -> SMS -> PP cycle.
**Exit criteria to 8:**
- [ ] Proto received, fit-checked, measured, documented
- [ ] Wash test done (pre/post measurements, pilling check)
- [ ] Proto approved OR revised + re-ordered
- [ ] SMS (size set) received, graded consistency verified
- [ ] PP (pre-production) sample received, all elements locked
- [ ] Sealed sample signed off
- [ ] All sample reports documented with photos

### STAGE 8 -- IN PRODUCTION
**What it means:** Bulk PO placed. Production underway.
- [ ] Final production pricing confirmed
- [ ] Production PO issued (with payment milestones)
- [ ] Deposit paid
- [ ] Expected delivery date confirmed
- [ ] Production tracking ongoing

---

## Product Localisation (Current Status)

Each product below is listed with its current stage and the specific gaps blocking it from advancing.

| Product | Current Stage | Gaps to Advance |
|---------|--------------|-----------------|
| **Fitz Roy (Merino 5GG)** | 4 - Artwork+Colourways | Needs complete tech pack compiled (Stage 5). Has graded spec (15 POMs), 4 colourways with Pantone codes, vector flats. Missing: BOM, label diagram, packaging instruction. |
| **Horizons (Jacquard 7GG)** | 4 - Artwork+Colourways | Needs complete tech pack (Stage 5). Has 5-colour jacquard spec, 1 colourway defined, graded spec. Missing: remaining colourways, pixel-accurate BMP files. |
| **Austral (Sweater + Scarf)** | 3 - Graded Spec+BOM | AI/PDF files exist. Needs: graded spec table, colourways defined, BOM, compiled tech pack. |
| **Borreguito** | 2 - Yarn+Knit Spec | AI file exists (largest at 190MB). Needs: knit spec documented, yarn selected, graded spec. |
| **Cherry Coded** | 2 - Yarn+Knit Spec | Revised tech pack AI exists (156MB). Needs: knit spec, yarn selection, graded spec. |
| **Polo Sur (Cardigan)** | 2 - Yarn+Knit Spec | AI/PDF files exist. Needs: knit spec, yarn, graded spec, colourways. |
| **Poncho Andino** | 2 - Yarn+Knit Spec | AI/PDF/sketch files exist. Needs: knit spec, yarn selection, colourways defined. Has artwork BMP. |
| **Gorro Andino** | 2 - Yarn+Knit Spec | Multiple xlsx versions exist. Needs clarification: same design as Poncho or separate? |
| **Cardigan Trevelin** | 2 - Yarn+Knit Spec | Has Gee xls files. Needs: knit spec, yarn, graded spec. |
| **Manta** | 1 - Flat Sketch | PDFs of tech pack exist, AI design options. Needs: graded spec, BOM, colourways. |
| **Musgo Antartico** | 1 - Flat Sketch | Image references only (jpegs, pngs). Needs: flat sketch, knit spec, yarn selection, all downstream artifacts. |
| **Conversaciones con Rebecca** | n/a | This is a communication document, not a product. Has 2 Google Drive links (Horizons revised versions + Austral). Links should be captured for reference. |

---

## Principles

1. **One product, one folder.** All artifacts for a product live in its product folder.
2. **Stage is single-valued.** A product is at exactly one stage. You cannot skip stages.
3. **Gaps block advancement.** Document what is missing for each product to move forward.
4. **Tech packs are iterative.** v0.1 is a draft. The factory will help refine during sampling.
5. **Yarn selection is a desk decision.** You have mill catalogs with stock yarns. Select from catalog, order cones.
6. **Jacquard requires BMP, not vector.** Pixel-accurate bitmap files with reduced palette for the knitting machine.
7. **Sampling is the longest phase.** Proto -> fit review -> SMS -> PP. Each round 5-14 working days.

## Tool Recommendations (from tool-stack-and-data-system.md)

| Function | Recommended Tool | Cost | Alternative |
|----------|-----------------|------|-------------|
| Tech pack creation/management | Techpacker | $35/mo | Google Sheets + manual PDF |
| Silhouette flats | Adobe Illustrator | ~25 EUR/mo | Repsketch, Inkscape |
| Colour management | Pantone Connect (digital) + FHI book (physical) | Free+ / 400-600 EUR | Albers API |
| Product status tracking | Google Sheets (product-status.xlsx) | Free | Miro kanban board |
| Factory communication | Email / WeChat | Free | - |

## Related Documents

- `launch-critical-path.md` -- Execution plan (needs rewrite to align with this pipeline)
- `tool-stack-and-data-system.md` -- Detailed tool research and recommendations
- `reference-files/` -- All source documents and product assets

---

*Last updated: 2026-04-29 | Next review: After all products are localised to correct stage*

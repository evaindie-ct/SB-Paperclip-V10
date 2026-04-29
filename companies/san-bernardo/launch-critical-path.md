# San Bernardo Launch Critical Path v1
Brand: San Bernardo  |  Entity: FITZ ROY PATAGONIA SL  |  Fulfillment: Madrid, Spain
Market: Europe + UK (priority: Nordic, Germany)
Product: AW sweaters + scarves (merino/alpaca, XS-XL, EUR 280-520 incl. VAT)
MOQ: 150/model  |  Production start: 20 May  |  Presale: 20 Jul  |  Stock-ready Madrid: 20 Aug

---

## PHASE 0 -- FOUNDATION (already done)
- [x] Brand identity, legal entity, bank account established
- [x] Design direction: mood boards, sketches, colour palette, silhouette direction
- [x] Factory shortlist: 12 factories researched and qualified
- [x] Shopify: ~60% setup complete
- [x] B2B retailer prospect list: initial pass done but incomplete
- [x] Paperclip worker hierarchy: 37 agents defined and configured (v10)
- [x] EU VAT/tax/customs research: initial findings documented
- [x] ERP/WMS/SCM research: initial findings documented

---

## PHASE 1 -- TECH PACKS, YARN SOURCING & SAMPLE REQUEST (NOW)

NOTE on knitwear sampling reality:
- Tech packs are NEVER final on first write. They set the "goal post" -- the factory helps refine tension, gauge, and fit collaboratively during sampling.
- Yarn selection IS a desk decision BECAUSE you have mill catalogs at home with stock yarns. You select from catalog, order cones from the mill, send to factory. No lab dips needed -- stock colours.
- Jacquard/colourwork requires pixel-accurate BMP files (not vector art) with reduced colour palette suitable for the machine's yarn carriers.
- Sampling is iterative: Proto (first knit) -> fit review -> revisions -> SMS (size set) -> wash tests -> PP (pre-production approval). Each round takes 5-14 working days.

### 1.1 Create technical flat sketches (silhouettes)
Leads: Template/Production Designer, Design Lead
Dependencies: mood boards (Miro), design drafts, colour palette, Pantone Connect subscription

You have: mood boards in Miro, design drafts, Pantone cards at home, Pantone Connect subscription, yarn mill catalogs at home, new mannequin dress form.
You need: clean vector technical flats for each model (front + back + side if needed).

Simplest tool: Inkscape is free, runs on this machine, can trace raster images to vectors. OR if your design drafts are clear enough, you can draw flats directly using a simple vector tool.

Tasks:
- [ ] For each model: draw the silhouette in vector format -- front view with clean lines showing garment shape, neckline, shoulder, sleeve, hem
- [ ] Draw back view for each silhouette (neckline finish, shoulder seam, hem, any back details)
- [ ] Draw side view if silhouette has unique depth features (oversized drape, dropped shoulder, side slits)
- [ ] Add stitch callouts: where ribbing is (cuffs, hem, neckline), where body stitch changes
- [ ] Add measurement callout lines (HPS, chest width, body length, sleeve length guides)
- [ ] For any jacquard/colourwork/intarsia models: create pixel-accurate BMP files with reduced colour palette (max colours = number of yarn carriers the machine can handle per row)
- [ ] For cable/stitch structure designs: provide reference photo from your inspo or draw stitch map
- [ ] Annotate seam construction expectations: linked seams, overlock, or coverstitch
- [ ] Use Pantone Connect to assign Pantone codes to each colourway per model
- [ ] Use your mannequin for proportion reference if needed
- [ ] Human Owner reviews and signs off on final silhouette for each model

### 1.2 Yarn selection (CRITICAL PATH)
Leads: Design Lead, Knitwear Technical Specialist, Factory Sourcing Lead
Dependencies: 1.1 stitch and gauge direction, mill catalogs (you have them at home)

You already have: mill yarn catalogs at home (physical swatches/cards), shortlist of mills.
You do NOT need: spinner research, lab dips, requesting yarn cards.
You DO need: select specific yarn lines from the catalogs you have, based on gauge, hand feel, and composition.

Simplest tool: your catalogs + a spreadsheet to track selections.

Tasks:
- [ ] From your mill catalogs, identify yarn lines per model that match: target gauge (3GG/7GG/12GG/14GG), fibre type (merino, alpaca, blend), ply, hand feel direction
- [ ] Check if your shortlisted factories stock these yarn lines OR can source them from the mill
- [ ] If factory doesn't stock it: confirm the mill can supply and what the lead time is for cone delivery
- [ ] For each candidate yarn: feel the swatch from your catalog against the desired hand feel
- [ ] Wash test a small piece of the catalog swatch (you have the physical cards) -- measure pre/post wash shrinkage, check for pilling
- [ ] Check colour match against your Pantone references
- [ ] If yarn fails: move to next option from the catalog
- [ ] Once selected: record spinner name, yarn product code, composition, ply, weight, target gauge, colour reference, price per kg, lead time, MOQ
- [ ] Human Owner approves yarn selection per model

### 1.3 Measure spec & grading (runs parallel with 1.2)
Leads: Tech Pack / Product Development Lead, Knitwear Technical Specialist
Dependencies: 1.1 finalised silhouette designs (for base measurements)

You have: measurement spreadsheet in Google Drive (template for sweater measurements).
You have: mannequin dress form you can measure on.

Simplest tool: Google Sheets (already have it) -- your existing spreadsheet template.

Tasks:
- [ ] Define points of measurement (POMs) with simple diagram showing where each measurement is taken
- [ ] Use your mannequin to establish base size (M) measurements per model: full chest, body length, shoulder width, sleeve length, sleeve opening, neck opening, armhole depth
- [ ] Set tolerance per measurement (+/- 1cm for knits standard)
- [ ] Define grading rules: how each measurement changes per size (XS, S, M, L, XL)
- [ ] Create graded spec table in your existing spreadsheet -- all sizes one view
- [ ] Note: factories handle the actual grading math -- you provide base size + rules

### 1.4 Bill of materials & trims (runs parallel)
Leads: Tech Pack / Product Development Lead, Packaging Designer (for trims)
Dependencies: 1.2 yarn selected, brand label direction (done)

Simplest tool: add a BOM tab to your existing Google Sheets spreadsheet.

Tasks:
- [ ] Specify main yarn per model per colourway with exact product code from catalog
- [ ] Specify contrast yarns if applicable (stripes, jacquard, trims)
- [ ] Specify sewing thread: type and colour
- [ ] Specify buttons, zippers, or other fasteners if needed
- [ ] Specify care labels: content (standard EU knitwear wording), size, placement, fibre composition
- [ ] Specify brand labels: woven or printed, size, placement
- [ ] Specify hang tags: design direction, size, attachment method
- [ ] Specify packaging: polybag size, barcode label placement
- [ ] Create BOM table: item, supplier, colour, quantity per garment, cost

### 1.5 Compile tech packs
Leads: Tech Pack / Product Development Lead, Template/Production Designer
Dependencies: 1.1 technical flats, 1.2 yarn specs, 1.3 measurement specs, 1.4 BOM

Simplest tool: Google Docs or Google Slides -- compile each model as a single document with all sections.
Export to PDF. No Techpacker needed.

Tasks:
- [ ] Compile each model's tech pack as a single document containing:
  - [ ] Header: style name/number, season, date, version, brand name, contact
  - [ ] Technical flat sketches (front, back, side/detail views) with callouts
  - [ ] BOM table with all materials
  - [ ] Yarn spec: mill, product code, composition, ply, weight, colour reference
  - [ ] Knit spec: gauge (GG), stitch structures per panel
  - [ ] Measurement table with POM diagram and tolerances
  - [ ] Construction notes: seam types, linking, finishing instructions
  - [ ] Jacquard BMP files or stitch maps if applicable
  - [ ] Label placement diagram
  - [ ] Packaging instructions
  - [ ] Blank section for sample comments (factory feedback tracking)
  - [ ] Colourway callouts per model with Pantone codes
- [ ] Export to PDF
- [ ] Version control: v0.1 = draft, changes expected after factory feedback

### 1.6 Tech pack review with factory (BEFORE quoting)
Lead: Factory Sourcing Lead
Dependencies: 1.5 tech packs compiled

Simplest tool: email or WeChat (already using it with your factories).

Tasks:
- [ ] Send draft tech pack PDFs to each shortlisted factory for technical feasibility review
- [ ] Factories will flag: unknittable stitch patterns, unrealistic gauge, measurement conflicts
- [ ] Collect feedback, revise tech packs to v0.2
- [ ] Some factories may ask to substitute the yarn with one they already stock -- evaluate the suggestion

### 1.7 Send tech packs for quoting
Lead: Factory Sourcing Lead
Dependencies: 1.6 tech packs reviewed

Simplest tool: email/WeChat (same communication channel).

Tasks:
- [ ] Send revised tech packs to all shortlisted factories
- [ ] Request per model: unit price (by quantity tier), sample cost (proto + SMS), sample lead time, production lead time, MOQ per colourway, payment terms, incoterms
- [ ] Set 5-7 working day deadline
- [ ] Follow up with non-responders

### 1.8 Evaluate factory quotes & select for sampling
Leads: Factory Sourcing Lead, Commercial Finance Lead
Dependencies: 1.7 quotes received

Simplest tool: add a quotes tab to your Google Sheets spreadsheet -- compare side by side.

Tasks:
- [ ] Compare unit costs across factories per model
- [ ] Evaluate sample costs and lead times
- [ ] Evaluate payment terms and incoterms (FOB vs CIF vs EXW)
- [ ] Evaluate factory communication quality during review (responsiveness, thoroughness)
- [ ] Factor in shipping, duties, estimated landed cost per factory per unit
- [ ] Select 1-2 factories per model
- [ ] Document selection rationale
- [ ] Human Owner approves factory selection and sample budget

### 1.9 Place sample orders -- PROTO
Lead: Procurement Lead, Factory Sourcing Lead
Dependencies: 1.8 factory selection approved, 1.2 yarn availability confirmed

Tasks:
- [ ] If factory doesn't stock the selected yarn: order cones from the mill and ship to factory
- [ ] Issue proto PO per model: 1 garment in 1 colourway, 5-10 working days
- [ ] Confirm delivery: what you'll receive (garment + finishing recipe + measurement sheet)
- [ ] Confirm delivery address (Madrid)
- [ ] Arrange payment per factory terms

### 1.10 Receive & review prototype samples
Leads: Design Lead, Knitwear Technical Specialist, Quality & Certification Lead
Dependencies: 1.9 proto sample delivered

Simplest tool: your mannequin for fit check, your Pantone cards for colour check, your phone for photos.

Tasks:
- [ ] Receive proto sample(s) in Madrid
- [ ] Fit check on mannequin -- measure against spec table, document variances
- [ ] Evaluate knit quality: tension evenness, stitch definition, hand feel
- [ ] Evaluate colour accuracy against your Pantone card
- [ ] Evaluate construction: seams, linking, ribbing, finishing
- [ ] If jacquard: pattern alignment, colour registration
- [ ] Wash test: pre and post wash measurements, check distortion, pilling
- [ ] Document with photos and measurements
- [ ] Compile feedback: approve, approve with revisions, or reject
- [ ] If rejected: revise tech pack, request new proto

### 1.11 Second proto round (if needed)
Lead: Factory Sourcing Lead
Dependencies: 1.10 proto rejected

Tasks:
- [ ] Revise tech pack with updated specs
- [ ] If yarn changed: order new cones
- [ ] Issue revised proto PO
- [ ] Repeat 1.10 review

### 1.12 Size set samples (SMS) (after proto approval)
Lead: Factory Sourcing Lead
Dependencies: 1.10 proto approved

Tasks:
- [ ] Authorise factory to proceed to SMS
- [ ] SMS = one sample per size (XS-XL), 5-6 pieces per model
- [ ] Yarn = production yarn
- [ ] Confirm SMS delivery (10-14 working days)
- [ ] On receipt: fit check every size, measure against graded spec
- [ ] Check grading consistency across sizes
- [ ] Wash test one garment for final shrinkage confirmation
- [ ] Approve or revise

### 1.13 Wash & lab testing (PARALLEL WITH SMS)
Lead: Quality & Certification Lead
Dependencies: 1.10 proto approved

Simplest tool: you can do basic wash testing at home (wash, measure, check pilling).
Only send to formal lab if required by retailers or certification standards.

Tasks:
- [ ] Perform home wash test on proto or SMS garment: measure pre/post, check pilling, distortion
- [ ] If retailers require certified lab reports: send to lab for pilling, shrinkage, colour fastness
- [ ] Document results
- [ ] Flag failures, negotiate fixes with factory

### 1.14 Pre-production sample approval (PP)
Leads: Factory Sourcing Lead, Quality & Certification Lead
Dependencies: 1.12 SMS approved

Tasks:
- [ ] Authorise PP: 1 final garment, bulk settings, final yarn, trims, labels, packaging
- [ ] PP = sealed sample -- everything locked
- [ ] Factory records all machine settings on PP sheet
- [ ] On receipt: verify everything against tech pack -- fit, measurements, trims, labels
- [ ] If passes: sign off for bulk production
- [ ] Human Owner gives final go/no-go

### 1.15 Prepare for production order
Leads: Procurement Lead, Commercial Finance Lead
Dependencies: 1.14 PP sample approved

Tasks:
- [ ] Confirm final production pricing
- [ ] Confirm production lead time (45-60 days)
- [ ] Confirm MOQ per colourway
- [ ] Confirm incoterms
- [ ] Set payment milestones
- [ ] Arrange deposit
- [ ] Prepare production PO

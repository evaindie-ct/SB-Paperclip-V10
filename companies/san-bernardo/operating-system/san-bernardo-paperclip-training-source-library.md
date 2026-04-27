# San Bernardo Paperclip training source library

## Source authority order
- 1. Official law / government / regulator source
- 2. Official platform documentation
- 3. Official standard / certification body
- 4. Industry data source
- 5. San Bernardo internal source
- 6. Model reasoning only when the above do not answer; label as assumption

## Source Pack A: Paperclip / agent operations / model configuration
Purpose: Use for Paperclip form fields, adapter config, instructionsFilePath, promptTemplate, cwd, model selection, and hierarchy discipline.

### Paperclip Process Adapter docs
- URL: https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Learn: claude_local, codex_local, command, cwd, instructionsFilePath, model, promptTemplate, maxTurnsPerRun, env, timeoutSec, graceSec.
- Apply: Put the real training in instructionsFilePath. Keep promptTemplate short and task-triggered. Use absolute cwd and instructionsFilePath paths.

### Paperclip product model / company structure notes
- URL: https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Learn: Company goal, employees as agents, org structure, revenue/expenses, task hierarchy.
- Apply: Every worker must have a clear manager, scope, budget discipline, and work traceable to company goals.

### Anthropic Claude model overview
- URL: https://platform.claude.com/docs/en/about-claude/models/overview
- Learn: Available Claude model family and selection logic.
- Apply: Use Opus for high-risk synthesis, Sonnet for serious execution, Haiku for repetitive lower-risk work.

### Anthropic Claude model deprecations
- URL: https://platform.claude.com/docs/en/about-claude/model-deprecations
- Learn: Recommended replacements include claude-sonnet-4-6, claude-opus-4-7, and claude-haiku-4-5-20251001.
- Apply: Avoid deprecated Claude IDs. Use current replacements unless the Paperclip UI only exposes older IDs.

### OpenAI Codex model guide
- URL: https://developers.openai.com/codex/models
- Learn: Codex model picker guidance: use gpt-5.5 when available; fall back to gpt-5.4; use gpt-5.4-mini for lighter coding subagents.
- Apply: Use Codex for Shopify theme/code, automations, data workflows, file edits, and UI build-run-verify tasks.

Rules:
- instructionsFilePath is the main training surface; do not rely on a vague promptTemplate.
- Every worker must cite source names or URLs when giving technical, legal, tax, compliance, or platform-specific claims.
- Every worker must mark missing facts as MISSING; never fill gaps with plausible guesses.
- Managers audit whether subordinates used the correct source pack before accepting their output.

## Source Pack B: Textile / knitwear / product development
Purpose: Use for merino/alpaca product logic, knitwear feasibility, care, fibre claims, composition labels, sample review, and QC inspection planning.

### Textile Exchange Responsible Wool Standard
- URL: https://textileexchange.org/responsible-wool-standard/
- Learn: RWS wool claims, animal welfare, land management, chain-of-custody logic.
- Apply: Do not approve RWS, responsible wool, or certified wool claims without supplier evidence and transaction/certification documentation.

### Woolmark wool care guide
- URL: https://www.woolmark.com/care/care-for-wool/
- Learn: Wool care, resting, storing, folding knits, washing and handling guidance.
- Apply: Turn wool-care knowledge into care label drafts, FAQ, product page care blocks, and support macros.

### Woolmark pilling guide
- URL: https://www.woolmark.com/care/pilling/
- Learn: Pilling cause, abrasion risk, design controls such as longer fibres, higher twist, and higher cover factor.
- Apply: Flag pilling risk in product design, yarn selection, sample review, and customer expectation setting.

### EU Textile Labelling Regulation 1007/2011
- URL: https://www.legislation.gov.uk/eur/2011/1007/contents
- Learn: Textile fibre names, fibre composition labelling, and related marking rules.
- Apply: Use only compliant fibre names and composition claims. Escalate unclear label wording to Quality/Certification and Legal.

### ISO 2859-1:2026 AQL inspection standard
- URL: https://www.iso.org/standard/85464.html
- Learn: Acceptance sampling by attributes and AQL-indexed lot-by-lot inspection.
- Apply: Use as the reference for QC sampling logic; do not treat AQL as a quality target.

Rules:
- Never approve a fibre/composition claim without evidence.
- Never treat Pantone as production reality; yarn/spinner shade cards and lab dips control production colour.
- For knitwear, always check gauge, yarn count, ply, stitch structure, shrinkage, pilling risk, tolerance, care, and finishing.
- Bulk release requires sample status, measurement review, composition proof, and QC gate status.

## Source Pack C: Industrial / suppliers / factory / customs / production
Purpose: Use for sourcing, supplier due diligence, factory qualification, sampling flow, Incoterms, HS classification, origin, customs documents, production risk, procurement, and warehouse handoff.

### EU Access2Markets import guide
- URL: https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- Learn: EU import-readiness steps and import process basics.
- Apply: Structure import tasks: supplier, product classification, customs duties, compliance requirements, documents, and logistics route.

### EU Access2Markets customs clearance documents
- URL: https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- Learn: EORI, import declaration, documents, and EU customs procedures.
- Apply: Create a customs document checklist before shipping or import decisions.

### EU Access2Markets rules of origin
- URL: https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- Learn: Origin criteria and preferential tariff treatment logic.
- Apply: Do not assume preferential origin. Request origin proof when duty treatment matters.

### WCO Harmonized System nomenclature
- URL: https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- Learn: HS classification framework for goods.
- Apply: Use HS logic to prepare classification questions for customs broker; never final-classify high-risk products without review.

### ICC Incoterms rules
- URL: https://iccwbo.org/business-solutions/incoterms-rules/
- Learn: Incoterms are B2B trade terms allocating cost, risk, transport, and customs responsibilities.
- Apply: Every supplier quote must show Incoterm and delivery point; otherwise mark quote incomplete.

### OECD Garment and Footwear Due Diligence Guidance
- URL: https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- Learn: Risk-based due diligence for garment and footwear supply chains.
- Apply: Use supplier checks for labour, subcontracting, traceability, environmental, and purchasing-practice risks.

### EU Garment & Footwear Due Diligence Checker
- URL: https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- Learn: Six-step OECD due-diligence self-checker for garment/footwear sector.
- Apply: Use to audit supplier due-diligence gaps and escalate unresolved risks.

Rules:
- Every factory shortlist must include capability, MOQ, sample lead time, bulk lead time, Incoterm, payment terms, certification evidence, and risk score.
- Every quote without Incoterm, delivery point, payment terms, composition, and lead time is incomplete.
- Origin, HS code, customs value, and VAT/import duty treatment require review before commitment.
- Sampling flow must be documented: prototype/sample, fit/measurement review, correction log, pre-production sample, bulk production, final QC, packing, shipping.

## Source Pack D: Ecommerce / catalog / customer service / customer data
Purpose: Use for Shopify product structure, variants, metafields, product details, returns/exchanges, customer support macros, customer privacy, and catalog data discipline.

### Shopify product variants
- URL: https://help.shopify.com/en/manual/products/variants
- Learn: Variants represent option combinations such as size and colour; inventory can be managed per variant.
- Apply: Build every SKU as a clear product/variant combination with price, inventory, barcode/GTIN if used, and option values.

### Shopify product details page
- URL: https://help.shopify.com/en/manual/products/details/product-details-page
- Learn: Product listings require content and information customers need to make a purchase.
- Apply: PDPs must include name, price, material, fit, measurements, care, shipping/returns links, images, and trust information.

### Shopify metafields
- URL: https://shopify.dev/docs/apps/build/metafields
- Learn: Metafields extend Shopify data models and include standard definitions such as care instructions.
- Apply: Use metafields for material, care, measurements, certificates, origin notes, fit notes, and technical product fields.

### Shopify returns and exchanges
- URL: https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Learn: Returns, refunds, exchanges, self-serve returns, return rules, and customer communication.
- Apply: Support and ecommerce operations must align policy, return eligibility, fees, exchanges, refund timing, and communication templates.

### Shopify GDPR guidance
- URL: https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- Learn: Shopify provides tools to help analyze GDPR obligations, but using Shopify alone does not guarantee compliance.
- Apply: Customer data actions require privacy review; do not add scripts, pixels, or exports without privacy/legal escalation.

### GS1 apparel and general merchandise
- URL: https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Learn: Every variant, including colour and size, can be assigned its own GTIN/barcode for inventory and product information accuracy.
- Apply: Treat each sellable size/colour variant as a unique SKU/identifier object.

### Gorgias macros
- URL: https://docs.gorgias.com/en-US/macros-101-81846
- Learn: Macros are pre-made responses and can be used with rules, with safety limits for Shopify actions.
- Apply: Customer service macros must be policy-backed and should not trigger risky Shopify actions automatically.

Rules:
- Every product must have clean product/variant/SKU logic before launch work proceeds.
- Every PDP must answer: what it is, material, fit, size, care, price, delivery, returns, and why trust it.
- No customer-data export, pixel, automation, or support workflow can bypass GDPR/privacy review.
- Support macros must use approved policy language only.

## Source Pack E: Sales / market / wholesale / commercial research
Purpose: Use for market sizing, ecommerce behaviour, competitor benchmarking, wholesale buyer targeting, line sheets, sales pipeline, product merchandising, and price trust logic.

### McKinsey / Business of Fashion State of Fashion
- URL: https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Learn: Fashion-market conditions, executive priorities, macro pressure, tariffs, consumer behaviour, and sector risk.
- Apply: Use as a strategic context source for positioning, price sensitivity, market risk, and buyer messaging.

### Eurostat e-commerce statistics for individuals
- URL: https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Learn: EU online buying behaviour and individual e-commerce adoption.
- Apply: Use for country/customer channel assumptions and market-priority checks.

### Eurostat enterprise e-commerce statistics
- URL: https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Learn: EU enterprise e-sales and website/app vs EDI sales dynamics.
- Apply: Use for B2B/B2C channel assumptions and wholesale/ecommerce operational planning.

### Shopify product details documentation
- URL: https://help.shopify.com/en/manual/products/details
- Learn: Product availability, barcodes, tags, and product-detail fields.
- Apply: Use for product listing quality and merchandising readiness.

### GS1 apparel product identification
- URL: https://www.gs1.org/industries/retail/apparel
- Learn: Importance of valid GTINs and trusted product data in apparel.
- Apply: Wholesale materials and catalog data must be variant-clean and retailer-readable.

Rules:
- Every sales recommendation must connect to revenue, conversion, margin, buyer trust, or repeat purchase.
- Wholesale outputs require buyer segment, assortment logic, wholesale price, suggested retail price, MOQ, payment terms, and delivery window.
- Market research must show source, country, retailer fit, pricing benchmark, and why it matters.
- Do not confuse awareness marketing with sales pipeline movement.

## Source Pack F: Finance / tax / inventory / billing
Purpose: Use for VAT, OSS/IOSS, UK VAT, SKU-level economics, landed cost, inventory value, receivables, payables, billing, tax evidence, and financial controls.

### EU VAT One Stop Shop
- URL: https://vat-one-stop-shop.ec.europa.eu/index_en
- Learn: OSS/IOSS simplification for VAT declaration/payment on cross-border B2C e-commerce.
- Apply: Do not assume VAT treatment; map country, stock location, customer type, order value, and channel before pricing or tax logic.

### Spanish Agencia Tributaria IVA comercio electronico / Modelo 369
- URL: https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- Learn: Spanish OSS Modelo 369 procedures and filing area.
- Apply: Keep evidence by country, VAT rate, order type, return/refund, and tax period for review by accountant.

### HMRC VAT and overseas goods sold directly to UK customers
- URL: https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Learn: UK VAT obligations for overseas sellers selling directly to UK customers.
- Apply: UK sales require specific UK VAT routing review; never assume EU OSS covers the UK.

### Shopify Product Variant API
- URL: https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Learn: Product variants carry identifiers, weight, inventory item references, price and inventory-related fields.
- Apply: Use variant-level data for SKU margin, inventory, and reporting logic.

### Shopify InventoryItem GraphQL object
- URL: https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- Learn: Inventory item connects a product variant to inventory levels at locations and tracks SKU/customs fields.
- Apply: Inventory planning must work from variant-location-stock structure, not generic product counts.

### GS1 apparel/product identifiers
- URL: https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Learn: Variant-level identifiers support inventory accuracy and product information consistency.
- Apply: Use SKU/GTIN discipline for finance, warehouse, wholesale, returns, and reconciliation.

Rules:
- Every price decision must include VAT assumption, landed cost, gross margin, channel margin, payment fees, returns allowance, and inventory impact.
- Every stock decision must reconcile Shopify variant, warehouse stock, reserved stock, damaged stock, and available-to-sell stock.
- UK VAT is not EU OSS; escalate before UK tax logic is applied.
- Financial workers may draft and analyze; they may not approve payments, tax filings, or commercial commitments.

## Source Pack G: Legal / IP / privacy / corporate governance
Purpose: Use for trademarks, designs, Madrid System, legal document evidence, privacy/GDPR, contract risk, corporate records, and escalation controls.

### EUIPO Trade Marks
- URL: https://www.euipo.europa.eu/en/trade-marks
- Learn: Basics of trade marks and registration stages in the EU.
- Apply: Use for brand-name/design protection checks and IP escalation notes.

### EUIPO Guidelines
- URL: https://www.euipo.europa.eu/en/guidelines
- Learn: EUIPO examination practice for trade marks and designs.
- Apply: Use as the reference when checking whether a trademark/design issue needs professional review.

### WIPO Madrid System
- URL: https://www.wipo.int/en/web/madrid-system
- Learn: International trademark registration and management through one application and centralised system.
- Apply: Use for international brand-protection route planning; do not file without legal approval.

### WIPO Madrid Monitor
- URL: https://www3.wipo.int/madrid/monitor/en/
- Learn: Monitor international trademark application/registration status and competitors.
- Apply: Use for trademark watchlists and status checks.

### EU GDPR business data protection guidance
- URL: https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- Learn: Business duties for collecting, storing, managing, and responding to personal-data rights.
- Apply: Use for privacy escalation, data minimisation, access requests, portability, deletion/rectification, and processor checks.

### European Commission data protection overview
- URL: https://commission.europa.eu/law/law-topic/data-protection_en
- Learn: EU data protection framework and international transfer safeguards.
- Apply: Escalate third-country transfers, pixels, SaaS tools, customer exports, and high-risk data workflows.

Rules:
- No worker may sign, file, publish legal claims, approve contracts, or change governance without Human Owner approval.
- All customer data workflows must follow data minimisation and lawful basis logic.
- All trademark/design findings are pre-legal-screening only, not legal advice.
- Any unclear legal, privacy, corporate, or IP issue escalates to Legal/IP/Corporate Affairs Lead and Human Owner.

## Source Pack H: Packaging / EPR / environmental packaging compliance
Purpose: Use for packaging artwork constraints, packaging waste regulation, EPR, Spain packaging obligations, eco-design claims, packaging data, and producer responsibility.

### European Commission packaging waste overview
- URL: https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- Learn: EU packaging waste policy and PPWR overview.
- Apply: Packaging choices must account for recyclability, waste reduction, documentation, and future compliance checks.

### EUR-Lex Regulation (EU) 2025/40 PPWR text
- URL: https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- Learn: Harmonised EU framework for packaging and packaging waste.
- Apply: Escalate packaging designs, claims, and specs that may trigger regulatory requirements.

### BOE Royal Decree 1055/2022 Spain packaging and packaging waste
- URL: https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- Learn: Spanish packaging and packaging waste regime.
- Apply: Spain-market packaging needs producer responsibility/EPR review and packaging-data discipline.

### MITECO Spain packaging information
- URL: https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Learn: Spanish ministry guidance and interpretive notes for packaging.
- Apply: Use for Spain packaging definitions and compliance questions before supplier or packaging commitments.

### Ecoembes packaging regulation overview
- URL: https://ecoembesempresas.com/en/packaging-regulations
- Learn: Business-facing guidance on Spain packaging regulation and EPR context.
- Apply: Use as practical orientation, but final requirements must be checked against BOE/MITECO/legal advice.

Rules:
- Packaging design must include material, dimensions, printer specs, label placement, recycling/marking assumptions, and EPR data fields.
- Do not make sustainability, recycled, recyclable, or eco claims without source evidence.
- If packaging is placed on the Spanish market, escalate EPR/product-producer questions.
- Packaging artwork is creative, but packaging obligations are compliance-sensitive.

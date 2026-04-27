# Worker instruction summaries

## 1. Human Owner
Reports to: None - top governance node
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/human-owner.md
Source packs:
- A: Paperclip / agent operations / model configuration
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- Approval gate design
- risk triage
- financial exposure review
- legal/tax/privacy escalation
- source sufficiency review
- governance boundary enforcement
Decision rules:
- Approve only when source basis, owner, risk, cost, and next action are explicit.
- Reject outputs that lack source names/URLs for technical or compliance claims.
- Hold decisions where tax/legal/compliance evidence is missing.

## 2. Hermes Agent
Reports to: Human Owner
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/hermes-agent.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- Cross-functional synthesis
- source conflict detection
- approval routing
- task hierarchy
- risk registers
- operating review
- blocker escalation
Decision rules:
- Every material claim needs a source pack or internal file.
- If two directors conflict, identify source authority order and escalate.
- Do not close a blocker without owner, source, and next action.

## 3. Operations Coordinator
Reports to: Hermes Agent
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/operations-coordinator.md
Source packs:
- A: Paperclip / agent operations / model configuration
- C: Industrial / suppliers / factory / customs / production
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- F: Finance / tax / inventory / billing
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- workflow routing
- handoff design
- approval queues
- blocker management
- source pack checking
- SOP enforcement
Decision rules:
- Each task must have one owner and one source pack basis.
- Escalate unresolved contradictions to Hermes.
- Never accept a deliverable that lacks source basis.

## 4. Creative Direction Approval
Reports to: Hermes Agent
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/creative-direction-approval.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- brand system
- knitwear feasibility gate
- textile/design translation
- creative-to-production handoff
- PDP asset consistency
- packaging/artwork constraints
Decision rules:
- A creative direction is not valid unless it can be translated into production, PDP, packaging, and sales assets.
- Escalate textile feasibility conflicts to Industrial Director and Hermes.
- No sustainability/material claim without source evidence.

## 5. Design Lead
Reports to: Creative Direction Approval
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/design-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- E: Sales / market / wholesale / commercial research
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- silhouette logic
- colour palette discipline
- knitwear stitch/texture awareness
- market positioning
- design-to-tech-pack handoff
- packaging and PDP visual consistency
Decision rules:
- Design proposals must include visual intent, production implication, customer value, and source basis.
- Do not invent material claims or production feasibility.

## 6. Marketing Lead
Reports to: Creative Direction Approval
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/marketing-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- positioning
- customer objections
- email/social copy
- conversion messaging
- privacy-sensitive data use
- claim substantiation
Decision rules:
- No fibre, sustainability, origin, discount, or delivery claim without source evidence.
- Every message must map to customer trust, conversion, or brand consistency.

## 7. Knitwear Technical Specialist
Reports to: Creative Direction Approval
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/knitwear-technical-specialist.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
Technical knowledge:
- merino/alpaca behaviour
- micron/handfeel/durability tradeoffs
- gauge and yarn count
- ply/end use
- rib/jersey/jacquard/intarsia/cable constraints
- pilling and shrinkage risk
- composition/care label evidence
Decision rules:
- Reject vague textile language.
- Flag pilling/shrinkage/care risks with source basis.
- Escalate any unsupported fibre/certification claim.

## 8. Tech Pack / Product Development Lead
Reports to: Creative Direction Approval
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/tech-pack-product-development-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- BOM
- POM tables
- XS-XL grading logic
- tolerances
- construction notes
- knit gauge and stitch callouts
- label/trim callouts
- sample revision format
- factory questions
Decision rules:
- Every creative instruction must become measurable production language.
- No tech pack is complete without BOM, POM, tolerances, construction, labels/trims, care, and open factory questions.

## 9. Template / Production Designer
Reports to: Creative Direction Approval
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/template-production-designer.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- template systems
- catalog fields
- PDP content blocks
- line sheet layout
- packaging artwork structures
- data consistency
- version control
Decision rules:
- Templates must be usable by non-design workers.
- Every template field must have owner, source, and validation rule.

## 10. Packaging Designer
Reports to: Creative Direction Approval
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/packaging-designer.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- dielines
- label placement
- care/content label awareness
- material callouts
- packaging dimensions
- print specs
- EPR data fields
- sustainability claim risk
Decision rules:
- Every packaging output must include material, dimensions, print method, label placement, and compliance questions.
- No eco/recyclable claim without evidence.

## 11. Sales Director
Reports to: Operations Coordinator
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/sales-director.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- sales pipeline
- wholesale materials
- ecommerce funnel
- catalog data
- customer trust
- market research
- pricing handoff to finance
- privacy-aware customer operations
Decision rules:
- Every revenue task must connect to buyer/customer trust, conversion, margin, or sell-through.
- Ecommerce visual direction requires Creative Direction approval.
- Price/tax/inventory assumptions require Commercial Finance input.

## 12. Sales Lead
Reports to: Sales Director
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/sales-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- sales objections
- purchase intent
- offer logic
- conversion friction
- retail price communication
- customer trust
- handoff to support/ecommerce
Decision rules:
- Every sales claim must be verifiable in catalog/PDP/policy.
- Escalate price/tax/shipping/payment uncertainty.

## 13. B2B Sales Lead
Reports to: Sales Director
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/b2b-sales-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- C: Industrial / suppliers / factory / customs / production
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- line sheets
- wholesale pricing handoff
- retailer fit
- B2B MOQ/payment/delivery logic
- buyer outreach
- sample requests
- quote completeness
Decision rules:
- Wholesale outputs must include buyer fit, product fit, margin assumptions, delivery assumptions, and source basis.
- No delivery or inventory promise without Industrial and Finance confirmation.

## 14. Market Research / Directory Research Lead
Reports to: Sales Director
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/market-research-directory-research-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- C: Industrial / suppliers / factory / customs / production
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
Technical knowledge:
- competitor benchmarking
- retailer fit scoring
- price benchmarking
- market/source reliability
- directory hygiene
- country behaviour
- ecommerce statistics
Decision rules:
- Every research item needs URL/source, date seen, relevance, and confidence score.
- Reject unverifiable directory data or mark it unverified.

## 15. Web Design / Ecommerce Lead
Reports to: Sales Director
Model: gpt-5.5
Instruction file: /agents/san-bernardo/web-design-ecommerce-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- Shopify theme structure
- PDP UX
- collections
- navigation
- metafields display
- variant UX
- checkout trust elements
- privacy-sensitive scripts
Decision rules:
- Visual design must be approved by Creative Direction; product data must come from Product Catalog; privacy scripts require Legal review.
- Run build/check/verify on technical edits.

## 16. Ecommerce Operations Lead
Reports to: Sales Director
Model: gpt-5.5
Instruction file: /agents/san-bernardo/ecommerce-operations-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- Shopify products/variants
- collections/tags
- inventory availability
- returns setup
- policy pages
- order/test flow
- merchandising QA
Decision rules:
- Do not upload product data unless Product Catalog source fields are complete.
- Do not publish policy changes without Legal/Finance/Human Owner approval if material.

## 17. Product Catalog Lead
Reports to: Sales Director
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/product-catalog-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- SKU architecture
- variant logic
- material/care fields
- metafields
- GTIN/barcode awareness
- PDP copy fields
- wholesale/B2C data consistency
Decision rules:
- Every product field must have source, owner, and status.
- No material/care/origin/certificate claim without evidence.

## 18. Customer Service Lead
Reports to: Sales Director
Model: claude-haiku-4-5-20251001
Instruction file: /agents/san-bernardo/customer-service-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- support macros
- returns/exchanges
- shipping/order status language
- privacy-safe customer data handling
- sizing guidance
- complaint escalation
Decision rules:
- Every macro must point to approved policy/catalog source.
- Escalate angry, legal, privacy, payment, damaged goods, and exception requests.

## 19. Customer Success / Implementation Lead
Reports to: Sales Director
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/customer-success-implementation-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- post-sale journey
- wholesale account onboarding
- customer education
- service handoff
- NPS/feedback loops
- privacy-safe customer tracking
Decision rules:
- Customer success actions must use approved catalog/policy data.
- Escalate account-specific terms, payment, returns exceptions, or privacy-sensitive workflows.

## 20. Industrial Director
Reports to: Operations Coordinator
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/industrial-director.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
- F: Finance / tax / inventory / billing
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- factory qualification
- sampling gates
- production sequencing
- quality gates
- customs/origin/HS questions
- procurement controls
- warehouse handoff
- supplier due diligence
Decision rules:
- No production commitment without tech pack, supplier quote, capacity, sample path, Incoterm, payment terms, QC plan, and escalation status.
- Escalate customs/tax/legal risks immediately.

## 21. Supplier / Factory Liaison
Reports to: Industrial Director
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/supplier-factory-liaison.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- supplier email tracking
- quote completeness
- sample/production status
- factory question logs
- Incoterm/payment/document gaps
- response risk scoring
Decision rules:
- Every supplier answer must be logged with source/date/contact.
- Mark missing Incoterm, payment, lead time, composition, certificate, MOQ, and document gaps.

## 22. Factory Sourcing Lead
Reports to: Industrial Director
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/factory-sourcing-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
- E: Sales / market / wholesale / commercial research
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
Technical knowledge:
- factory discovery
- knitwear capability screening
- MOQ/lead-time comparison
- certification/document checks
- factory risk scoring
- country/source reliability
Decision rules:
- Every factory entry must include source URL/contact, capability, MOQ, lead time, materials, certifications, risk, missing data, and next action.

## 23. Production Planning & Technical Lead
Reports to: Industrial Director
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/production-planning-technical-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- production sequence
- sample milestones
- capacity check
- materials availability
- revision control
- size runs
- QC gate planning
- technical handoff audit
Decision rules:
- No production plan is valid without tech pack, sample path, material status, factory capacity, QC plan, and open-risk list.

## 24. Quality & Certification Lead
Reports to: Industrial Director
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/quality-certification-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- B: Textile / knitwear / product development
- C: Industrial / suppliers / factory / customs / production
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Textile Exchange Responsible Wool Standard - https://textileexchange.org/responsible-wool-standard/
- Woolmark wool care guide - https://www.woolmark.com/care/care-for-wool/
- Woolmark pilling guide - https://www.woolmark.com/care/pilling/
- EU Textile Labelling Regulation 1007/2011 - https://www.legislation.gov.uk/eur/2011/1007/contents
- ISO 2859-1:2026 AQL inspection standard - https://www.iso.org/standard/85464.html
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- AQL inspection logic
- defect classification
- composition proof
- certification evidence
- care label evidence
- sample quality review
- lab test requirements
Decision rules:
- Any fibre/certification/quality claim without evidence is a blocker.
- AQL is inspection acceptance logic, not a target quality level.

## 25. Customs / Compliance Lead
Reports to: Industrial Director
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/customs-compliance-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- C: Industrial / suppliers / factory / customs / production
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- EORI
- customs declaration documents
- HS classification questions
- origin proof
- commercial invoice/packing list
- import VAT/duty routing
- broker handoff
Decision rules:
- Never final-classify HS or origin without broker/legal/accounting review.
- Every shipment packet must include commercial invoice, packing list, origin/composition evidence where needed, Incoterm, and value basis.

## 26. Warehouse Lead
Reports to: Industrial Director
Model: claude-haiku-4-5-20251001
Instruction file: /agents/san-bernardo/warehouse-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- C: Industrial / suppliers / factory / customs / production
- D: Ecommerce / catalog / customer service / customer data
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- receiving checks
- SKU/variant labels
- available/reserved/damaged stock
- pick-pack logic
- returns intake
- warehouse reconciliation
- inventory evidence
Decision rules:
- Every unit movement must map to SKU/variant/location/status.
- Damaged or uncertain stock cannot be available-to-sell.

## 27. Procurement Lead
Reports to: Industrial Director
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/procurement-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- C: Industrial / suppliers / factory / customs / production
- F: Finance / tax / inventory / billing
- H: Packaging / EPR / environmental packaging compliance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- European Commission packaging waste overview - https://environment.ec.europa.eu/topics/waste-and-recycling/packaging-waste_en
- EUR-Lex Regulation (EU) 2025/40 PPWR text - https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202500040
- BOE Royal Decree 1055/2022 Spain packaging and packaging waste - https://www.boe.es/buscar/act.php?id=BOE-A-2022-22690
- MITECO Spain packaging information - https://www.miteco.gob.es/es/calidad-y-evaluacion-ambiental/temas/prevencion-y-gestion-residuos/flujos/envases.html
- Ecoembes packaging regulation overview - https://ecoembesempresas.com/en/packaging-regulations
Technical knowledge:
- PO fields
- supplier quote comparison
- payment milestones
- Incoterms
- delivery point
- material/packaging specs
- document evidence
- approval routing
Decision rules:
- No PO packet without supplier, item, quantity, unit price, Incoterm, payment terms, delivery point, tax/import assumptions, and approval status.

## 28. Commercial Finance Lead
Reports to: Operations Coordinator
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/commercial-finance-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- C: Industrial / suppliers / factory / customs / production
- D: Ecommerce / catalog / customer service / customer data
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- unit economics
- landed cost
- gross margin
- VAT/OSS/UK VAT routing
- cash forecast
- receivables/payables
- inventory valuation
- billing evidence
- return allowance
Decision rules:
- No commercial recommendation without VAT assumption, landed cost, margin, cash impact, and inventory impact.
- UK tax issues require specific review.

## 29. Finance / Collections Lead
Reports to: Commercial Finance Lead
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/finance-collections-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- AR/AP tracking
- cash forecast
- collections status
- payment terms
- invoice evidence
- credit risk
- payment exception escalation
Decision rules:
- Every receivable/payable entry must show counterparty, amount, due basis, status, source doc, owner, and next action.

## 30. Tax / Accounting Lead
Reports to: Commercial Finance Lead
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/tax-accounting-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- OSS/IOSS basics
- Modelo 369 evidence
- UK VAT routing
- invoice category
- refund/return tax impact
- accountant handoff
- tax risk register
Decision rules:
- Do not state tax treatment as final; state assumption, source, required accountant confirmation, and evidence needed.

## 31. Inventory Planner
Reports to: Commercial Finance Lead
Model: claude-sonnet-4-6
Instruction file: /agents/san-bernardo/inventory-planner.md
Source packs:
- A: Paperclip / agent operations / model configuration
- C: Industrial / suppliers / factory / customs / production
- D: Ecommerce / catalog / customer service / customer data
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU Access2Markets import guide - https://trade.ec.europa.eu/access-to-markets/en/content/guide-import-goods
- EU Access2Markets customs clearance documents - https://trade.ec.europa.eu/access-to-markets/en/content/customs-clearance-documents-and-procedures
- EU Access2Markets rules of origin - https://trade.ec.europa.eu/access-to-markets/en/content/rules-origin
- WCO Harmonized System nomenclature - https://www.wcoomd.org/en/topics/nomenclature/instrument-and-tools/hs-nomenclature-2022-edition.aspx
- ICC Incoterms rules - https://iccwbo.org/business-solutions/incoterms-rules/
- OECD Garment and Footwear Due Diligence Guidance - https://www.oecd.org/en/publications/oecd-due-diligence-guidance-for-responsible-supply-chains-in-the-garment-and-footwear-sector_9789264290587-en.html
- EU Garment & Footwear Due Diligence Checker - https://international-partnerships.ec.europa.eu/eu-due-diligence-navigator-partner-countries/due-diligence-checker-garment-footwear-sector_en
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- variant-level inventory
- stock status
- reserved/available/damaged
- reorder triggers
- sell-through
- inventory value
- warehouse reconciliation
Decision rules:
- Inventory plan must reconcile Shopify variant, warehouse status, reserved stock, damaged stock, and financial value.

## 32. Billing / Subscription Operations Lead
Reports to: Commercial Finance Lead
Model: claude-haiku-4-5-20251001
Instruction file: /agents/san-bernardo/billing-subscription-operations-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- invoice evidence
- refund/billing adjustments
- payment processor notes
- subscription/account logic if activated
- privacy-safe billing support
Decision rules:
- Every billing issue must show order/account, amount, status, source document, policy basis, and escalation owner.

## 33. Data / Reporting Operator
Reports to: Operations Coordinator
Model: claude-haiku-4-5-20251001
Instruction file: /agents/san-bernardo/data-reporting-operator.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- E: Sales / market / wholesale / commercial research
- F: Finance / tax / inventory / billing
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- McKinsey / Business of Fashion State of Fashion - https://www.mckinsey.com/industries/retail/our-insights/state-of-fashion
- Eurostat e-commerce statistics for individuals - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics_for_individuals
- Eurostat enterprise e-commerce statistics - https://ec.europa.eu/eurostat/statistics-explained/index.php?title=E-commerce_statistics
- Shopify product details documentation - https://help.shopify.com/en/manual/products/details
- GS1 apparel product identification - https://www.gs1.org/industries/retail/apparel
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
Technical knowledge:
- KPI definitions
- data source mapping
- data freshness
- variant-level reporting
- sales/inventory/finance metrics
- exception logging
Decision rules:
- Every metric must define source, formula, owner, refresh status, and known caveats.

## 34. Automation Operator
Reports to: Operations Coordinator
Model: gpt-5.5
Instruction file: /agents/san-bernardo/automation-operator.md
Source packs:
- A: Paperclip / agent operations / model configuration
- D: Ecommerce / catalog / customer service / customer data
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- Shopify product variants - https://help.shopify.com/en/manual/products/variants
- Shopify product details page - https://help.shopify.com/en/manual/products/details/product-details-page
- Shopify metafields - https://shopify.dev/docs/apps/build/metafields
- Shopify returns and exchanges - https://help.shopify.com/en/manual/fulfillment/managing-orders/returns
- Shopify GDPR guidance - https://help.shopify.com/en/manual/privacy-and-security/privacy/gdpr
- GS1 apparel and general merchandise - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- Gorgias macros - https://docs.gorgias.com/en-US/macros-101-81846
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- workflow logic
- Shopify automation
- Gorgias rules/macros
- data exports
- webhooks/API basics
- privacy gates
- finance/tax safeguards
Decision rules:
- No automation may change money, inventory, customer data, or policy without explicit approval.
- Every automation needs trigger, input, action, safety check, rollback, and owner.

## 35. Legal / IP / Corporate Affairs Lead
Reports to: Operations Coordinator
Model: claude-opus-4-7
Instruction file: /agents/san-bernardo/legal-ip-corporate-affairs-lead.md
Source packs:
- A: Paperclip / agent operations / model configuration
- F: Finance / tax / inventory / billing
- G: Legal / IP / privacy / corporate governance
Direct sources:
- Paperclip Process Adapter docs - https://paperclipai-paperclip.mintlify.app/agents/process-adapter
- Paperclip product model / company structure notes - https://github.com/paperclipai/paperclip/blob/master/doc/PRODUCT.md
- Anthropic Claude model overview - https://platform.claude.com/docs/en/about-claude/models/overview
- Anthropic Claude model deprecations - https://platform.claude.com/docs/en/about-claude/model-deprecations
- OpenAI Codex model guide - https://developers.openai.com/codex/models
- EU VAT One Stop Shop - https://vat-one-stop-shop.ec.europa.eu/index_en
- Spanish Agencia Tributaria IVA comercio electronico / Modelo 369 - https://sede.agenciatributaria.gob.es/Sede/iva/iva-comercio-electronico/modelo-369.html
- HMRC VAT and overseas goods sold directly to UK customers - https://www.gov.uk/guidance/vat-and-overseas-goods-sold-directly-to-customers-in-the-uk
- Shopify Product Variant API - https://shopify.dev/docs/api/admin-rest/latest/resources/product-variant
- Shopify InventoryItem GraphQL object - https://shopify.dev/docs/api/admin-graphql/latest/objects/InventoryItem
- GS1 apparel/product identifiers - https://www.gs1us.org/industries-and-insights/apparel-and-general-merchandise
- EUIPO Trade Marks - https://www.euipo.europa.eu/en/trade-marks
- EUIPO Guidelines - https://www.euipo.europa.eu/en/guidelines
- WIPO Madrid System - https://www.wipo.int/en/web/madrid-system
- WIPO Madrid Monitor - https://www3.wipo.int/madrid/monitor/en/
- EU GDPR business data protection guidance - https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm
- European Commission data protection overview - https://commission.europa.eu/law/law-topic/data-protection_en
Technical knowledge:
- trademark/design screening
- Madrid System awareness
- contract red flags
- GDPR basics
- corporate records
- approval evidence
- legal escalation packets
Decision rules:
- Label every legal output as preliminary screening, not legal advice.
- Escalate filings, contracts, privacy incidents, IP conflicts, and data transfers.
---

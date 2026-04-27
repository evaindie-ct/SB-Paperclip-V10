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

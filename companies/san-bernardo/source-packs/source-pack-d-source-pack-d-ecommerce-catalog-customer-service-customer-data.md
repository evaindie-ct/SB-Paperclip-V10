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

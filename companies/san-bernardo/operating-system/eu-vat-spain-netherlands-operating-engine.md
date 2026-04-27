# EU VAT and Spain/Netherlands operating engine

## VAT core logic

- VAT is the central tax system for the operating engine.
- VAT is a consumption tax on goods and services bought and sold within and into the EU.
- VAT is an indirect tax on most goods and services.
- VAT is borne by the final consumer, not businesses.
- VAT is charged as a percentage of the sales price.
- VAT is collected fractionally across the supply chain.
- VAT is neutral in principle for businesses.
- VAT must be designed into order, invoice, and shipment flows from the beginning.
- Tax logic must not sit outside the operating system.
- Every order must have a tax classification before invoicing.

## Import/export VAT logic

- Goods sold for export or services sold outside the EU are normally not subject to VAT.
- VAT is charged on most imports into the EU.
- Import flows must be built into order and procurement.
- Customs and import VAT cannot be afterthoughts.
- The system must distinguish:
  - domestic EU movements
  - intra-EU movements
  - imports

## VAT Directive logic

- The EU VAT Directive is the core legal framework.
- Each Member State transposes the Directive into national law.
- Automation must map:
  - scenario
  - Directive logic
  - national treatment
- Spain and Netherlands rules may differ.
- Country-specific rule tables must come from legal text, not assumptions.

## Special VAT schemes

Evaluate whether the business model qualifies for:
- One Stop Shop
- Import One Stop Shop
- small business schemes
- farmers
- travel agents

Scheme eligibility must be checked before coding ERP tax rules.

## VAT scenario engine

Research and automate these scenarios:
- Spain domestic sale
- Netherlands domestic sale
- Spain to Netherlands B2B shipment
- Spain to Netherlands B2C shipment
- Netherlands to Spain shipment
- Netherlands to non-EU destination if relevant
- import from China into EU
- direct shipment from China to EU customer or warehouse
- returns and replacements
- credit notes and corrections

Each scenario needs:
- tax treatment
- invoice treatment
- customs treatment
- warehouse / shipping treatment
- accounting code treatment

## VAT automation layer

The first automation layer should cover:
- transaction classification
- tax code selection
- invoice format selection
- VAT reporting category selection
- import / customs flagging
- country-specific treatment logic
- document retention
- audit trail

Every transaction must answer:
- what is being sold?
- where is it sold from?
- where is it delivered?
- who is the customer?
- is it B2B or B2C?
- is it domestic, intra-EU, or import?
- what VAT rule applies?
- what document or filing obligation follows?

## Spain VAT operating points

Spain VAT operations include:
- VAT returns
- regimes
- SII
- VERI*FACTU
- monthly refunds
- taxpayer obligations
- VAT procedures
- Form 303 VAT self-assessment
- PRE 303 assistance
- VAT refunds
- VAT taxation systems
- billing and registration
- Billing Computer Systems / SIF
- VERI*FACTU

Spain VAT tools:
- VAT virtual assistant
- SII virtual assistant
- goods provision locator
- service provision locator
- deadline calculators
- invoice correction helpers
- apportionment calculator
- differentiated sectors calculator

Operational conclusions:
- Spain is highly procedural for VAT.
- Invoicing and reporting must be designed into the operating system.
- VAT is not after-the-fact accounting.
- Spain rewards a system where invoicing, registration, and VAT reporting are tightly linked.
- Automation must prepare invoice data correctly for tax reporting.
- If Spain is the management base, tax workflow is core system logic.

## Netherlands VAT operating points

Netherlands VAT operations include:
- almost all entrepreneurs must calculate and add VAT on sales price
- VAT may not apply for exempt activities
- KOR small business scheme may apply
- non-resident businesses may have different rules
- businesses may receive two VAT numbers:
  - VAT ID
  - VAT tax number
- VAT ID must appear on invoices
- sent and received invoices must be retained
- rates:
  - 0%
  - 9%
  - 21%
- 0% can apply to some goods supplied to an entrepreneur in another EU country
- 21% is the general rate

Operational conclusions:
- Netherlands operations require explicit VAT number handling.
- Invoice recordkeeping must be explicit.
- EU cross-border business requires scenario-based tax treatment.
- The system must distinguish resident and non-resident behavior.

## Spain/Netherlands cross-border rules engine

Classify:
- domestic Spanish sales
- domestic Dutch sales
- Spain to Netherlands flows
- Netherlands to Spain flows
- goods going to another EU country
- exempt or reverse-charge cases
- reporting obligations by entity and country

Operational conclusions:
- This is not a single-rate calculation problem.
- Tax logic must be embedded in:
  - order creation
  - invoice creation
  - shipment release
- Country-specific procedures need a canonical transaction type model.

## Invoice and record discipline

Spain controls:
- VAT returns and billing systems
- SII
- VERI*FACTU
- invoice correction and filing support

Netherlands controls:
- VAT ID on invoices
- retaining sent and received invoices
- VAT calculation and settlement

Operational conclusions:
- Invoice data quality is a core control point.
- Order, shipment, invoice, and VAT data must remain consistent.
- Automation should validate invoice fields before release.

## Fulfillment architecture implications

The system must support:
- Spain-based management and possibly commercial functions
- Netherlands-based fulfillment or consolidation if used
- EU distribution routing
- inventory splits by node
- stock transfer logic between nodes
- country-specific VAT logic for each node

Open architecture questions:
- where stock is legally held
- where goods are shipped from
- how import VAT lands
- how intercompany transfers are treated
- whether 3PL or own warehouse is better

## Unresolved regulatory research questions

- Spain-specific VAT setup and reporting
- Netherlands-specific VAT setup and reporting
- Spain non-resident or entity structure rules for a Netherlands node
- Dutch non-resident VAT specifics for an EU holding or warehouse structure
- Exact VAT rule matrix for intra-EU B2B and B2C flows
- OSS / IOSS applicability
- Reverse-charge scenarios by transaction type
- Customs / import VAT handling for China-origin goods
- Customs / import treatment for China-origin goods in Spanish or Dutch entry points
- Product-category compliance rules
- Filing cadence
- Registration requirements
- Whether SII, VERI*FACTU, or related Spanish reporting should be mandatory in the first operating shape

# Standard task prompts

## Intake prompt

Classify the incoming request. Identify:
- customer
- country
- product
- tax implications
- customs implications
- required approvals
- next action

Return:
- structured decision
- missing data
- owner
- escalation if needed

## PO prompt

Create a purchase order draft from approved demand signal. Include:
- supplier
- SKU
- quantity
- spec version
- Incoterms
- payment milestone
- lead time
- QC requirements

Flag missing fields before release.

## Order release prompt

Review order completeness. Check:
- customer data
- tax classification
- stock availability
- customs implications
- payment status

Return:
- release
- hold
- escalate
- reason

## Invoice prompt

Generate invoice instructions. Confirm:
- VAT treatment
- invoice fields
- billing entity
- currency
- filing category

Flag issues before release.

## Customs prompt

Classify shipment for customs. Check:
- product category
- origin evidence
- tariff / classification fields
- import/export route
- restrictions
- required documents

Return:
- release
- hold
- escalate

## Inventory prompt

Check stock by SKU and location. Report:
- on-hand
- reserved
- available
- in-transit
- blocked
- reorder status
- discrepancies
- recommended action

## Exception prompt

Summarize exception. Classify:
- failure type
- owner
- next step
- retry / hold / escalate

## Weekly review prompt

Prepare weekly operating review covering:
- cash
- receivables
- payables
- stock
- shipments
- exceptions
- compliance items
- top risks
- trends
- decisions needed

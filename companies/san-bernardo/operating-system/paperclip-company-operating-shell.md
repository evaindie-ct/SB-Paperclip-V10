# Paperclip company operating shell


## Canonical company objects

Set these objects in Paperclip or in connected operating systems before letting workers act autonomously:

- Company profile
- Operating countries
- Legal entities
- Warehouse / fulfillment nodes
- Product / SKU catalog
- Supplier catalog
- Customer catalog
- Tax rules matrix
- Customs rules matrix
- Inventory ledger
- Order ledger
- Purchase ledger
- Cash / finance ledger
- Exception queue
- SOP library
- KPI dashboard
- Approval matrix
- Worker roster
- Recurring task schedule

## Company profile fields

- Company name
- Country of incorporation
- Base country
- Fulfillment country or countries
- Business model type
- Product category
- Customer type
- Sales regions
- Supply countries
- Primary tax regime
- Primary customs regime
- Warehouse model
- ERP / WMS / accounting stack

## Standard company definition layer

- Company type: EU industrial/logistics trading company
- Base model:
  - management base: Spain
  - possible fulfillment node: Netherlands
  - supply side: China and other third countries when relevant
  - operating scope: EU trade, storage, shipping, invoicing, tax, customs, inventory, collections
- Core control domains:
  - Tax and VAT
  - Customs and import/export
  - Inventory and warehouse stock
  - Purchase orders and supplier control
  - Order-to-cash
  - Procure-to-pay
  - Cash and working capital
  - Exception handling
  - KPI reporting

## Role permission model

Permission types:
- Read only
- Create
- Edit
- Approve
- Release
- Block
- Escalate
- Close
- Reconcile

Permission rules:
- No worker owns everything.
- Tax and customs release must be controlled.
- Purchasing requires approval thresholds.
- Stock adjustments must be logged.
- Refunds require review.
- Supplier changes must be version-controlled.
- No approval is valid without an audit trail.

## Required approval gates

Human approval required for:
- Customs holds
- Customs-sensitive shipments
- Tax-sensitive invoices
- Refunds
- Large purchases
- Supplier substitutions
- Stock write-offs above threshold
- Stock adjustments above threshold
- Customer promise changes
- Customer promises that change scope
- Credit exceptions
- Compliance-sensitive decisions
- Compliance exceptions
- Entity or structure changes
- Final order release
- Final supplier approval
- Final production release
- Payment approval

Approval record must store:
- Approver
- Timestamp
- Decision
- Reason / rationale
- Source data used
- Related order / PO / shipment / invoice / exception
- What was approved

## Exception queue schema

Each exception must store:
- Unique ID
- Source system
- Type
- Severity
- Owner
- Created time
- SLA
- Next action
- Related / attached documents
- Current status
- Resolution note

Exception types:
- Missing tax data
- Customs hold
- Missing origin evidence
- Supplier delay
- Payment failure
- Stock mismatch
- QC failure
- Invoice mismatch
- Damaged goods
- Customer dispute
- Compliance hold / compliance issue

## Required SOP library

Create SOPs for:
- Order intake
- Quote review
- Tax classification
- Invoice generation
- PO issuance
- Supplier confirmation
- Supplier onboarding
- Inbound receiving
- Receiving
- QC / QC review
- Stock adjustment
- Customs hold
- Customs issue handling
- Shipment release
- Returns / returns handling
- Weekly review
- Weekly operating review
- Monthly VAT prep
- VAT filing prep
- Exception escalation
- Closeout and month-end reconciliation

## KPI dashboard panels

Minimum panels:
- Orders received
- Orders blocked
- Shipments in transit
- Stock on hand
- Stock in transit
- Stock by location
- Stock aged / stock aging
- Inventory turns
- Receivables aging
- Payables due
- Cash forecast
- VAT status
- Customs holds
- Open exceptions
- Manual intervention rate
- Supplier performance
- Margin by SKU / customer / channel

## Master data rules

Canonical IDs:
- Company ID
- Customer ID
- Supplier ID
- SKU ID
- Order ID
- PO ID
- Shipment ID
- Invoice ID
- Exception ID
- Approval ID

Canonical statuses:
- Draft
- Pending review
- Approved
- Released
- In transit
- Received
- Blocked
- Escalated
- Closed
- Cancelled

Data quality rules:
- No duplicate master records.
- No duplicate masters.
- No shipment without product classification.
- No invoice without tax treatment.
- No stock movement without location.
- No approval without audit trail.

## Operational sequence

1. Create company profile.
2. Create legal and tax profile.
3. Create country and warehouse nodes.
4. Load suppliers and SKUs.
5. Load tax and customs rules.
6. Load approval matrix.
7. Load SOPs.
8. Connect ERP / WMS / accounting / CRM.
9. Enable recurring tasks.
10. Start with controlled orders only.
11. Monitor exceptions and KPI drift.
12. Expand only after controls are stable.

## Live-readiness checklist

- Company profile exists.
- Tax rules exist.
- Customs rules exist.
- SKU master exists.
- Supplier master exists.
- Customer master exists.
- Approval matrix exists.
- Recurring tasks are scheduled.
- Dashboards are populated.
- Exception queue is active.
- SOPs are published.
- Audit logging is enabled.

## Operating principle

Paperclip should not be used as a vague project manager. Use it as the company operating shell.

Paperclip should:
- Create tasks.
- Assign tasks.
- Collect status.
- Enforce approvals.
- Surface exceptions.
- Run recurring checks.
- Produce operator-ready reports.

If a task cannot be expressed as a role, prompt, rule, checklist, or approval, it is not ready to live in the operating shell.

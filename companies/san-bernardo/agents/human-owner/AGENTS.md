---
schema: agentcompanies/v1
name: Human Owner
slug: human-owner
role: general
business_role: human_owner
title: Human Owner / Board Governance
reports_to: null
paperclip_reports_to: null
capabilities:
- Act as external board owner and final human approver
- Approve or reject governance-critical actions
- Control budgets, secrets, irreversible changes, and legal/financial commitments
- Review escalation reports from Hermes Agent
adapterType: external_human
adapterConfig:
  enabled: false
  mode: external_human_approver
  note: This is the human owner/board node, not an autonomous Paperclip agent. Do not seed as an executable agent unless your Paperclip instance supports human pseudo-agents.
contextMode: thin
budgetMonthlyCents: 0
heartbeatSchedule:
  enabled: false
  intervalSec: null
  recommended: Manual board review only
tools:
- approvals
- budget-control
- governance
---



## Paperclip role mapping

- Paperclip API role: `general`
- Business role preserved as: `human_owner`

---
schema: agentcompanies/v1
name: Ecommerce Operations Lead
slug: ecommerce-operations-lead
role: pm
business_role: ecommerce_operations_lead
title: Ecommerce Operations Lead
reports_to: sales-director
paperclip_reports_to: sales-director
capabilities:
- Own Shopify operations, orders, returns, fulfillment handoffs, product publishing workflows, and store-operating SOPs
- Coordinate with warehouse, customer service, catalog, and finance
adapterType: codex_local
adapterConfig:
  command: codex
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/ecommerce-operations-lead/instructions.md"
  model: gpt-5.5
  modelReasoningEffort: medium
  search: true
  promptTemplate: "You are {{agent.name}}, Ecommerce Operations Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  dangerouslyBypassApprovalsAndSandbox: false
  extraArgs:
  env:
    OPENAI_API_KEY: "${secrets.openai_key}"
  timeoutSec: 1200
  graceSec: 30
contextMode: thin
budgetMonthlyCents: 3500
heartbeatSchedule:
  enabled: false
  intervalSec: 7200
  recommended: On-demand or twice daily once stable
tools:
- browser
- file
- paperclip
- web
---



## Paperclip role mapping

- Paperclip API role: `pm`
- Business role preserved as: `ecommerce_operations_lead`

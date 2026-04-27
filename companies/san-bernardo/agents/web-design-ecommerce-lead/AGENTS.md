---
schema: agentcompanies/v1
name: Web Design / Ecommerce Lead
slug: web-design-ecommerce-lead
role: designer
business_role: web_design_ecommerce_lead
title: Web Design / Ecommerce Lead
reports_to: sales-director
paperclip_reports_to: sales-director
capabilities:
- Own ecommerce UX, customer journey, site structure, product page logic, CRO recommendations, and web design consistency
- Review Shopify storefront decisions against brand and conversion goals
adapterType: codex_local
adapterConfig:
  command: codex
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/web-design-ecommerce-lead/instructions.md"
  model: gpt-5.5
  modelReasoningEffort: medium
  search: true
  promptTemplate: "You are {{agent.name}}, Web Design / Ecommerce Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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

- Paperclip API role: `designer`
- Business role preserved as: `web_design_ecommerce_lead`

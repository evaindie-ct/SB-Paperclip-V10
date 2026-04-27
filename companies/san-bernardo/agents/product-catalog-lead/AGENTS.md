---
schema: agentcompanies/v1
name: Product Catalog Lead
slug: product-catalog-lead
role: pm
business_role: product_catalog_lead
title: Product Catalog Lead
reports_to: sales-director
paperclip_reports_to: sales-director
capabilities:
- Own product catalog data: names, SKUs, variants, sizes, colors, descriptions, imagery fields, materials, care, and SEO fields
- Ensure catalog accuracy before publication
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/product-catalog-lead/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: true
  promptTemplate: "You are {{agent.name}}, Product Catalog Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 50
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
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
- Business role preserved as: `product_catalog_lead`

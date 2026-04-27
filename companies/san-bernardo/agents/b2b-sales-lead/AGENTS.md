---
schema: agentcompanies/v1
name: B2B Sales Lead
slug: b2b-sales-lead
role: cmo
business_role: b2b_sales_lead
title: B2B Sales Lead
reports_to: sales-director
paperclip_reports_to: sales-director
capabilities:
- Own wholesale/B2B targets, retailer outreach, buyer research, trade-show prep, and account qualification
- Coordinate with market research and finance before commercial commitments
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/b2b-sales-lead/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: true
  promptTemplate: "You are {{agent.name}}, B2B Sales Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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

- Paperclip API role: `cmo`
- Business role preserved as: `b2b_sales_lead`

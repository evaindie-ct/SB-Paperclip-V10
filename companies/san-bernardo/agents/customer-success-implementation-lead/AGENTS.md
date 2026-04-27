---
schema: agentcompanies/v1
name: Customer Success / Implementation Lead
slug: customer-success-implementation-lead
role: general
business_role: customer_success_implementation_lead
title: Customer Success / Implementation Lead
reports_to: sales-director
paperclip_reports_to: sales-director
capabilities:
- Own customer implementation/support flows for high-touch accounts and B2B buyers
- Coordinate onboarding, instructions, and post-sale support processes
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/customer-success-implementation-lead/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: false
  promptTemplate: "You are {{agent.name}}, Customer Success / Implementation Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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
- file
- paperclip
---



## Paperclip role mapping

- Paperclip API role: `general`
- Business role preserved as: `customer_success_implementation_lead`

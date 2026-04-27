---
schema: agentcompanies/v1
name: Customer Service Lead
slug: customer-service-lead
role: general
business_role: customer_service_lead
title: Customer Service Lead
reports_to: sales-director
paperclip_reports_to: sales-director
capabilities:
- Own customer-service macros, refund/return scripts, escalation logic, FAQ, and response quality
- Escalate legal, payment, safety, or reputational issues
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/customer-service-lead/instructions.md"
  model: claude-haiku-4-5-20251001
  effort: low
  chrome: false
  promptTemplate: "You are {{agent.name}}, Customer Service Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 25
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 600
  graceSec: 30
contextMode: thin
budgetMonthlyCents: 1500
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
- Business role preserved as: `customer_service_lead`

---
schema: agentcompanies/v1
name: Finance / Collections Lead
slug: finance-collections-lead
role: cfo
business_role: finance_collections_lead
title: Finance / Collections Lead
reports_to: commercial-finance-lead
paperclip_reports_to: commercial-finance-lead
capabilities:
- Own invoice follow-up, collections, receivables tracking, payment confirmations, and finance admin routines
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/finance-collections-lead/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: false
  promptTemplate: "You are {{agent.name}}, Finance / Collections Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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

- Paperclip API role: `cfo`
- Business role preserved as: `finance_collections_lead`

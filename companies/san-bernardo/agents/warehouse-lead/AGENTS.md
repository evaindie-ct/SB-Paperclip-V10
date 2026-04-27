---
schema: agentcompanies/v1
name: Warehouse Lead
slug: warehouse-lead
role: general
business_role: warehouse_lead
title: Warehouse Lead
reports_to: industrial-director
paperclip_reports_to: industrial-director
capabilities:
- Own storage, inbound/outbound inventory process, pick/pack handoffs, low-volume fulfillment routines, and warehouse checklists
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/warehouse-lead/instructions.md"
  model: claude-haiku-4-5-20251001
  effort: low
  chrome: false
  promptTemplate: "You are {{agent.name}}, Warehouse Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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
- Business role preserved as: `warehouse_lead`

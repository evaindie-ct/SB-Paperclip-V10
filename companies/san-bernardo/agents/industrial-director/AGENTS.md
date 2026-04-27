---
schema: agentcompanies/v1
name: Industrial Director
slug: industrial-director
role: pm
business_role: industrial_director
title: Industrial Director
reports_to: operations-coordinator
paperclip_reports_to: operations-coordinator
capabilities:
- Own industrial execution: suppliers, factories, production planning, QC, customs, warehouse, procurement
- Protect cost, quality, lead time, and supplier reliability
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/industrial-director/instructions.md"
  model: claude-opus-4-7
  effort: high
  chrome: false
  promptTemplate: "You are {{agent.name}}, Industrial Director for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 80
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 1800
  graceSec: 30
contextMode: fat
budgetMonthlyCents: 7500
heartbeatSchedule:
  enabled: false
  intervalSec: 3600
  recommended: Hourly or twice daily once stable
tools:
- file
- paperclip
---



## Paperclip role mapping

- Paperclip API role: `pm`
- Business role preserved as: `industrial_director`

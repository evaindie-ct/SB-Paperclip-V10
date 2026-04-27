---
schema: agentcompanies/v1
name: Operations Coordinator
slug: operations-coordinator
role: pm
business_role: operations_coordinator
title: Operations Coordinator
reports_to: hermes-agent
paperclip_reports_to: hermes-agent
capabilities:
- Run the operating cadence, intake queue, cross-department task routing, and weekly review
- Convert broad objectives into owners, deadlines, outputs, and escalation points
- Prevent duplicate work and uncontrolled agent drift
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/operations-coordinator/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: false
  promptTemplate: "You are {{agent.name}}, Operations Coordinator for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 50
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 1200
  graceSec: 30
contextMode: thin
budgetMonthlyCents: 5000
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
- Business role preserved as: `operations_coordinator`

---
schema: agentcompanies/v1
name: Data / Reporting Operator
slug: data-reporting-operator
role: researcher
business_role: data_reporting_operator
title: Data / Reporting Operator
reports_to: operations-coordinator
paperclip_reports_to: operations-coordinator
capabilities:
- Own reporting tables, KPI dashboards, weekly operating metrics, source data cleaning, and structured status summaries
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/data-reporting-operator/instructions.md"
  model: claude-haiku-4-5-20251001
  effort: low
  chrome: false
  promptTemplate: "You are {{agent.name}}, Data / Reporting Operator for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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

- Paperclip API role: `researcher`
- Business role preserved as: `data_reporting_operator`

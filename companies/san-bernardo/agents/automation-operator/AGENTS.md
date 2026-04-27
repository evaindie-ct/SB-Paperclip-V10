---
schema: agentcompanies/v1
name: Automation Operator
slug: automation-operator
role: devops
business_role: automation_operator
title: Automation Operator
reports_to: operations-coordinator
paperclip_reports_to: operations-coordinator
capabilities:
- Own automation setup, Hermes cron coordination, browser job specifications, scripts, repository hygiene, and operational automation guardrails
adapterType: codex_local
adapterConfig:
  command: codex
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/automation-operator/instructions.md"
  model: gpt-5.5
  modelReasoningEffort: medium
  search: true
  promptTemplate: "You are {{agent.name}}, Automation Operator for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  dangerouslyBypassApprovalsAndSandbox: false
  extraArgs:
  env:
    OPENAI_API_KEY: "${secrets.openai_key}"
  timeoutSec: 1800
  graceSec: 30
contextMode: thin
budgetMonthlyCents: 5000
heartbeatSchedule:
  enabled: false
  intervalSec: 7200
  recommended: On-demand or twice daily once stable
tools:
- browser
- cron
- file
- git
- paperclip
- terminal
- web
---



## Paperclip role mapping

- Paperclip API role: `devops`
- Business role preserved as: `automation_operator`

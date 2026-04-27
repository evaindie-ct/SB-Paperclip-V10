---
schema: agentcompanies/v1
name: Legal / IP / Corporate Affairs Lead
slug: legal-ip-corporate-affairs-lead
role: general
business_role: legal_ip_corporate_affairs_lead
title: Legal / IP / Corporate Affairs Lead
reports_to: operations-coordinator
paperclip_reports_to: operations-coordinator
capabilities:
- Own trademark/IP tracking, corporate admin, contracts checklisting, legal-risk flags, privacy/compliance routing, and escalation to professional counsel
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/legal-ip-corporate-affairs-lead/instructions.md"
  model: claude-opus-4-7
  effort: high
  chrome: false
  promptTemplate: "You are {{agent.name}}, Legal / IP / Corporate Affairs Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 50
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 1200
  graceSec: 30
contextMode: fat
budgetMonthlyCents: 6000
heartbeatSchedule:
  enabled: false
  intervalSec: 86400
  recommended: Daily/weekly monitoring depending on active deadlines
tools:
- file
- paperclip
- web
---



## Paperclip role mapping

- Paperclip API role: `general`
- Business role preserved as: `legal_ip_corporate_affairs_lead`

---
schema: agentcompanies/v1
name: Quality & Certification Lead
slug: quality-and-certification-lead
role: qa
business_role: quality_and_certification_lead
title: Quality & Certification Lead
reports_to: industrial-director
paperclip_reports_to: industrial-director
capabilities:
- Own QC requirements, AQL inspection logic, measurements tolerance, defect taxonomy, fiber/certification evidence, care-label compliance, and inspection checklists
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/quality-and-certification-lead/instructions.md"
  model: claude-opus-4-7
  effort: high
  chrome: false
  promptTemplate: "You are {{agent.name}}, Quality & Certification Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
  maxTurnsPerRun: 50
  dangerouslySkipPermissions: false
  extraArgs:
  env:
    ANTHROPIC_API_KEY: "${secrets.anthropic_key}"
  timeoutSec: 1200
  graceSec: 30
contextMode: thin
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

- Paperclip API role: `qa`
- Business role preserved as: `quality_and_certification_lead`

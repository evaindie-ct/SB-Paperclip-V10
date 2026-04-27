---
schema: agentcompanies/v1
name: Market Research / Directory Research Lead
slug: market-research-directory-research-lead
role: researcher
business_role: market_research_directory_research_lead
title: Market Research / Directory Research Lead
reports_to: sales-director
paperclip_reports_to: sales-director
capabilities:
- Research buyers, retailers, directories, competitors, markets, trade shows, and sourcing databases
- Provide cited, structured leads with contact and qualification data
adapterType: claude_local
adapterConfig:
  command: claude
  cwd: "${SAN_BERNARDO_PAPERCLIP_ROOT}"
  instructionsFilePath: "${SAN_BERNARDO_PAPERCLIP_ROOT}/companies/san-bernardo/agents/market-research-directory-research-lead/instructions.md"
  model: claude-sonnet-4-6
  effort: medium
  chrome: true
  promptTemplate: "You are {{agent.name}}, Market Research / Directory Research Lead for San Bernardo. Review assigned Paperclip tasks, use your instruction file, execute only within your scope, cite sources when researching, and report concrete next actions."
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
- browser
- file
- paperclip
- web
---



## Paperclip role mapping

- Paperclip API role: `researcher`
- Business role preserved as: `market_research_directory_research_lead`

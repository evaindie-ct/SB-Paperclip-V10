---
schema: agentcompanies/v1
name: Browser Cron Monitoring
slug: browser-cron-monitoring
description: Design, test, and monitor browser-based recurring jobs.
---

# Browser Cron Monitoring Skill

Browser backend order:

1. Local Chrome/Chromium via CDP for normal sites.
2. Camofox when Chromium gets fingerprint-blocked.
3. Browser Use or Browserbase cloud for production-hostile sites.

Cron prompts must include exact URLs, extraction fields, expected output format, failure handling, timezone, blocked-page behavior, and previous-run comparison rules.

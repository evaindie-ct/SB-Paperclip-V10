---
schema: agentcompanies/v1
name: Paperclip Import Operations
slug: paperclip-import-ops
description: Import/export company packages through Paperclip CLI safely.
---

# Paperclip Import Operations Skill

Safe order:

1. Run `paperclipai doctor`.
2. Check `curl http://localhost:3100/api/health`.
3. Run dry-run import.
4. Review preview.
5. Run real import.
6. Verify company list and agent list.
7. Configure runtime defaults manually if missing.

Do not use browser automation for bulk worker creation.

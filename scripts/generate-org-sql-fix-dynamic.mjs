#!/usr/bin/env node
import fs from "node:fs";
import path from "node:path";

const root = process.env.SAN_BERNARDO_PAPERCLIP_ROOT || process.cwd();
const manifestPath = fs.existsSync(path.join(root, "companies/san-bernardo/runtime/paperclip-runtime-manifest.importable-36.topological.json"))
  ? path.join(root, "companies/san-bernardo/runtime/paperclip-runtime-manifest.importable-36.topological.json")
  : path.join(root, "companies/san-bernardo/runtime/paperclip-runtime-manifest.importable-36.json");
const statePath = path.join(root, ".paperclip-current-company.json");
const outDir = path.join(root, "companies/san-bernardo/runtime/repair-output");
fs.mkdirSync(outDir, {recursive: true});
const manifest = JSON.parse(fs.readFileSync(manifestPath, "utf8"));
const state = fs.existsSync(statePath) ? JSON.parse(fs.readFileSync(statePath, "utf8")) : {};
const companyId = state.companyId || "REPLACE_WITH_PAPERCLIP_ASSIGNED_RUNTIME_ID";
const bySlug = new Map(manifest.agents.map(a => [a.slug, a]));
const esc = s => String(s).replaceAll("'", "''");
const lines = [];
lines.push("-- San Bernardo Paperclip org hierarchy repair");
lines.push("-- This file uses the Paperclip-assigned runtime company ID from .paperclip-current-company.json when available.");
lines.push("-- Do not hardcode company IDs in repo source. Regenerate this after creating/discovering the company.");
lines.push("");
lines.push(`\\set company_id '${esc(companyId)}'`);
lines.push("BEGIN;");
lines.push("UPDATE agents SET reports_to = NULL WHERE company_id::text = :'company_id';");
lines.push("");
for (const a of manifest.agents) {
  const parentSlug = a.paperclipReportsTo;
  if (!parentSlug) continue;
  const p = bySlug.get(parentSlug);
  if (!p) continue;
  lines.push(`-- ${a.name} -> ${p.name}`);
  lines.push("UPDATE agents AS child");
  lines.push("SET reports_to = parent.id");
  lines.push("FROM agents AS parent");
  lines.push("WHERE child.company_id = parent.company_id");
  lines.push("  AND child.company_id::text = :'company_id'");
  lines.push(`  AND child.name = '${esc(a.name)}'`);
  lines.push(`  AND parent.name = '${esc(p.name)}';`);
  lines.push("");
}
lines.push("SELECT child.name AS child, parent.name AS parent, child.reports_to");
lines.push("FROM agents child");
lines.push("LEFT JOIN agents parent ON parent.id = child.reports_to");
lines.push("WHERE child.company_id::text = :'company_id'");
lines.push("ORDER BY parent.name NULLS FIRST, child.name;");
lines.push("COMMIT;");
const out = path.join(outDir, "fix-org-hierarchy.sql");
fs.writeFileSync(out, lines.join("\n"));
console.log(out);

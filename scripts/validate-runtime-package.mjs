#!/usr/bin/env node
import fs from "node:fs";
import path from "node:path";

const root = process.cwd();
const companyDir = path.join(root, "companies", "san-bernardo");
const agentsDir = path.join(companyDir, "agents");
const manifestFull = path.join(companyDir, "runtime", "paperclip-runtime-manifest.full-37.json");
const manifestImportable = path.join(companyDir, "runtime", "paperclip-runtime-manifest.importable-36.json");
const manifestTopo = path.join(companyDir, "runtime", "paperclip-runtime-manifest.importable-36.topological.json");

function fail(msg) {
  console.error(`FAIL: ${msg}`);
  process.exitCode = 1;
}
function exists(p, label) {
  if (!fs.existsSync(p)) fail(`Missing ${label}: ${p}`);
}

for (const [p, label] of [
  [path.join(companyDir, "COMPANY.md"), "COMPANY.md"],
  [path.join(companyDir, "AGENTS.md"), "AGENTS.md"],
  [path.join(companyDir, "GOALS.md"), "GOALS.md"],
  [path.join(companyDir, "PROJECTS.md"), "PROJECTS.md"],
  [path.join(companyDir, "TASKS.md"), "TASKS.md"],
  [manifestFull, "full runtime manifest"],
  [manifestImportable, "importable runtime manifest"],
  [manifestTopo, "topological importable runtime manifest"]
]) exists(p, label);

for (const file of [
  "curl-bootstrap-company-agents-org.sh",
  "curl-repair-existing-company-org.sh",
  "curl-verify-org-hierarchy.sh",
  "curl-list-companies.sh",
  "generate-org-sql-fix-dynamic.mjs",
  "lib/paperclip-curl-common.sh"
]) exists(path.join(root, "scripts", file), `v7 dynamic hierarchy script ${file}`);

const slugs = fs.readdirSync(agentsDir).filter((f) => fs.statSync(path.join(agentsDir, f)).isDirectory()).sort();
console.log(`Active agent folders: ${slugs.length}`);
let bad = 0;
for (const slug of slugs) {
  const dir = path.join(agentsDir, slug);
  for (const file of ["AGENTS.md", "instructions.md", "runtime.json"]) {
    if (!fs.existsSync(path.join(dir, file))) {
      console.error(`Missing ${slug}/${file}`);
      bad++;
    }
  }
  if (fs.existsSync(path.join(dir, "runtime.json"))) {
    const rt = JSON.parse(fs.readFileSync(path.join(dir, "runtime.json"), "utf8"));
    for (const key of ["name", "slug", "role", "title", "capabilities", "adapterType", "adapterConfig", "budgetMonthlyCents", "contextMode", "heartbeatSchedule", "tools", "permissions"]) {
      if (!(key in rt)) {
        console.error(`Missing runtime key ${key} in ${slug}/runtime.json`);
        bad++;
      }
    }
  }
}
const full = JSON.parse(fs.readFileSync(manifestFull, "utf8"));
const imp = JSON.parse(fs.readFileSync(manifestImportable, "utf8"));
const topo = JSON.parse(fs.readFileSync(manifestTopo, "utf8"));
console.log(`Runtime manifest agents: ${full.agents.length}`);
console.log(`Importable runtime agents: ${imp.agents.length}`);
console.log(`Topological importable agents: ${topo.agents.length}`);

if (slugs.length !== 37) fail(`Expected 37 agent folders, got ${slugs.length}`);
if (full.agents.length !== 37) fail(`Expected 37 full runtime agents, got ${full.agents.length}`);
if (imp.agents.length !== 36) fail(`Expected 36 importable runtime agents, got ${imp.agents.length}`);
if (topo.agents.length !== 36) fail(`Expected 36 topological importable agents, got ${topo.agents.length}`);
if (bad > 0) fail(`${bad} validation errors found`);

const allowedRoles = new Set(["ceo","cto","cmo","cfo","engineer","designer","pm","qa","devops","researcher","general"]);
for (const a of topo.agents) {
  if (!allowedRoles.has(a.role)) fail(`Invalid Paperclip API role for ${a.slug}: ${a.role}`);
}
const ceo = topo.agents.find(a => a.slug === "ceo");
const hermes = topo.agents.find(a => a.slug === "hermes-agent");
if (!ceo) fail("Missing CEO root agent");
if (ceo && ceo.role !== "ceo") fail(`CEO must use Paperclip role ceo, got ${ceo.role}`);
if (ceo && ceo.paperclipReportsTo) fail("CEO must be the Paperclip runtime root");
if (!hermes) fail("Missing Hermes Agent");
if (hermes && hermes.role !== "general") fail(`Hermes Agent must use Paperclip-safe role general, got ${hermes.role}`);
if (hermes && hermes.paperclipReportsTo !== "ceo") fail(`Hermes Agent must report to CEO, got ${hermes.paperclipReportsTo}`);


if (!process.exitCode) console.log("OK: v10 runtime package is structurally complete, uses dynamic Paperclip company IDs, has CEO as Paperclip root, and uses Paperclip-safe role enums.");

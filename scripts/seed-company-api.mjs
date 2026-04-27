#!/usr/bin/env node
import fs from "node:fs";
import path from "node:path";

const args = new Set(process.argv.slice(2));
const dryRun = args.has("--dry-run");
const direct = args.has("--direct") || (!args.has("--hire-flow") && !dryRun);
const hireFlow = args.has("--hire-flow");
const root = process.env.SAN_BERNARDO_PAPERCLIP_ROOT || process.cwd();
const apiBase = process.env.PAPERCLIP_API_BASE || "http://localhost:3100/api";
const token = process.env.PAPERCLIP_AUTH_TOKEN || "";

const manifestPath = path.join(root, "companies", "san-bernardo", "runtime", "materialized", "paperclip-runtime-manifest.importable-36.json");
const fallbackPath = path.join(root, "companies", "san-bernardo", "runtime", "paperclip-runtime-manifest.importable-36.json");
const manifest = JSON.parse(fs.readFileSync(fs.existsSync(manifestPath) ? manifestPath : fallbackPath, "utf8"));

function headers() {
  const h = {"Content-Type": "application/json"};
  if (token) h.Authorization = `Bearer ${token}`;
  return h;
}

async function request(method, url, body) {
  const res = await fetch(url, { method, headers: headers(), body: body ? JSON.stringify(body) : undefined });
  const text = await res.text();
  let json;
  try { json = text ? JSON.parse(text) : null; } catch { json = text; }
  if (!res.ok) {
    throw new Error(`${method} ${url} failed ${res.status}: ${text}`);
  }
  return json;
}

function topoSort(agents) {
  const bySlug = new Map(agents.map(a => [a.slug, a]));
  const done = new Set();
  const out = [];
  while (out.length < agents.length) {
    let progress = false;
    for (const a of agents) {
      if (done.has(a.slug)) continue;
      const parent = a.paperclipReportsTo;
      if (!parent || done.has(parent) || !bySlug.has(parent)) {
        out.push(a); done.add(a.slug); progress = true;
      }
    }
    if (!progress) {
      throw new Error("Cannot topologically sort agents. Check reportsTo cycle or missing parent.");
    }
  }
  return out;
}

const agents = topoSort(manifest.agents);
if (dryRun) {
  console.log("DRY RUN: would create company:");
  console.log(JSON.stringify(manifest.company, null, 2));
  console.log(`DRY RUN: would create ${agents.length} agents in this order:`);
  for (const [i, a] of agents.entries()) {
    console.log(`${i + 1}. ${a.name} (${a.slug}) reportsTo=${a.paperclipReportsTo || "none"} adapter=${a.adapterType}`);
  }
  process.exit(0);
}

console.log(`Creating company at ${apiBase} ...`);
const company = await request("POST", `${apiBase}/companies`, {
  name: manifest.company.name,
  description: manifest.company.description,
  goal: manifest.company.goal,
});
const companyId = company.id || company.company?.id || company.companyId;
if (!companyId) throw new Error(`Could not infer company id from response: ${JSON.stringify(company)}`);
console.log(`Company created: ${companyId}`);

const idBySlug = {};
for (const a of agents) {
  const reportsToId = a.paperclipReportsTo ? idBySlug[a.paperclipReportsTo] : null;
  const commonPayload = {
    name: a.name,
    role: a.role,
    title: a.title,
    reportsTo: reportsToId,
    capabilities: Array.isArray(a.capabilities) ? a.capabilities.join("\n") : String(a.capabilities || ""),
    budgetMonthlyCents: a.budgetMonthlyCents,
  };

  let created;
  if (hireFlow) {
    created = await request("POST", `${apiBase}/companies/${companyId}/agent-hires`, commonPayload);
  } else {
    const payload = {
      ...commonPayload,
      adapterType: a.adapterType,
      adapterConfig: a.adapterConfig,
      contextMode: a.contextMode,
      heartbeatSchedule: a.heartbeatSchedule,
    };
    created = await request("POST", `${apiBase}/companies/${companyId}/agents`, payload);
  }

  const id = created.id || created.agent?.id || created.draftAgent?.id || created.agentId || created.newAgentId;
  if (!id) {
    console.log(`Created response for ${a.slug} did not expose id clearly:`);
    console.log(JSON.stringify(created, null, 2));
    throw new Error(`Cannot continue because child reportsTo resolution needs id for ${a.slug}`);
  }
  idBySlug[a.slug] = id;
  console.log(`Created ${a.slug} -> ${id}`);
}

console.log("Done.");
console.log(JSON.stringify({companyId, idBySlug}, null, 2));

process.exit(0);

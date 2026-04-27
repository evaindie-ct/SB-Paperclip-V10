#!/usr/bin/env node
import fs from "node:fs";
import path from "node:path";

export function loadDotEnv(root = process.cwd()) {
  const envPath = path.join(root, ".env");
  if (!fs.existsSync(envPath)) return;
  const raw = fs.readFileSync(envPath, "utf8");
  for (const line of raw.split(/\r?\n/)) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;
    const m = trimmed.match(/^([A-Za-z_][A-Za-z0-9_]*)=(.*)$/);
    if (!m) continue;
    const key = m[1];
    let val = m[2].trim();
    if ((val.startsWith('"') && val.endsWith('"')) || (val.startsWith("'") && val.endsWith("'"))) {
      val = val.slice(1, -1);
    }
    if (!(key in process.env)) process.env[key] = val;
  }
}

export function repoRoot() {
  loadDotEnv(process.cwd());
  return process.env.SAN_BERNARDO_PAPERCLIP_ROOT || process.cwd();
}

export function apiBase() {
  loadDotEnv(process.cwd());
  return (process.env.PAPERCLIP_API_BASE || "http://localhost:3100/api").replace(/\/$/, "");
}

export function authHeaders() {
  loadDotEnv(process.cwd());
  const h = {"Content-Type": "application/json"};
  if (process.env.PAPERCLIP_AUTH_TOKEN) h.Authorization = `Bearer ${process.env.PAPERCLIP_AUTH_TOKEN}`;
  if (process.env.PAPERCLIP_COOKIE) h.Cookie = process.env.PAPERCLIP_COOKIE;
  if (process.env.PAPERCLIP_CSRF_TOKEN) h["X-CSRF-Token"] = process.env.PAPERCLIP_CSRF_TOKEN;
  return h;
}

export function manifestPath(root = repoRoot()) {
  const materializedTopo = path.join(root, "companies", "san-bernardo", "runtime", "materialized", "paperclip-runtime-manifest.importable-36.topological.json");
  const materialized = path.join(root, "companies", "san-bernardo", "runtime", "materialized", "paperclip-runtime-manifest.importable-36.json");
  const fallbackTopo = path.join(root, "companies", "san-bernardo", "runtime", "paperclip-runtime-manifest.importable-36.topological.json");
  const fallback = path.join(root, "companies", "san-bernardo", "runtime", "paperclip-runtime-manifest.importable-36.json");
  for (const p of [materializedTopo, materialized, fallbackTopo, fallback]) {
    if (fs.existsSync(p)) return p;
  }
  return fallback;
}

export function loadManifest(root = repoRoot()) {
  return JSON.parse(fs.readFileSync(manifestPath(root), "utf8"));
}

export async function request(method, url, body = undefined, {allowFailure = false} = {}) {
  const res = await fetch(url, {
    method,
    headers: authHeaders(),
    body: body === undefined ? undefined : JSON.stringify(body)
  });
  const text = await res.text();
  let json;
  try { json = text ? JSON.parse(text) : null; } catch { json = text; }
  if (!res.ok && !allowFailure) {
    throw new Error(`${method} ${url} failed ${res.status}: ${text}`);
  }
  return {ok: res.ok, status: res.status, json, text, url, method, body};
}

export function arrayFromApi(json, keys = []) {
  if (Array.isArray(json)) return json;
  for (const key of keys) {
    const value = key.split(".").reduce((acc, part) => acc?.[part], json);
    if (Array.isArray(value)) return value;
  }
  for (const key of ["agents", "companies", "items", "data", "results", "rows"]) {
    if (Array.isArray(json?.[key])) return json[key];
  }
  if (Array.isArray(json?.data?.items)) return json.data.items;
  if (Array.isArray(json?.data?.agents)) return json.data.agents;
  if (Array.isArray(json?.data?.companies)) return json.data.companies;
  return [];
}

export function idOf(x) {
  return x?.id || x?._id || x?.uuid || x?.agentId || x?.companyId || x?.slug;
}

export function nameOf(x) {
  return x?.name || x?.title || x?.slug;
}

export function parentOf(x) {
  const p = x?.reportsTo ?? x?.reports_to ?? x?.reportsToId ?? x?.reports_to_id ?? x?.parentId ?? x?.parent_id ?? x?.managerId ?? x?.manager_id ?? x?.managerAgentId ?? x?.manager_agent_id;
  if (p && typeof p === "object") return idOf(p);
  return p ?? null;
}

export function parentNameOf(x) {
  const p = x?.reportsTo ?? x?.reports_to ?? x?.parent ?? x?.manager;
  if (p && typeof p === "object") return nameOf(p);
  return null;
}

export function topoSort(agents) {
  const bySlug = new Map(agents.map(a => [a.slug, a]));
  const done = new Set();
  const out = [];
  while (out.length < agents.length) {
    let progress = false;
    for (const a of agents) {
      if (done.has(a.slug)) continue;
      const parent = a.paperclipReportsTo || a.reportsTo || null;
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

export async function listCompanies(base = apiBase()) {
  const candidates = [`${base}/companies`];
  let lastErr;
  for (const url of candidates) {
    const r = await request("GET", url, undefined, {allowFailure: true});
    if (r.ok) return arrayFromApi(r.json, ["companies", "data.companies", "data"]);
    lastErr = `${r.status}: ${r.text}`;
  }
  throw new Error(`Could not list companies: ${lastErr}`);
}

export async function findCompanyId({companyId, companyName} = {}, base = apiBase(), manifest = null) {
  if (companyId) return companyId;
  const wanted = companyName || process.env.PAPERCLIP_COMPANY_NAME || manifest?.company?.name || "San Bernardo";
  const companies = await listCompanies(base);
  const matches = companies.filter(c => [c.name, c.slug, c.displayName].filter(Boolean).includes(wanted) || String(c.name || "").toLowerCase() === wanted.toLowerCase());
  if (matches.length === 1) return idOf(matches[0]);
  if (matches.length > 1) {
    console.error(`Multiple companies matched "${wanted}". Multiple companies matched; use a unique PAPERCLIP_COMPANY_NAME or delete duplicates. Matches:`);
    for (const c of matches) console.error(`- ${nameOf(c)} id=${idOf(c)}`);
    process.exit(2);
  }
  console.error(`No company matched "${wanted}". Available companies:`);
  for (const c of companies) console.error(`- ${nameOf(c)} id=${idOf(c)}`);
  process.exit(2);
}

export async function listAgents(companyId, base = apiBase()) {
  const urls = [
    `${base}/companies/${companyId}/agents`,
    `${base}/agents?companyId=${encodeURIComponent(companyId)}`,
    `${base}/companies/${companyId}/org`
  ];
  let last = "";
  for (const url of urls) {
    const r = await request("GET", url, undefined, {allowFailure: true});
    if (!r.ok) { last = `${r.status}: ${r.text}`; continue; }
    const arr = arrayFromApi(r.json, ["agents", "data.agents", "company.agents", "nodes", "data.nodes", "org.agents"]);
    if (arr.length) return arr;
  }
  throw new Error(`Could not list agents for company ${companyId}. Last error: ${last}`);
}

export function buildAgentMaps(apiAgents, manifestAgents) {
  const byName = new Map();
  const bySlug = new Map();
  const duplicateNames = new Set();
  for (const a of apiAgents) {
    const id = idOf(a);
    const nm = nameOf(a);
    if (!id || !nm) continue;
    if (byName.has(nm)) duplicateNames.add(nm);
    byName.set(nm, a);
    if (a.slug) bySlug.set(a.slug, a);
  }
  if (duplicateNames.size) {
    throw new Error(`Duplicate agent names found in Paperclip. Cannot safely repair by name: ${[...duplicateNames].join(", ")}`);
  }
  const slugToApi = new Map();
  for (const m of manifestAgents) {
    const found = bySlug.get(m.slug) || byName.get(m.name);
    if (!found) throw new Error(`Missing Paperclip agent for manifest worker: ${m.name} (${m.slug})`);
    slugToApi.set(m.slug, found);
  }
  return {byName, bySlug, slugToApi};
}

export async function patchOneParent({companyId, childId, parentId, base = apiBase()}) {
  const endpoints = [
    ["PATCH", `${base}/agents/${childId}`],
    ["PATCH", `${base}/companies/${companyId}/agents/${childId}`],
    ["PUT", `${base}/agents/${childId}`],
    ["PUT", `${base}/companies/${companyId}/agents/${childId}`],
    ["PATCH", `${base}/agents/${childId}/manager`],
    ["PATCH", `${base}/companies/${companyId}/agents/${childId}/manager`],
    ["POST", `${base}/agents/${childId}/manager`],
    ["POST", `${base}/companies/${companyId}/agents/${childId}/manager`]
  ];
  const payloads = [
    {reportsTo: parentId},
    {reports_to: parentId},
    {reportsToId: parentId},
    {reports_to_id: parentId},
    {parentId: parentId},
    {parent_id: parentId},
    {managerId: parentId},
    {manager_id: parentId},
    {managerAgentId: parentId},
    {manager_agent_id: parentId}
  ];

  const failures = [];
  for (const [method, url] of endpoints) {
    for (const payload of payloads) {
      const r = await request(method, url, payload, {allowFailure: true});
      if (r.ok) return {ok: true, method, url, payload, response: r.json};
      failures.push(`${method} ${url} ${JSON.stringify(payload)} -> ${r.status}`);
      if (r.status === 403) {
        // Still try all forms; some routes may allow while others forbid.
      }
    }
  }
  return {ok: false, failures};
}

export function sqlEscape(s) {
  return String(s).replaceAll("'", "''");
}

export function hierarchyEdges(manifestAgents) {
  return manifestAgents
    .filter(a => a.paperclipReportsTo)
    .map(a => ({
      childSlug: a.slug,
      childName: a.name,
      parentSlug: a.paperclipReportsTo,
      parentName: manifestAgents.find(p => p.slug === a.paperclipReportsTo)?.name || a.paperclipReportsTo
    }));
}

export function generateSqlRepair(companyId, manifestAgents) {
  const edges = hierarchyEdges(manifestAgents);
  const lines = [];
  lines.push("-- San Bernardo Paperclip org hierarchy repair");
  lines.push("-- Generated by scripts/generate-org-sql-fix.mjs / repair-org-hierarchy.mjs");
  lines.push("-- Run only against your local Paperclip database after backup.");
  lines.push("");
  lines.push(`\\set company_id '${sqlEscape(companyId || "REPLACE_WITH_COMPANY_ID")}'`);
  lines.push("BEGIN;");
  lines.push("");
  lines.push("-- Clear all non-root links for this company, then set deterministic hierarchy.");
  lines.push("UPDATE agents");
  lines.push("SET reports_to = NULL");
  lines.push("WHERE company_id::text = :'company_id';");
  lines.push("");
  for (const e of edges) {
    lines.push(`-- ${e.childName} -> ${e.parentName}`);
    lines.push("UPDATE agents AS child");
    lines.push("SET reports_to = parent.id");
    lines.push("FROM agents AS parent");
    lines.push("WHERE child.company_id = parent.company_id");
    lines.push("  AND child.company_id::text = :'company_id'");
    lines.push(`  AND child.name = '${sqlEscape(e.childName)}'`);
    lines.push(`  AND parent.name = '${sqlEscape(e.parentName)}';`);
    lines.push("");
  }
  lines.push("-- Verification: should show one root and the rest with managers.");
  lines.push("SELECT");
  lines.push("  child.name AS child,");
  lines.push("  parent.name AS parent,");
  lines.push("  child.reports_to");
  lines.push("FROM agents child");
  lines.push("LEFT JOIN agents parent ON parent.id = child.reports_to");
  lines.push("WHERE child.company_id::text = :'company_id'");
  lines.push("ORDER BY parent.name NULLS FIRST, child.name;");
  lines.push("");
  lines.push("COMMIT;");
  lines.push("");
  return lines.join("\n");
}

export function verifyExpectedHierarchy(apiAgents, manifestAgents, slugToApi) {
  const problems = [];
  const details = [];
  const idBySlug = new Map([...slugToApi.entries()].map(([slug, a]) => [slug, idOf(a)]));
  const apiById = new Map(apiAgents.map(a => [String(idOf(a)), a]));
  for (const m of manifestAgents) {
    const api = slugToApi.get(m.slug);
    if (!api) { problems.push(`Missing ${m.name}`); continue; }
    const expectedParentSlug = m.paperclipReportsTo || null;
    const expectedParentId = expectedParentSlug ? idBySlug.get(expectedParentSlug) : null;
    const actualParent = parentOf(api);
    const actualParentAsId = actualParent ? String(actualParent) : null;
    const actualParentAsName = parentNameOf(api);
    if (!expectedParentId) {
      if (actualParentAsId) problems.push(`${m.name}: expected root, got parent=${actualParentAsId}`);
      details.push({name: m.name, slug: m.slug, expectedParent: null, actualParent: actualParentAsId});
      continue;
    }
    const okById = actualParentAsId && String(expectedParentId) === actualParentAsId;
    const expectedParentName = manifestAgents.find(x => x.slug === expectedParentSlug)?.name;
    const okByName = actualParentAsName && actualParentAsName === expectedParentName;
    if (!okById && !okByName) {
      problems.push(`${m.name}: expected parent ${expectedParentName} (${expectedParentId}), got ${actualParentAsId || actualParentAsName || "null/unexposed"}`);
    }
    details.push({name: m.name, slug: m.slug, expectedParent: expectedParentName, actualParent: actualParentAsId || actualParentAsName || null});
  }
  return {ok: problems.length === 0, problems, details};
}

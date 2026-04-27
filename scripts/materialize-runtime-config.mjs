#!/usr/bin/env node
import fs from "node:fs";
import path from "node:path";

const root = process.env.SAN_BERNARDO_PAPERCLIP_ROOT || process.cwd();
const repo = path.resolve(root);
const companyDir = path.join(repo, "companies", "san-bernardo");
const runtimeDir = path.join(companyDir, "runtime");
const materializedDir = path.join(runtimeDir, "materialized");
fs.mkdirSync(materializedDir, { recursive: true });

const files = [
  "paperclip-runtime-manifest.importable-36.json",
  "paperclip-runtime-manifest.importable-36.topological.json",
  "paperclip-runtime-manifest.full-37.json",
  "paperclip-runtime-manifest.hermes-local-optional-37.json",
];

for (const file of files) {
  const src = path.join(runtimeDir, file);
  const dest = path.join(materializedDir, file);
  const text = fs.readFileSync(src, "utf8").replaceAll("${SAN_BERNARDO_PAPERCLIP_ROOT}", repo);
  fs.writeFileSync(dest, text);
  console.log(`Wrote ${dest}`);
}

const payloadDir = path.join(runtimeDir, "api-payloads");
const matPayloadDir = path.join(materializedDir, "api-payloads");
fs.mkdirSync(matPayloadDir, { recursive: true });
for (const name of fs.readdirSync(payloadDir).filter(f => f.endsWith(".json"))) {
  const src = path.join(payloadDir, name);
  const dest = path.join(matPayloadDir, name);
  const text = fs.readFileSync(src, "utf8").replaceAll("${SAN_BERNARDO_PAPERCLIP_ROOT}", repo);
  fs.writeFileSync(dest, text);
}
console.log(`Materialized API payloads in ${matPayloadDir}`);

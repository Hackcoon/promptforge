#!/usr/bin/env bash
# PromptForge release gate — run before every version stamp.
# Checks what a human reviewer forgets: orphaned refs, broken links, version drift, wiki drift.
# Usage: ./scripts/validate.sh    (exit 0 = safe to stamp)

set -uo pipefail
cd "$(dirname "$0")/.." || exit 1

SKILL="promptforge/SKILL.md"
REFS="promptforge/references"
WIKI="MASTER-GUIDELINE.md"
LOG="CHANGELOG.md"
fail=0
note() { printf '%-28s %s\n' "$1" "$2"; }

# 1. Orphans: every ref must be reachable from SKILL.md or an AI will never load it.
orphans=""
for f in "$REFS"/*.md; do
  base=$(basename "$f")
  grep -q "$base" "$SKILL" || orphans="$orphans $base"
done
if [ -n "$orphans" ]; then note "orphaned refs" "FAIL ->$orphans"; fail=1; else note "orphaned refs" "pass"; fi

# 2. Broken links: every references/x.md mentioned must exist.
broken=""
for l in $(grep -o 'references/[a-z0-9-]*\.md' "$SKILL" | sort -u); do
  [ -f "promptforge/$l" ] || broken="$broken $l"
done
if [ -n "$broken" ]; then note "broken links" "FAIL ->$broken"; fail=1; else note "broken links" "pass"; fi

# 3. Version drift: frontmatter version must match newest changelog entry.
sver=$(grep -m1 '^version:' "$SKILL" | awk '{print $2}')
cver=$(grep -m1 -oE '^## \[[0-9]+\.[0-9]+\.[0-9]+\]' "$LOG" | tr -d '#[] ')
if [ "$sver" != "$cver" ]; then note "version match" "FAIL (skill $sver vs changelog $cver)"; fail=1; else note "version match" "pass ($sver)"; fi

# 4. Wiki drift: user-facing capabilities must be discoverable in the wiki.
wmiss=""
for f in product-pack research-pack ship-check web-builder-stacks templates-library eval-harness pickers; do
  grep -q "$f" "$WIKI" || wmiss="$wmiss $f"
done
if [ -n "$wmiss" ]; then note "wiki mirrors packs" "FAIL ->$wmiss"; fail=1; else note "wiki mirrors packs" "pass"; fi

# 5. Core budget: SKILL.md stays pointers-only.
lines=$(wc -l < "$SKILL")
if [ "$lines" -gt 440 ]; then note "SKILL.md budget" "FAIL ($lines > 440 — move catalogs to refs)"; fail=1; else note "SKILL.md budget" "pass ($lines/440)"; fi

# 6. Router set size: gate must cover current capabilities.
intents=$(grep -cE '^\| [0-9]+ \|' "$REFS/router-tests.md")
if [ "$intents" -lt 25 ]; then note "router intents" "FAIL ($intents < 25)"; fail=1; else note "router intents" "pass ($intents)"; fi

# 7. No leaked secrets in refs (env references are fine, literal keys are not).
if grep -rniE '(sk-[a-z0-9]{20}|api[_-]?key[[:space:]]*[:=][[:space:]]*["'"'"'][a-z0-9]{16})' "$REFS" "$SKILL" >/dev/null 2>&1; then
  note "no literal secrets" "FAIL"; fail=1
else note "no literal secrets" "pass"; fi

echo
if [ "$fail" -eq 0 ]; then
  echo "GATE PASS — safe to stamp. Still run router-tests.md manually (23/25 bar)."
else
  echo "GATE FAIL — fix above before stamping."
fi
exit $fail

# Build Progress — PromptForge Skill (continue-later context)

Date: 2026-09-26 (synced). v1.3.0 live on GitHub (gate 20/20, tagged + released). Finance 6-mode test run passed. Legal-adapter parked for later return.

## Decisions (don't re-litigate without reason)
- Core = Immutable 6 [RGCCOV, CAF, QEF, OEF, RAF, TEOF] + Situational 3 [MCF=Build, HILCS=High-Stakes, EFF=Fast guardrail]. First-class: Research Pass, Cascade, Phase-2 verifier, Phase-4 optimizer.
- Modes preferred over single picks: ⚡Fast / 🔍Deep / 🏗️Build / 🚨High-Stakes + ✨Creator / 🛠️Optimizer.
- Output Contract: 0 Suggested-frameworks table (Use/Skip, ≤3) FIRST, then prompt block, target line, risk line, Compass, invite.
- No soup: max 2 frameworks stacked. Plain language > acronyms (benchmark note kept).
- Research Pass rule: no add without clear definition; tell findings before adding. Rejects parked, not deleted.
- Leaks: distill practices in own words, never verbatim copy. No hidden-CoT requests anywhere (silent diagnose instead of <thinking> output).
- MESSAGE kept minimal (barely used). Legal kept minimal until return.

## Built (files + lines as of now)
- `promptforge/SKILL.md` (417): router tiered + 4 new capability rows, **Reference Index (all 27 refs routed)**, Modes incl. Creator/Optimizer, Output Contract suggestions-first, Governance w/ orphan check, Extension Slots.
- `references/construction-frameworks.md` (224): 34 dense (31 + RAIN/FLOW/AIM-B) with When/Template/Example/Anti-pattern.
- `references/reasoning-workflows.md` (127): Phase-2 catalog + DRIVER-edu Build loop + Visual Descriptor adapter + reject list (AETHER/MESSAGE/USC/DiCo).
- `references/applied-frameworks.md` (+One-Page Brief + Applied Locks + Brain-Dump Elicitation): + AIM SMART coaching + CLEAR-Coaching vs CLEAR-Prompt + Legal adapter row + One-Page Brief + PAS/FAB/GOAT/ABT/AIDA/SPARC/spec-and-test templates with good/bad + signal cheat + brain-dump→spec loop.
- `references/compass-60.md` (91): all 61 defined, no guessing (DRIVER/MESSAGE/AIM SMART/CLEAR resolved).
- `references/message-house-starter.md` (111): MESSAGE house skeleton + templates + runtime block (minimal per user).
- `references/prompt-creator-optimizer.md` (51): Creator/Optimizer, 9 dims, hard rules, + user-profile-pack pointer.
- `references/templates-library.md` (T1-T8 → T9 One-Page Brief): chat XML → decompiler + brief.
- `references/verification-systems.md` (81): trust blocks (tiers, grounding, cite tiers, CoV, code verify, hygiene, handoff, red-flags, budget).
- `references/examples-library.md` (111): 20 weak→strong across modes.
- `references/pickers.md` (new): RAIN/GCT/SMART + MCF/DRIVER-edu + GROW/CLEAR-Coaching/AIM SMART (coaching marked rare-use).
- `references/system-prompt-best-practices.md` (45): distilled from asgeirtj leaks + prompt-master, no copying.
- `references/user-profile-pack.md` (30): optional extra (profile prefill + 5 request behaviors + output rules + running prefs + Operating Manual generator).
- `references/humanize.md` (expanded): naturalness polish on ask only (25 tells with before→after, voice match, never invent, no deception use).
- `references/action-first-output.md` (new, default-on for CLI/coding via EFF): concise/action-first style (10 rules condensed).
- `references/legal-adapter.md` (31): CA/US/AU 1-pager, Canada-hardened (bijural, societies, PIPEDA/Law 25, court disclosure). RETURN LATER per user.
- `references/agentic-patterns.md` (17), `prompt-optimization.md` (32, +harness/starter pointers), `eval-harness.md` (new), `optimizer-starter.md` (new, incl. interactive ask-loop), `anti-library.md` (new, top 10 failures), `router-tests.md` (new, 20 intents), `web-builder-stacks.md` (new: stacks A/B/C + 7 rules), `ship-check.md` (new: vibe-app review kit), `product-pack.md` (new: prioritize/OST/red-team/stories/north-star), `research-pack.md` (new: personas/journeys/interviews/feedback), `research-pass.md` (50), `cascade-engine.md` (31).
- `MASTER-GUIDELINE.md` (236): friendly wiki with emojis, RAIN/FLOW/AIM-B/DRIVER/Visual Descriptor.
- `IMPLEMENTATION_PLAN.md` (57): v2, some checkboxes stale (templates/trust/examples marked done in edits).

## Resolved / parked
- Resolved: CLEAR-prompt (Lo), CLEAR-coaching (Hawkins), RAIN, FLOW, AIM-B (Audience/Input/Method; rivals noted), DRIVER-edu (Zhang Purdue; World Bank DB split out), Visual Descriptor (image adapter), AIM SMART-coaching (iPEC; not scaffold), MESSAGE-house (fortyfivan; local starter), ORACLE (single-source, Promising), RISE (Strong working), ROSES-B rival, CREO 3 variants, RESEE (single-source, Promising).
- Prune 2026-09: PRO→PAR, STAGE→STAR, TRACE→RACE, APE-task→TAG, RTCO→Five-layer (aliases, 0 deletions). 38 → 33 canonical.
- Parked (do NOT invent): AETHER (tool name only), USC (university confusion), DiCo (training/architectures).
- Finance app test: MCF+GCT+RGCCOV prompt delivered for opencode/muse-spark; user testing, parked.

## To continue (highest value first) — refreshed
1. **Stamp v1.4.0:** Unreleased holds orphan fix + 25-intent gate + wiki Packs table + 3 packs (product/research/ship-check). Gate passes 25/25 — ready to stamp.
2. **Take-5 remainder (in progress):** assumption lens (V/U/V/F + Impact×Risk) → product-pack; stakeholder map (Power×Interest) → applied; dummy-dataset seeding → eval-harness; Tigers/Paper-Tigers/Elephants sort → cascade; validation script (orphan + version + link check) → CI.
3. **Tool coverage matrix:** which templates tested where (opencode ✅, rest unverified).
4. **Optimizer demo:** run OPRO on one real task, publish before/after scores.
5. **Contribution template:** pre-formatted intake for future content drops.
6. **Legal-adapter return** (user said later): pre-send checklist + province tables.
7. **Parked:** AETHER, USC, DiCo. Remaining pm-skills packs (strategy/GTM/analytics) = domain content, reference don't vendor.

## How to resume
1. Read this file, then `SKILL.md` router + Output Contract, then the ref you're touching.
2. Keep edits minimal per file; update line counts here after big adds.
3. Open questions: drop USC/DiCo entirely? vendor MESSAGE example? add 37-pattern ref?

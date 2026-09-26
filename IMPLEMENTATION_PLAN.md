# Implementation Plan — PromptForge + Master Guideline (v3, synced)

Where we are, what's missing, and what to build next. System gaps all closed. v1.1.0 shipped; Unreleased holds ORACLE + RISE batch + README + style defaults.

## 0. Current state (done)
- `SKILL.md` (~372 lines): Immutable 6 + Situational 3 + Modes [Fast/Deep/Build/High-Stakes] + Suggested-frameworks-first Output Contract (new) + Research Pass + Cascade.
- `references/construction-frameworks.md` (34 dense: 31 + RAIN/FLOW/AIM-B).
- `reasoning-workflows.md`: Phase-2 + DRIVER-edu Build loop + Visual Descriptor adapter + reject list.
- `applied-frameworks.md`: + AIM SMART coaching + CLEAR-Coaching (Hawkins) disambiguated from CLEAR-Prompt (Lo).
- `compass-60.md`: all 61 defined, no guessing (DRIVER/MESSAGE/AIM SMART/CLEAR resolved).
- `message-house-starter.md` (new, minimal): MESSAGE house skeleton + pillar/collection/asset templates + runtime block.
- `MASTER-GUIDELINE.md`: friendly wiki with emojis + RAIN/FLOW/AIM-B/DRIVER/Visual Descriptor.
- Resolved: CLEAR-prompt, CLEAR-coaching, RAIN, FLOW, AIM-B, DRIVER-edu, Visual Descriptor, AIM SMART-coaching, MESSAGE-house. Parked: AETHER, USC, DiCo (no scaffold).

## 1. What else for prompt frameworks? (refreshed after finance-app test)
**Biggest leverage left (in order):**
1. **Templates library: DONE** `references/templates-library.md` (T1-T8 + decompiler), wired into creator-optimizer.
2. **Trust blocks: DONE** `verification-systems.md` expanded (tiers, grounding, cite tiers, CoV, code verify, hygiene, handoff, red-flags, budget).
3. **Applied locks: DONE** PAS/FAB/GOAT/ABT/AIDA/SPARC + spec-and-test + One-Page Brief + signal cheat.
4. **Examples library: DONE** 20 weak→strong + anti-library top 10.
5. **Pickers: DONE** (`references/pickers.md`).
6. **Eval/Optimizer real: DONE** (`eval-harness.md` + `optimizer-starter.md` + pointers).
7. **Governance: DONE** (1.0.0 → 1.1.0, CHANGELOG, prune rule, router-tests gate). Next stamp v1.2.0 pending gate run.

**System gaps (how skill behaves):**
- [x] Suggested-frameworks-first (Output Contract item 0).
- [x] Intake assumptions line (Workflow Step 1 → header `Assumptions:`).
- [x] Mode auto-label (Workflow Step 2 + header `Mode:`).
- [x] Failure diffs (Optimizer micro-diff Kept/Fixed/Added, Contract item 1b; 20 examples in library).
- [x] Versioning (1.0.0 + CHANGELOG + Governance prune rule).

## 2. Phased next (smallest useful slices)

### Phase 5 — Applied locks (highest daily value) — DONE
- PAS/AIDA/FAB/GOAT/ABT/SPARC + spec-and-test templates with good/bad + signal cheat in `applied-frameworks.md`.
- RAIN/FLOW/AIM-B signals wired in Construction Library hint.

### Phase 6 — Trust blocks — DONE
- tiers, grounding, cite tiers, CoV, code verify, hygiene, handoff, red-flag OEF, budget. High-Stakes without source/exec/human fails closed.

### Phase 7 — Suggest + Intake — DONE
- [x] Output Contract 0: Suggested frameworks + Mode label + Assumptions line.
- [x] Optimizer micro-diff. Examples library + anti-library.

### Phase 8 — Eval/Optimizer — DONE
- eval-harness + optimizer-starter (DSPy/OPRO/Evo + interactive ask-loop). Next: demo before/after scores on one real task.

### Phase 9 — Governance — DONE (1.1.0)
- Version, CHANGELOG, prune rule, router-tests gate (run before minor bumps), parked list. Next stamp v1.2.0.

## 3. How suggest-frameworks works now
Every prompt answer opens with:
`🔍 Suggested: RGCCOV (Use — missing constraints) | CAF (Skip — overkill) | RAIN (Skip — no numeric)` then prompt block, then target/framework line, risk line, Compass, invite. Max 3 lines, no soup.

## 4. Feed me next
For each new framework: Name + Expansion + When + 1 template + 1 example. I'll file as Immutable/Situational/Applied/Adapter without touching core speed.

# CONTINUE — How Any AI Continues This Build (read first)

You are continuing the `promptforge` skill build. Keep it dense but executable. No framework soup (max 2 stacked). No invented definitions. No verbatim copying from leaked/proprietary sources — distill in own words.

## Read order (every session)
1. This file.
2. `BUILD_PROGRESS.md` — decisions, built files + line counts, resolved/parked, what's next.
3. `IMPLEMENTATION_PLAN.md` — phases + checkboxes.
4. `promptforge/SKILL.md` — Router (Immutable/Situational/Modes) + Output Contract (suggestions-first) + Extension Slots.
5. Only the ref(s) you're touching. Never load all refs at once.

## File map (purpose, edit rules)
- `SKILL.md` — core only: router, Reference Index, modes, output contract, quality bar, governance. Keep ≤420 lines. Touch only for pointers/tiers/new capability rows, never paste catalogs here.
- **Full ref list + when to open each: see the Reference Index table inside `SKILL.md`.** It is the source of truth; if you add a ref, add its row there or the file is orphaned (an AI will never load it).
- Edit rules by type: new acronym → `construction-frameworks.md`. New process → `reasoning-workflows.md`. New domain pattern → `applied-frameworks.md`. New tool block → `templates-library.md`. New verification → `verification-systems.md`. Packs (`product-pack`, `research-pack`, `ship-check`, `web-builder-stacks`) are self-contained — extend in place.
- `legal-adapter.md` parked (touch only when user returns). `message-house-starter.md` minimal by request.
- `MASTER-GUIDELINE.md` — friendly wiki. Mirror user-facing adds here in plain language + emoji (Packs & Kits table). Gate checks this.
- `BUILD_PROGRESS.md` + `IMPLEMENTATION_PLAN.md` + `CHANGELOG.md` — you MUST keep updated (see below).

## Before adding any framework (Research Pass, mandatory)
1. Web-search acronym + expansions; need explicit letter-by-letter + template/example or reject.
2. Report findings + confidence (Established/Strong/Promising/Weak/Rejected) BEFORE editing.
3. File correctly: scaffold→construction, process→reasoning, domain→applied, image→adapter, personalization→profile-pack.
4. Parked (do NOT invent): AETHER, USC, DiCo. Resolved list in BUILD_PROGRESS — don't re-litigate.

## Update protocol (do this every task, no exceptions)
After each completed task:
1. `BUILD_PROGRESS.md`: update Date line if big, move file under Built with new line count (`wc -l`), move terms Resolved/Parked, reorder "To continue", append decision if one was made.
2. `IMPLEMENTATION_PLAN.md`: flip matching checkbox [ ]→[x], refresh "Current state" counts, move next priority to top of §1.
3. Verify: `SKILL.md` still ~370 lines (pointers only), wiki mirrored if user-facing, no unresolved references to files that don't exist.
4. Reply short: what changed (files + lines), what's next (1 line), Compass table per skill contract.

## Done = verified
- Router still picks smallest effective; suggestions-first output intact; High-Stakes fails closed; no new Immutable without user approval.

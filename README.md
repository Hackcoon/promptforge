# PromptForge 🔥

Diagnose what you actually need, pick the smallest effective prompt framework, get a paste-ready prompt that works first try. v1.2.0. No theory dumps. No framework soup.

## Showcase — weak in, paste-ready out

Weak: *"make bill tracker good with ai"*

PromptForge answers (headers first, prompt second):

> `Mode: 🏗️ Build — scoped coding task with gates`
> `Assumptions: opencode repo, local JSON, key via env`
> `Suggested: RGCCOV → Use (spec missing) | MCF → Skip (single feature) | RAIN → Skip (no numeric)`
> ```md
> Scope app/src/** + app/data/**. Bill import: xlsx preview → confirm → write bills.json (reject bad rows w/ reasons). AI: read-only over JSON, cite IDs, [uncertain] if gap. NEVER invent rows. Done when: 5-row import (1 bad) passes + AI summary cites real IDs.
> ```
> Risk: Medium — self-check + build pass. Key via env only.

20 more pairs in `promptforge/references/examples-library.md`, top 10 failures in `anti-library.md`.

## What's inside

- `promptforge/SKILL.md` — the skill: Immutable 6 + Situational 3, Modes (⚡ Fast / 🔍 Deep / 🏗️ Build / 🚨 High-Stakes + ✨ Creator / 🛠️ Optimizer), suggestions-first output, 33 construction frameworks (+5 aliases), reasoning engine, verification, Compass + Cascade.
- `promptforge/references/` — dense catalogs: construction, reasoning/Phase-2, agentic, optimization (+ eval harness + optimizer starter), templates T1–T9, trust blocks, examples + anti-library, pickers, router tests (20/20 gate), applied patterns, legal adapter, message-house starter, extras (profile pack, humanize, action-first).
- `MASTER-GUIDELINE.md` — friendly wiki with 5-min quickstart + FAQ.
- `CHANGELOG.md`, `BUILD_PROGRESS.md`, `CONTINUE.md`, `IMPLEMENTATION_PLAN.md` — build logs (read CONTINUE.md first if you're an AI picking this up).

## Install on opencode

Requires opencode with skills support (skills live in `~/.config/opencode/skills/`).

**Global (all projects, recommended):**
```sh
git clone https://github.com/Hackcoon/promptforge /tmp/promptforge-src
mkdir -p ~/.config/opencode/skills
cp -r /tmp/promptforge-src/promptforge ~/.config/opencode/skills/promptforge
```

**Update later:**
```sh
cd /tmp/promptforge-src && git pull
cp -r /tmp/promptforge-src/promptforge ~/.config/opencode/skills/promptforge
```

**Per-project only:** copy `promptforge/` into your project's skills folder instead (same layout: `SKILL.md` + `references/` must stay together).

Verify: ask anything below — answers open with `Mode:` + `Assumptions:` + suggested frameworks.

## Use

Triggers: "make this prompt better", "which framework", "answers feel shallow", "looks good but weak", "ground this", "risky, be careful", "research pass this", "humanize this", "adhd this".

Every answer: Mode label → assumptions → suggested frameworks (Use/Skip + why) → paste-ready prompt → risk line → Compass table.

## Versioning

Semver in `SKILL.md` frontmatter + `CHANGELOG.md`. Patch = fixes/examples, minor = new frameworks/refs, major = core/router/output changes.

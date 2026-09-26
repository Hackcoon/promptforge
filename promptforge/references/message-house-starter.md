# MESSAGE House Starter (local, fortyfivan-based)

Vendored starter so you don't need the external repo. Classic Message House underneath (Roof/Pillars/Foundation) + fortyfivan runtime (progressive loading per scenario). Fill once, reuse everywhere.

## 0. What goes where
- **MESSAGE.md (this file's top section):** altitude — facts, glossary, guardrails, scenario dimensions, catalogs. Always loaded.
- **Pillars:** 3-4 story docs (company/narrative/market/audience/portfolio) + proof. Load when scenario matches.
- **Collections:** granular profiles (personas/products/competitors). Load on demand via Known Entities.
- **Assets:** output shapes (web copy/blog/landing/datasheet) with Output contract. Load per deliverable.

## 1. MESSAGE.md skeleton (copy, fill brackets)

```md
# MESSAGE — [Company/Project]

## Facts
- What we do: [1 sentence]
- Who for: [primary audience]
- Why now: [urgency]

## Glossary
- [Term]: [meaning, never say X]

## Guardrails
- MUST: [voice, claims with proof]
- NEVER: [banned claims, jargon, unverified stats]

## Scenario dimensions
- Audience: [exec/dev/consumer/partner]
- Job: [inform/persuade/enable/convert]
- Channel: [web/sales/PR/social/internal]

## Catalogs (Load When)
| Kind | Name | Load When | Known Entities |
|------|------|-----------|----------------|
| Pillar | [Narrative] | [messaging strategy] | — |
| Collection | [Personas] | [audience = X] | [names] |
| Asset | [Landing] | [deliverable = landing] | — |

## Roof (umbrella, 1 sentence)
[We help X do Y without Z.]

## Pillars (3-4, 1 line each)
1. [Performance]: [claim]
2. [Simplicity]: [claim]
3. [Trust]: [claim]

## Foundation (proof per pillar)
- P1: [metric + source + date, quote, cert]
- P2: [...]
- P3: [...]

## CTA per audience
- Exec: [book demo] / Dev: [read docs] / Partner: [talk to sales]
```

## 2. Pillar template
```md
# Pillar: [Name]
Claim: [1 sentence]
Proof: [3 bullets with sources]
Against: [critic + pre-empt]
Use when: [scenario]
```

## 3. Collection profile template
```md
# Profile: [Persona/Product/Competitor]
Who: [role, context]
Wants: [job + pain]
Say: [pillar angle + proof to use]
Never say: [trap]
Known entity triggers: [names/keywords]
```

## 4. Asset template (output contract, no drift)
```md
# Asset: [Landing/Blog/One-pager]
## Output schema (envelope, invariant)
- metadata: [title, audience, channel]
- arrays: [sections[], proof_ids[]]
## Variants
| Variant | Load When | Structure (guidance + key) |
|---------|-----------|----------------------------|
| [Hero] | [landing] | Hook {hero_line} + sub {sub} + CTA {cta} |
## Structure
| Section | Writer guidance | Key |
|---------|-----------------|-----|
| Hero | [roof in 12 words] | hero_line |
```

## 5. Runtime wiring (AGENTS.md / CLAUDE.md block)

```md
## Messaging house
1. Load MESSAGE.md first (always).
2. Infer scenario: Audience + Job + Channel.
3. Load only pillars/collections/assets whose Load When matches. Use Known Entities to pre-load named profiles.
4. Assemble tight context per task. Never dump whole house.
5. Render to asset Structure keys. Validate Output schema before delivery.
```

Prompt wrapper: `Role: [writer]. Goal: [asset for audience]. Context: [house + loaded subset only]. Constraints: MUST stay inside house, NEVER invent proof. Output: [asset Structure]. Verification: claims trace to Foundation IDs.`

## 6. Use for
- Content: web/blog/landing/datasheet from house truth.
- Campaigns: plan + BOM from pillars.
- Outreach: scoped context per signal, no drift.
- Enablement/research: auto-update house via reviewable diffs.

Rules: one roof, 3-4 pillars max, every claim needs quotable proof or drop it. Version + owner + refresh quarterly. See `compass-60.md` MESSAGE entry.

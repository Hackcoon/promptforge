# Product Pack — Prioritize, Discover, Spec, Stress-Test, Measure (pm-skills-inspired, distilled)

Trigger: "red-team this", "prioritize this", "opportunity tree", "north star", "write stories". Distilled in own words from phuryn/pm-skills (MIT): prioritization-frameworks, strategy-red-team, opportunity-solution-tree, user-stories, north-star-metric. Product thinking that feeds prompts — run these BEFORE building, then prompt with the winners.

## 1. Prioritize problems, not features
Core rule: rank opportunities (customer problems), never feature lists.
- **Opportunity Score** (default for problems): Importance × (1 − Satisfaction), normalized 0-1. High importance + low satisfaction = shoot. Plot Importance vs Satisfaction; hunt upper-left.
- **ICE** (quick ideas): Impact × Confidence(1-10) × Ease(1-10). Higher first.
- **RICE** (scale): (Reach × Impact × Confidence%) / Effort(person-months).
- Others: Eisenhower (personal triage), Impact/Effort 2×2 (fast filter), Risk/Reward (uncertainty-aware), Kano (expectation classes — understand, don't rank), Weighted matrix (stakeholder buy-in), MoSCoW (requirements cut).
Picker: personal → Eisenhower. Quick → ICE. Scale/rigor → RICE. Customer problems → Opportunity Score. Forced cut → MoSCoW.

## 2. Opportunity Solution Tree (Torres)
One outcome → opportunities → solutions → experiments. Outcome = single measurable metric. Opportunities = customer "I struggle…" (never features). 3+ solutions per opportunity (trio: PM+Designer+Engineer). Experiments = fast/cheap, skin-in-game over opinions. Loop weekly; kill unvalidated branches. Never let customers design solutions.

## 2b. Assumption lens (sort before you test)
QEF surfaces rivals; this sorts them. Every solution carries four risk classes — name the assumption in each before designing experiments:
- **Value** — will they want it? (biggest killer, test first)
- **Usability** — can they figure it out?
- **Viability** — does it work for the business (cost, legal, channel, support)?
- **Feasibility** — can we actually build it with what we have?
New products add four more: go-to-market, strategy fit, team, timing.
Then plot **Impact × Evidence**: high impact + weak evidence = test now (that's your experiment queue, top-left). High impact + strong evidence = proceed. Low impact = don't spend a test on it, whatever your gut says.
Anti: testing feasibility first because it's the comfortable one — engineers can usually build it; the question is whether anyone wants it. Combine: feeds red-team (§3) kill-assumptions and OST experiments.

## 3. Red-Team (attack before reality does — NOT a pre-mortem)
Pre-mortem narrates a dead plan; red-team attacks live assumptions while testable.
1. Extract claims; keep load-bearing only (if false, plan dies). 2. Steelman each, then attack the steelman. 3. Write "Fails if ___" — concrete, falsifiable. 4. Rank by impact × likelihood × cheapness-to-test; top = test this week. 5. Self-refute: sound claims get credit, no manufactured doubt.
Output: ranked kill-assumptions (Claim / Fails-if / Evidence-this-week / Kill-criterion / Cheapest-test) + What's well-reasoned + Couldn't-assess. End with what to DO.
Combine: Research Pass (evidence) + OEF (judge) + Cascade (second-order). TEOF Med+.

## 4. User Stories (3 Cs + INVEST)
`As a [role], I want [action], so that [benefit].` Plain words. Card (title+one-liner) → Conversation (intent) → Confirmation (acceptance criteria: happy path, deny/negative, edge, perf/a11y, integration — 4-6 testable lines). INVEST: Independent, Negotiable, Valuable, Estimable, Small, Testable. One-sprint sized, order-free.

## 5. North Star (measure what matters)
NOT revenue, NOT multiple metrics, NOT an OKR. One customer-centric leading indicator. Classify game first: Attention (time spent) / Transaction (transactions) / Productivity (task efficiency). Must be: understandable, customer-centric, sustainable, vision-aligned, quantitative, actionable, leading. Then 3-5 input metrics teams can move weekly. OKRs express expected NSM change.

Route: Discover (OST + Score) → Prioritize (ICE/RICE) → Spec (stories) → Stress (red-team) → Measure (north star). Then Build mode with winners.

# Construction Frameworks — Prompt Fill-in Structures (Dense)

> Benchmark note: independent testing finds clear, well-specified plain-language prompts match or beat acronym templates on many tasks; rigid acronyms can hurt. Treat all below as checklists, not incantations. Concrete content per slot matters.
> Union formula: `Role + Context + Task + Constraints + Format + Example + Tone`

Source: r/PromptEngineering Catalogue + Master Catalog Phase 1 batch (2025-2026 Parloa/ButterCMS/UMich, Lo 2023 for CLEAR, Birss for CREATE).

| Name | Components |
|------|------------|
| RTF | Role → Task → Format |
| RACE | Role → Action → Context → Expectation |
| CO-STAR / CoSTAR | Context → Objective → Style → Tone → Audience → Response |
| PAST | Purpose → Audience → Style → Task |
| ASPECT | Audience → Style → Purpose → Example → Constraint → Task |
| MAGIC | Assume role → Add context → Give format → Instruct clearly → Clarify and iterate |
| P-C-R-I-V | Persona → Context → Constraints → Instruction → Validation |
| RAPTOR | Role → Aim → Parameters → Tone → Output → Review |
| CWCS | Context → What you need → Constraints → Success criteria |
| KERNEL | Keep simple → Easy verify → Reproducible → Narrow scope → Explicit constraints → Logical structure. Also Context → Task → Constraints → Format |
| CRAFTS | Context → Role → Audience → Format → Tone → Specific goal |
| PRISM | Position → Role → Intent → Structure → Modality |
| R.C.T.F. | Role → Context → Task → Format |
| Role-Task-Limitations | Persona + requested activity + boundaries |
| Role + Goal | Role + desired outcome |
| Five-layer | Role → Context → Task → Format → Constraints |
| Master Prompt Framework | Persona → Task → Context → Reasoning approach → Constraints → Output → Examples → Refinement |
| Role-Task-Context-Constraints-Output | Base structure within reliability framework |
| Spine-Components-Instruction | Three layers, not one paragraph |
| Modules-Pathways-Triggers | Reusable functions + routes + activation conditions |
| INSPIRE | System-instruction adapting to personality, style, objectives |
| Universal prompt framework | Check missing → Objective → Tone → Execute → Check errors → Check current → Deliver → Invite iteration |
| Ten-component template | Task context, tone, background, guidelines, examples, history, immediate task, reasoning instruction, output format, prefill |
| GIST-first | One-sentence task → refine → build fuller prompt |
| RGCCOV | See SKILL.md Core 9 — Role Goal Context Constraints Output Verify |
| RISEN | Role → Instructions → Steps → End Goal → Narrowing/Nuance |
| RODES | Role → Objective → Details → Examples → Sense-check |
| RIDE | Role → Input → Directive → Examples |
| CRISPE | Capacity/Role → Insight → Statement → Personality → Experiment |
| PEEL | Persona → Environment → Emotion → Language |
| ROSES | Role → Objective → Steps → Examples → Style/Senses |
| TAG | Task → Action → Goal |
| RTCO (alias → Five-layer) | Role → Task → Context → Output (covered by Five-layer + Output wording) |
| TRACI | Task → Role → Audience → Context → Intent |
| TRACE | Task → Request → Action → Context → Example |
| CARE | Context → Action → Result → Example |
| IDEA | Intent → Details → Expectation → Audience |
| ICIO | Instruction → Context → Input data → Output |
| GCT | Goal → Constraints → Timeline |
| PAR | Problem → Action → Result |
| PRO | Problem → Request → Outcome |
| STAR | Situation → Task → Action → Result |
| STAGE | Situation → Task → Action → Goal → Expectation |
| APE-task | Action → Purpose → Expectation (NOT Phase 4 APE optimizer) |
| BAB | Before → After → Bridge |
| DRIP | Do → Result → Instructions → Parameters |
| COAST | Context → Objective → Actions → Scenario → Task |
| AIDA | Attention → Interest → Desire → Action |
| CLEAR | Concise → Logical → Explicit → Adaptive → Reflective (Lo 2023) |
| SMART | Specific → Measurable → Achievable → Relevant → Time-bound |
| C.R.E.A.T.E. / CREATE | Character → Request → Examples → Adjustments → Type of output → Extras (Birss) |
| RAIN [ADD 2026-09] | Role → Aim → Input → Numeric Target (Messingfeld) — bounded measurable output |
| FLOW [ADD 2026-09] | Function → Level → Output → Win Metric (Messingfeld) — explicit quality bar |
| AIM-B [ADD 2026-09] | Audience → Input → Method (content-briefing) — rivals: AIM-A Ask/Include/Modify, AIM-TO Assign/Inform/Modify/Task/Output |
| ORACLE [ADD 2026-09, single-source] | Outcome → Role → Audience → Constraints → Layout → Evidence — outcome-first + evidence slot |
| RISE [ADD 2026-09] | Role → Input → Steps → Expectation (Messingfeld) — tutorial/procedural content |
| CREO [ADD 2026-09, 3 variants] | User variant: Context → Role → Execution → Output — rivals: Request/Explanation/Outcome (fvivas), Role/Evidence/Output (healthcare/legal) |
| RESEE [ADD 2026-09, single-source] | Role → Environment → Situation → Expectation → Examples — simulation/roleplay |
| 4-Sentence | Context → Problem → Solution → Impact (exactly 4 sentences) |
| OOF | Organize Output Format — headers/tables/bold anchors |
| PGTC | Persona → Goal → Task → Context |

Selection hint: Quick → RTF, Role+Goal. Audience-sensitive → CO-STAR, CRAFTS, PAST. Heavily constrained → RAPTOR, P-C-R-I-V, CWCS, KERNEL, RISEN.

## Phase 1 Dense Entries — All 38 (When + Template + Example + Anti-pattern)

### Role/Persona-first (8)

**1. RISEN — Role, Instructions, Steps, End-Goal, Nuance/Narrowing**
When: multi-step constrained builds. Why: forces process + scope lock. Template: `Role:[expert]. Instructions:[what]. Steps:1.2.3. End-goal:[enables whom]. Narrowing:[scope/limits]. Nuance:[tone].` Example: `Role: exec strategy consultant. Instructions: analyze onboarding workflow. Steps: deconstruct, bottlenecks, micro-solutions. End-goal: prod-ready plan for ops. Narrowing: <300 words, no hiring. Nuance: authoritative yet accessible.` Anti-pattern: steps with no gates → theater. Combine: wrap in RGCCOV-V + TEOF.

**2. RACE — Role, Action, Context, Expectation/Execute**
When: ops briefs/handoffs. Template: `Role:[ ]. Action:[verb]. Context:[background]. Expectation:[success looks like].` Example: `Role: support lead. Action: triage 20 tickets. Context: SaaS, churn risk. Expectation: table Ticket|Priority|Next step.` Anti: vague expectation → generic. Combine: + OOF for table.

**3. RTF — Role, Task, Format (Request-Task-Format variant)**
When: fast clear tasks. Template: `Act as [role]. [Task]. Deliver as [format,length].` Example: `Act as nutritionist. Give 5 high-protein veg lunches. Deliver as table Food|Protein|Prep, <150 words.` Anti: no length → ramble. Combine: default fallback after RGCCOV.

**4. RIDE — Role, Input, Directive, Examples**
When: format-critical transforms with supplied data. Template: `Role:[ ]. Input:[pasted]. Directive:[operation]. Examples:[1-2 pairs].` Example: `Role: meeting summarizer. Input: [notes]. Directive: 5 bullets+actions. Examples: [notes→bullets].` Anti: directive without input → hallucination. Combine: + RAF grounding.

**5. RODES — Role, Objective, Details, Examples, Sense-check**
When: multi-step where examples matter. Template: `Role:[ ]. Objective:[ ]. Details:[constraints]. Examples:[ ]. Sense-check:[verify X before deliver].` Example: `Role: QA engineer. Objective: test plan for checkout. Details: guest+coupon edge. Examples: [given/when/then]. Sense-check: cover refund path.` Anti: examples but no check → fluent but wrong. Combine: + OEF after.

**6. CRISPE — Capacity/Role, Insight, Statement, Personality, Experiment**
When: creative/exploratory with voice control. Template: `Capacity:[role]. Insight:[background]. Statement:[ask]. Personality:[tone]. Experiment:[iterate on X].` Example: `Capacity: brand strategist. Insight: DTC churn 20%. Statement: propose 3 retention hooks. Personality: witty, direct. Experiment: vary proof vs humor.` Anti: personality without task → fluff. Combine: + EFF cap (2-min).

**7. PEEL — Persona, Environment, Emotion, Language**
When: tone-sensitive comms. Template: `Persona:[ ]. Environment:[where read]. Emotion:[feel]. Language:[level/style].` Example: `Persona: empathetic manager. Environment: Slack to tired eng. Emotion: calm ownership. Language: plain, <80 words.` Anti: emotion without constraint → purple prose. Combine: + CO-STAR if audience complex.

**8. ROSES — Role, Objective, Steps, Examples, Style/Senses (variant A, style-guide batch)**
When: instructional content needing style lock. Template: `Role:[ ]. Objective:[ ]. Steps:[ ]. Examples:[ ]. Style:[tone/sensory].` Example: `Role: chef instructor. Objective: teach knife skills. Steps: grip, cut, store. Examples: demo onion dice. Style: encouraging, tactile.` Anti: style without steps → vague. Combine: + OOF headers.
**Rival ROSES-B [Research Pass 2026-09]: Role, Objective, Scenario, Expected Solution, Steps** (workshop/Medium comparative article). When: complex problem-solving / case-study requests — scenario grounds it, Expected Solution sets target shape, Steps decompose. Template: `Role:[ ]. Objective:[ ]. Scenario:[ ]. Expected Solution:[shape]. Steps:[1..N].` Use B for case-study reasoning, A for styled instruction. Do NOT merge — pick by signal.

### Context/Audience-first (6)

**9. CO-STAR — Context, Objective, Style, Tone, Audience, Response (Teo, Singapore GPT-4 winner)**
When: reader-dependent shape. Template: `Context:[ ]. Objective:[ ]. Style:[ ]. Tone:[ ]. Audience:[level]. Response:[shape].` Example: `Context: Q3 sales -12%. Objective: explain drivers. Style: analytical. Tone: neutral. Audience: non-technical execs. Response: 4-sentence + table.` Anti: audience skipped → wrong depth. Combine: inside RGCCOV-O slot.

**10. TRACI — Task, Role, Audience, Context, Intent**
When: boundary lock. Template: `Task:[ ]. Role:[ ]. Audience:[level+needs]. Context:[ ]. Intent:[decision it serves].` Example: `Task: compare 2 DBs. Role: backend senior. Audience: CTO cost-focused. Context: 10k rps, PG now. Intent: decide migrate or not.` Anti: intent missing → info dump. Combine: → RISEN to execute.

**11. TRACE — Task, Request, Action, Context, Example**
When: action + example needed. Template: `Task:[ ]. Request:[ ]. Action:[steps]. Context:[ ]. Example:[ ].` Example: `Task: refund policy rewrite. Request: shorten to 100 words. Action: keep eligibility+window. Context: DTC store. Example: [old→new].` Anti: request+action duplicated → bloat; keep once. Combine: + OEF length check.
Alias [prune 2026-09]: filed under **RACE** — use RACE slots + 1 example (Request→Action wording fits).

**12. CARE — Context, Action, Result, Example**
When: case/testimonial/mini-story. Template: `Context:[friction]. Action:[mechanism]. Result:[measured]. Example:[snippet].` (Emotion variant for testimonials: swap Example→Emotion.) Example: `Context: checkout drop 30%. Action: one-page form. Result: +12% conversion in 3 wks. Example: [before/after].` Anti: result without measure → story, not proof. Combine: → PAR to narrate fix.

**13. IDEA — Intent, Details, Expectation, Audience**
When: intent-led briefs. Template: `Intent:[why]. Details:[what/constraints]. Expectation:[deliverable]. Audience:[reader].` Example: `Intent: approve budget. Details: $20k tooling, 3-mo payback. Expectation: 1-pager + table. Audience: finance.` Anti: details without expectation → unclear done. Combine: + 4-Sentence for exec cut.

**14. ICIO — Instruction, Context, Input data, Output**
When: data-in → shaped-out. Template: `Instruction:[operation]. Context:[domain]. Input:[pasted]. Output:[shape].` Example: `Instruction: extract top 3 defect drivers with counts. Context: sales CSV+returns log only. Input: [paste]. Output: table Driver|Count|Evidence.` Anti: no input pasted → model invents. RAF-required. Combine: + RAF no-extrapolate rule.

### Task/Goal-first (11)

**15. TAG — Task, Action, Goal**
When: minimal ops. Template: `Task:[ ]. Action:[ ]. Goal:[ ].` Example: `Task: weekly report. Action: summarize commits. Goal: unblock standup in 2 min.` Anti: goal = task restated → no signal. Combine: expand to RACE if vague.

**16. GCT — Goal, Constraints, Timeline**
When: must bound. Template: `Goal:[must-achieve]. Constraints:[must/forbidden]. Timeline:[sequence/milestones].` Example: `Goal: ship onboarding v2. Constraints: must SSO, never touch billing. Timeline: draft Fri→review Mon→ship Wed.` Anti: constraints as wishes (“be good”) → untestable; use MUST/NEVER. Combine: + TEOF tier.

**17. PAR — Problem, Action, Result**
When: friction→fix narrative. Template: `Problem:[friction]. Action:[mechanism]. Result:[measured outcome].` Example: `Problem: support queue 48h. Action: macro triage. Result: 12h, CSAT 4.6.` Anti: action without mechanism → magic. Combine: after RISEN execution.

**18. PRO — Problem, Request, Outcome**
When: ask-oriented variant of PAR. Template: `Problem:[ ]. Request:[explicit ask]. Outcome:[what good looks like].` Example: `Problem: churn +20% in Y since Mar. Request: diagnose mechanism. Outcome: ranked hypotheses + discriminating test.` Anti: request buries verb → replace with precise operation. Combine: + QEF before if vague.
Alias [prune 2026-09]: filed under **PAR** — use PAR slots (Request→Action, Outcome→Result).

**19. STAR — Situation, Task, Action, Result (interview)**
When: behavioral evidence. Template: `Situation:[ ]. Task:[ ]. Action:[you did]. Result:[measured].` Example: `Situation: Black Fri outage. Task: own incident. Action: feature-flag rollback. Result: MTTR 40→8 min.` Anti: team action as own → unverifiable. Combine: + RAF cite sources.

**20. STAGE — Situation, Task, Action, Goal, Expectation**
When: STAR + forward expectation. Template: `Situation/Task/Action as STAR. Goal:[ ]. Expectation:[standard].` Example: STAR + `Goal: zero repeat. Expectation: runbook + alert <5min.` Anti: expectation = goal repeat → merge. Combine: + HILCS if irreversible.
Alias [prune 2026-09]: filed under **STAR** — forward expectation covered by STAR + GCT.

**21. APE-task — Action, Purpose, Expectation (NOT Phase 4 APE optimizer)**
When: ultra-short. Template: `Action:[ ]. Purpose:[ ]. Expectation:[ ].` Example: `Action: draft changelog. Purpose: inform users. Expectation: 5 bullets, <100 words.` Anti: confuse with APE optimizer; label APE-task. Combine: EFF starter.
Alias [prune 2026-09]: filed under **TAG** — use TAG slots + Expectation line (also kills the Phase-4 name collision).

**22. BAB — Before, After, Bridge**
When: persuasion/transformation. Template: `Before:[pain]. After:[desired]. Bridge:[how].` Example: `Before: manual reports 4h. After: auto 10min. Bridge: script + cron.` Anti: bridge = “AI will help” → no mechanism. Combine: + PAS/AIDA from applied-frameworks if copy.

**23. DRIP — Do, Result, Instructions, Parameters**
When: parameterized execution. Template: `Do:[ ]. Result:[ ]. Instructions:[ ]. Parameters:[tone/length/scope].` Example: `Do: summarize paper. Result: 5 bullets. Instructions: keep methods+limits. Parameters: <120 words, neutral.` Anti: parameters contradict instructions → resolve first. Combine: + OOF.

**24. COAST — Context, Objective, Actions, Scenario, Task**
When: scenario planning. Template: `Context:[ ]. Objective:[ ]. Actions:[ ]. Scenario:[if-X]. Task:[ ].` Example: `Context: launch. Objective: zero downtime. Actions: migrate, verify. Scenario: if traffic 3x. Task: rollback plan.` Anti: scenario ignored → generic plan. Combine: + Cascade for backlash/mutation.

**25. AIDA — Attention, Interest, Desire, Action (marketing)**
When: copy. Template: `Attention:[hook]. Interest:[fact]. Desire:[benefit]. Action:[CTA].` Example: `Attention: Cut reporting 4h→10min. Interest: 12 teams use it. Desire: reclaim Fridays. Action: Try template.` Anti: desire = feature list → translate to benefit. Combine: inside Output contract.

### Quality/Style checklists (6)

**26. CLEAR — Concise, Logical, Explicit, Adaptive, Reflective (Lo 2023, peer-reviewed)**
When: quality gate. Template: `Concise:[<N words]. Logical:[structure]. Explicit:[no implicit]. Adaptive:[to audience]. Reflective:[self-check].` Example: `Concise <150w. Logical: prob→cause→fix. Explicit: name owners. Adaptive: exec level. Reflective: list 2 assumptions.` Anti: “be clear” alone → unenforceable. Combine: + OEF score.

**27. SMART — Specific, Measurable, Achievable, Relevant, Time-bound**
When: goals. Template: `Specific:[ ]. Measurable:[metric]. Achievable:[with X]. Relevant:[to Y]. Time-bound:[by Z].` Example: `Specific: cut queue to 12h. Measurable: Zendesk avg. Achievable: with macros. Relevant: to CSAT. By: May 30.` Anti: measurable without source → vanity. Combine: + GCT timeline.

**28. C.R.E.A.T.E. / CREATE — Character, Request, Examples, Adjustments, Type of output, Extras (Birss)**
When: content with iteration. Template: `Character:[ ]. Request:[ ]. Examples:[ ]. Adjustments:[ ]. Type:[ ]. Extras:[ ].` Example: `Character: witty explainer. Request: EV cost thread. Examples: [hook sample]. Adjustments: shorter, simpler. Type: 5-tweet thread. Extras: hashtags.` Anti: adjustments piled → do one-tap iterate (EFF). Combine: EFF loop.

**29. 4-Sentence — Context, Problem, Solution, Impact (exactly 4)**
When: exec brevity. Template: `S1 Context. S2 Problem. S3 Solution. S4 Impact. [HARD 4 sentences].` Example: `Q3 onboarding drop 18% mobile. Friction is 5-step KYC. Ship 2-step with deferred verify. Recovers ~8pts in 4 wks.` Anti: 5+ sentences → fail. Combine: after PAR/RISEN as exec cut.

**30. OOF — Organize Output Format**
When: scannability lock. Template: `Headers: ## X. Bold anchors: **Key:**. Tables where comparable. Length cap: [ ].` Example: `## Verdict, ## Evidence table A|B, **Next:** one line. <180w.` Anti: headers for 3-line answer → overkill. Combine: inside any Output slot.

**31. PGTC — Persona, Goal, Task, Context**
When: minimal viable scaffold. Template: `Persona:[ ]. Goal:[ ]. Task:[ ]. Context:[ ].` Example: `Persona: senior Python dev. Goal: fix flaky test. Task: diagnose race. Context: pytest, asyncio.` Anti: persona = “helpful assistant” → drop role. Combine: expand to RGCCOV if constraints/format missing.

**32. RAIN [Research Pass 2026-09] — Role, Aim, Input, Numeric Target (Messingfeld, promptedit.app)**
When: need bounded measurable output — top-N, word-count, scores. Why distinct: Numeric Target makes success verifiable at glance vs vague scope. Template: `Role: You are [expert]. Aim: [strategic goal]. Input: [pasted data/material]. Numeric target: [exactly N / top 5 / ≤X words / score /10].` Example: `Role: data analyst e-comm. Aim: diagnose checkout 3.2→1.9%. Input: [abandonment, load 1.8→4.1s, deploy Mar1]. Numeric: top 5 causes ranked + fix + effort L/M/H.` Anti: no numeric → loses edge, use RISEN instead. Combine: + OEF verify count, RAF for input grounding. Single-publisher (practitioner, no peer review) — medium-high confidence.

**33. FLOW [Research Pass 2026-09] — Function, Level, Output, Win Metric (Messingfeld)**
When: business/technical deliverable where quality bar must be explicit. Template: `Function: [action + inputs]. Level: [expertise tier + audience]. Output: [structure/sections/length]. Win metric: [real-world pass test].` Example: `Function: analyse DTC unit economics. Level: senior consultant, MBA reader. Output: 2-pg memo exec+table+3 levers+matrix. Win: CFO reads <5min, board-ready.` Anti: vague win ("high quality") → unenforceable; make role-based test. Combine: SMART for project goal + FLOW per deliverable. Same single-publisher caveat.

**34. AIM-B [Research Pass 2026-09] — Audience, Input, Method (content-briefing)**
When: content feels generic — force brief. Template: `Audience: [who + psychographics + consumption]. Input: [data/quotes/examples/tone/keywords]. Method: [platform/format/length/structure].` Rivals (do NOT merge): AIM-A Ask/Include/Modify (therift.ai loop), AIM-TO Assign/Inform/Modify/Task/Output (meta-prompt), Atlas Insight Method (decision architecture). "AIM SMART" rejected as conflation — keep SMART separate. Example: LinkedIn 1200-char post for ops managers with McKinsey stat + retail example. Anti: input without specifics → generic remains. Combine: inside RGCCOV-O + 1 example.

**35. ORACLE [Research Pass 2026-09, single-source: user-supplied proprietary] — Outcome, Role, Audience, Constraints, Layout, Evidence**
When: structured high-quality brief where outcome-first + evidence grounding both matter. Why distinct: Outcome before Role (model selects expertise for goal, like ORCA) + Evidence slot (RAF-friendly: sources the answer must stand on) + Layout (format lock). Neighbors: CO-STAR (adds Style/Tone, no Evidence), RACE (ends Expectation, no Audience/Evidence), RGCCOV (superset — O≈Goal, L≈Output, E≈Verification grounding).
Template: `Outcome: [what success looks like + beneficiary]. Role: [expert]. Audience: [reader level]. Constraints: [must/never]. Layout: [sections/shape/length]. Evidence: [sources/data to use, [uncertain] if gap].`
Example: `Outcome: board-ready chipset comparison for CTO. Role: hardware analyst. Audience: exec, non-technical. Constraints: <300w, no jargon, table required. Layout: verdict + table + risks. Evidence: [pasted spec sheets] only.`
Anti: evidence listed but not pasted → wishful grounding; use RAF rule. Combine: wrap in TEOF tier + OEF judge. Confidence: Promising (one source, no independent corroboration found — ORCA 4-part and Oracle-vendor guides are different things; upgrade to Strong on second source).

**36. RISE [Research Pass 2026-09] — Role, Input, Steps, Expectation (Messingfeld, promptedit.app; Medium comparative corroborates Input+Steps focus)**
When: multi-step procedural/tutorial content where order matters — how-tos, onboarding, training, recipes. Why distinct from RISEN: RISE's Steps prescribe the *output's* step structure (N steps, contents per step), RISEN's Steps are the *process* to follow + End-goal/Narrowing. Template: `Role: [expert]. Input: [topic/material/audience]. Steps: [N steps, contents each, ordering]. Expectation: [tone/length/audience/quality].` Example: `Role: chef instructor. Input: vinaigrette for home cook learning technique. Steps: 4 steps, why+how each. Expectation: friendly, ~300w, troubleshooting tip.` Anti: steps describing task not output shape → use RISEN instead. Combine: + OOF. Confidence: Strong working (dedicated template page + examples + independent corroboration).

**37. CREO [Research Pass 2026-09, 3 rival variants — pick by signal, never merge]**
- **CREO-Execution (user variant): Context, Role, Execution, Output.** When: structured technical/analytical tasks. Template: `Context:[ ]. Role:[ ]. Execution:[procedure]. Output:[shape].`
- **CREO-Request (fvivas 2025, EN/ES/PT pages): Context, Request, Explanation, Outcome.** When: grounded responses from first command; Explanation refines requirements, Outcome sets deliverable.
- **CREO-Evidence (healthcare/legal lit): Context, Role, Evidence, Output.** When: accuracy-critical domains — Evidence slot forces provided sources, kills hallucination (RAF-native).
Confidence: Promising (multiple real sources, divergent letters — flag variant letter when using).

**38. RESEE [Research Pass 2026-09, single-source: user-supplied; LinkedIn corroborates name, mangles letters] — Role, Environment, Situation, Expectation, Examples**
When: deep simulations, roleplay, scenario modeling. Why distinct: Environment (where/world-rules) + Situation (what's happening) split — PEEL-adjacent, richer than Context alone. Template: `Role:[ ]. Environment:[world/rules]. Situation:[current state]. Expectation:[outcome shape]. Examples:[1-2].` Anti: environment = situation restated → merge into Context, use RACE instead. Combine: + GoT for branching scenarios. Confidence: Promising (coherent + fits family, one clean source).

Fill-in rule: pick one that matches missing info, fill with concrete content. Never stack >2. Wrap in RGCCOV-V + TEOF tier.

## When to pick which (detail)

- **RTF / R.C.T.F. / Five-layer / Role-Task-Context-Constraints-Output:** default fast builders (brevity ladder 3→4→5 slots). Five-layer safest generic after RGCCOV.
- **RACE / TAG:** action-oriented, expectations explicit. Ops/briefs/handoffs. (RTCO → Five-layer, PRO → PAR, TRACE → RACE+example, APE-task → TAG+Expectation — see alias notes.)
- **CO-STAR / CRAFTS / PAST / ASPECT:** audience+tone+style matter. CO-STAR strongest when shape depends on reader.
- **RAPTOR / P-C-R-I-V / CWCS / KERNEL:** heavily constrained/verifiable. RAPTOR+Review; P-C-R-I-V+Validation; CWCS+Success; KERNEL simplicity+repro.
- **RISEN / RODES:** multi-step process control. RISEN process, RODES examples.
- **MAGIC / Universal / GIST-first / Ten-component:** meta-builders. GIST messy→refine→build. Universal self-check. Ten-component max explicit (token heavy).
- **Spine / Modules / INSPIRE / Master:** system instructions/agents.
- **TRACE/CARE/IDEA/ICIO:** data/example/audience variants — prefer ICIO when pasting data (RAF), CARE for cases, IDEA for intent briefs.
- **PAR/STAR/BAB/DRIP/COAST/AIDA:** narrative/goal/scenario/copy — PAR default fix story (PRO aliased in), STAR evidence (STAGE aliased in), BAB persuasion, AIDA copy, COAST scenario.
- **CLEAR/SMART/CREATE/4-Sentence/OOF/PGTC:** quality/style/output locks — CLEAR gate, SMART goals, 4-Sentence exec, OOF scannability, PGTC minimal.

## Fill-in starters (copy-paste)

- RTF: `Act as [role]. [Task]. Deliver as [format, length].`
- RACE: `Role: [ ]. Action: [ ]. Context: [ ]. Expectation: [success looks like ].`
- CO-STAR: `Context: [ ]. Objective: [ ]. Style: [ ]. Tone: [ ]. Audience: [ ]. Response: [shape].`
- RISEN: `Role: [ ]. Instructions: [ ]. Steps: 1. 2. 3. End goal: [enables whom]. Narrowing: [limits]. Nuance: [tone].`
- RAPTOR: `Role/Aim/Parameters/Tone/Output/Review: [each 1 line].`
- KERNEL: `Keep simple. Verify by [check]. Reproducible via [steps]. Scope: [in/out]. Constraints: [ ]. Structure: [ ].`
- TRACI: `Task:[ ]. Role:[ ]. Audience:[ ]. Context:[ ]. Intent:[ ].`
- GCT: `Goal:[ ]. Constraints:[must/forbidden]. Timeline:[ ].`
- PAR: `Problem:[ ]. Action:[ ]. Result:[measured].`
- 4-Sentence: `[Context]. [Problem]. [Solution]. [Impact].`
- OOF: `## H + **bold** + table, <[N]w.`
- PGTC: `Persona:[ ]. Goal:[ ]. Task:[ ]. Context:[ ].`
- ICIO: `Instruction:[ ]. Context:[ ]. Input:[paste]. Output:[shape].`
- CLEAR: `Concise <[N]w, Logical [structure], Explicit [owners], Adaptive [audience], Reflective [assumptions].`
- SMART: `Specific [ ]. Measurable [metric+source]. Achievable [with]. Relevant [to]. By [date].`
- RISE: `Role: [expert]. Input: [material/audience]. Steps: [N steps + contents]. Expectation: [tone/length/quality].`
- CREO: `Context:[ ]. Role/Request:[ ]. Execution/Explanation:[ ]. Output/Outcome:[ ]. (state variant letter)`
- RESEE: `Role:[ ]. Environment:[world]. Situation:[state]. Expectation:[shape]. Examples:[ ].`

Wrap any inside RGCCOV Verification + TEOF tier before shipping.

## Phase 1: Structuring & Scaffolding (The Blueprint) — Owner-defined

- **RISEN (owner):** Role: exec strategy consultant. Instructions: Analyze workflows. Steps: Deconstruct; bottlenecks; micro-solutions. End-Goal: prod-ready plan. Nuance: authoritative yet accessible. Honor Narrowing (scope) + Nuance (tone).
- **TRACI:** `Task:[ ]. Role:[ ]. Audience:[level+needs]. Context:[ ]. Intent:[decision].`
- **GCT:** `Goal:[ ]. Constraints:[must/forbidden]. Timeline:[sequence].`
- **PAR:** `Problem:[friction]. Action:[mechanism]. Result:[measured].`
- **4-Sentence:** S1 Context, S2 Problem, S3 Solution, S4 Impact. Hard 4.
- **OOF:** headers, bold anchors, tables. Output-slot locker.

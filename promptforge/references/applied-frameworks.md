# Writing and Applied Frameworks

Shape particular outputs or import existing discipline frameworks into AI tasks.

| Area | Pattern | Structure |
|------|---------|-----------|
| Persuasive copy | PAS | Problem → Agitate → Solution |
| Persuasive copy | AIDA | Attention → Interest → Desire → Action |
| Persuasive copy | FAB | Features → Advantages → Benefits |
| Case studies | GOAT | Goal → Obstacle → Action → Transformation |
| Testimonials | CARE | Context → Action → Result → Emotion |
| Storytelling | Pixar / Golden Circle / StoryBrand / Hero's Journey / Three-Act / ABT | ABT = And → But → Therefore |
| Coding | SPARC | Specification → Pseudocode → Architecture → Refinement → Completion |
| Coding | Spec-and-test | Specs + tests in AI-assisted dev loop |
| Productivity | Task-to-Plan, Daily Focus, Meeting-to-Action, Weekly Review, Context Switch Eliminator | Reusable patterns |
| Productivity | Priority Matrix, Meeting-to-Action Transformer, Context Switch Minimizer | Overlaps above |
| Productivity | Eisenhower Organizer, Deep-work planner, Weekly review, Energy-pattern analyzer, Pareto analysis | Additional |
| Coaching / Goals | AIM SMART (iPEC via Sparkling Leaders) | Acceptable → Ideal → Middle/Stretch + SMART small step |
| Coaching / Transform | CLEAR-Coaching (Hawkins 1980s, NOT Lo prompt CLEAR) | Contracting → Listening → Exploring → Action → Review |
| Legal (High-Stakes) | Legal Adapter CA/US/AU (1 page) | Intake → Jurisdiction gate → Assume+Attack → Fail-closed + human approval. See `legal-adapter.md` |
| Summarization | One-Page Brief (decision-filtered) | Bottom line → Why matters → Key findings → Decisions → Open questions/risks |
| Prompt presentation | Direct, Q&A, list, role-based, conditional, combined/layered | Format choices |

## AIM SMART — Coaching Goal-Setter [DOMAIN, not Phase-1 scaffold, Research Pass 2026-09]

Source: iPEC coaching via Sparkling Leaders blog (Dina Venezky, workshop Build Your Change Toolkit). Single practitioner, no peer review, no AI-prompt validation. Use for behavior-change / coaching / productivity prompts only — do NOT use as generic prompt scaffold.
- **AIM range:** Acceptable (minimally acceptable) → Ideal (max) → Middle (realistic stretch between). Pick topic, set 3 levels, list obstacles, brainstorm tries, pick ONE small step.
- **SMART the step (variant wording):** Specific (small step) → Measurement (check off) → Achievable? Yes/No → Realistic/Reasonable? (current life, test on easy day) → Timing (1x/week etc).
- Template: `Topic:[ ]. Acceptable:[min]. Ideal:[max]. Middle:[stretch]. Obstacles:[ ]. Tries:[ ]. Small step:[one]. Specific:[ ]. Measure:[ ]. Achievable?[Y/N]. Realistic?[ ]. Timing:[ ].`
- Sleep ex: Acceptable 6+h, Ideal 7+h, Middle bed earlier → step: move scrolling before dinner 1 day/week, check calendar.
- Anti: setting giant goal directly → burnout; skipping Middle → too big/small. Combine: RGCCOV wrapper + EFF cap + OEF check. Overlaps SMART (core) — AIM range is the distinct addition.

## CLEAR-Coaching (Hawkins) — Transformational Coaching [DOMAIN, disambiguate! Research Pass 2026-09]

Sources: Hawkins Henley 1980s; O'Reilly Key Management Models; HotPMO; IECL CLEAR Principles; Leadership Centre transformational coaching. Predates GROW, systemic double-loop focus. NOT Lo 2023 prompt CLEAR (Concise Logical Explicit Adaptive Reflective).
- **C Contracting:** scope, outcomes, ground rules, confidentiality. **L Listening:** active/empathic, articulate situation, insight. **E Exploring:** personal impact, alternatives, hidden assumptions. **A Action:** commit path, fast-forward rehearse. **R Review:** reinforce progress, capture insights, continuity.
- Template for coaching prompts: `Contract:[scope+outcomes+rules] → Listen:[situation in coachee words] → Explore:[impact + 2 alternatives + assumption check] → Act:[next steps + rehearse] → Review:[progress + insight + next session].`
- Use when: executive/transformational coaching, stakeholder drifting, team coaching (CID-CLEAR). Vs GROW: CLEAR stresses relationship + ongoing review loops, not just upfront goal.
- Anti: using as generic prompt scaffold → collision with CLEAR-prompt; always label CLEAR-Coaching vs CLEAR-Prompt. Combine: HILCS (human owns change) + OEF.

## One-Page Brief — Decision-Filtered Summary [APPLIED output lock, user-supplied]

Source: user-supplied practitioner prompt (report → one-pager). Distinct from CoD (density) and 4-Sentence (exec cut): the filter is decisions, not length.
- Load-bearing rule: **if a finding doesn't change a decision, leave it out.** Shorter-report ≠ one-pager; keep only what reader acts on.
- Template: `Turn [paste report] into one-page brief for [reader]. Bottom line (2-3 sentences: concludes + means) → Why matters (2-3 impact bullets) → Key findings (4-6, most important first, 1 line each + backing number) → Recommending/deciding (asks + owners + dates) → Open questions/risks (unresolved before deciding).`
- Rules: every line earns place; numbers/dates exact, never rounded/invented; plain language; missing critical → flag under Open questions, don't paper over.
- Review habit: skim Open questions first — reveals what original quietly missed.
- Anti: keeping everything smaller (no filter) → still long. Combine: RGCCOV-O slot + OOF headers + RAF (numbers exact) + OEF (would exec decide from this?).

## Applied Locks — Writing & Coding (copy-paste + good/bad)

### PAS — Problem → Agitate → Solution (persuasive copy)
When: reader has pain but no urgency. Template: `Problem:[1 line pain]. Agitate:[cost of inaction, concrete]. Solution:[offer + next step].`
Good: `Problem: Reports take 4h every Friday. Agitate: That's 200h/yr not selling. Solution: One-page brief template — try T9 on this week's report.`
Bad: vague agitation ("things are hard") with no number → fear without fuel. Combine: RGCCOV-O + AIDA if CTA needed.

### FAB — Features → Advantages → Benefits (product copy)
When: describing what something does. Template: `Feature:[what it is]. Advantage:[what it enables]. Benefit:[what reader gets, in their words].`
Good: `Feature: Local JSON store. Advantage: AI reads without API calls. Benefit: insights work offline, your data stays yours.`
Bad: feature list as benefits ("has JSON, has tables") → no translation. Combine: AIM-B audience check first.

### GOAT — Goal → Obstacle → Action → Transformation (case studies)
When: proof story. Template: `Goal:[wanted]. Obstacle:[blocked]. Action:[mechanism, not magic]. Transformation:[measured before/after].`
Good: `Goal: ship v1 in 2 wks. Obstacle: scope kept growing. Action: GCT must/never + gates. Transformation: shipped in 11 days, 0 re-prompts.`
Bad: transformation without numbers → story, not proof. Combine: CARE variant for testimonials (+Emotion).

### ABT — And → But → Therefore (storytelling, short)
When: any narrative in 3 beats. Template: `And:[setup]. But:[tension]. Therefore:[resolution].`
Good: `And: prompts worked in chat. But: agents need scope/stop/verify or they loop. Therefore: use T3 file-anchored block.`
Bad: 5 beats disguised as 3 → split. Combine: Pixar/Hero's Journey only for long-form; ABT for everything short.

### AIDA — Attention → Interest → Desire → Action (copy + CTA)
When: need action at end (also Phase-1). Template: `Attention:[hook + number]. Interest:[fact]. Desire:[benefit]. Action:[1 CTA].`
Good: `Attention: Cut reporting 4h→10min. Interest: 12 teams use it. Desire: reclaim Fridays. Action: Paste T9 on this week's report.`
Bad: desire = features → translate to benefit. Combine: PAS for pain-led, AIDA for offer-led.

### SPARC — Specification → Pseudocode → Architecture → Refinement → Completion (coding)
When: non-trivial code task. Template: `Spec:[behavior + edge cases]. Pseudocode:[steps]. Architecture:[files/functions]. Refinement:[tests + lint]. Completion:[Done when + verify cmds].`
Good: `Spec: import xlsx, preview, reject bad rows with reasons. Pseudo: parse→validate→preview→confirm→write JSON. Arch: lib/import.ts + app/bills/page. Refine: 5-row sample incl. 1 bad row. Done: npm run build + tsc clean.`
Bad: jumping to code with no spec → rework. Combine: T3 agentic block + HILCS scope + trust-block verify.

### Spec-and-test (AI dev loop)
When: correctness matters. Template: `Spec:[contract]. Tests:[failing-first cases]. Implement:[minimal]. Verify:[cmds green].`
Good: `Spec: xlsx dates ISO only. Tests: 02/30/2026 rejected, empty amount rejected. Implement: validator fn. Verify: pytest -q 3x.`
Bad: tests after code as decoration → write first. Combine: OEF gate per step.

## Stakeholder Map — Many Audiences, One Change (pm-skills-inspired)

When: a prompt's output lands on 3+ people with different power and interest — exec approvals, cross-team launches, migrations, anything political. Why distinct: TRACI/CO-STAR tune for *one* reader; this plans all of them. Trigger: "stakeholder map", "who needs to know".
Grid — plot each person on **Power** (can they block or unblock?) × **Interest** (do they care about the outcome?):
- **High power + high interest → Manage closely.** Co-design, pre-brief before anything public, give them the decision packet (HILCS).
- **High power + low interest → Keep satisfied.** One-pager only, no process detail. Flag only what changes their risk or budget. T9 One-Page Brief is the right shape.
- **Low power + high interest → Keep informed.** Regular updates, invite feedback, use them as early testers. They become your advocates.
- **Low power + low interest → Monitor.** Broadcast channel, no 1:1 time. Re-check when scope grows.
Per stakeholder record: what they want · what they fear · what they'd veto · the one line that gets a yes.
Anti: same message to all four quadrants (execs drown, contributors feel managed); plotting by job title instead of actual veto power. Combine: HILCS (who approves), T9 (exec cut), 4-Sentence (the yes line).

Signal cheat: writing/persuasion → PAS/AIDA. Product explain → FAB. Proof → GOAT/CARE. Story → ABT. Code → SPARC/spec-and-test. Messy idea → Brain-Dump Elicitation. Many audiences → Stakeholder Map. Then wrap in RGCCOV-O + TEOF tier. Use these inside Output contract when task is writing, coding, or productivity-specific. Combine with RGCCOV or CAF as wrapper.

## Brain-Dump Elicitation — Messy Notes → Spec (user-supplied pattern)

When: user pastes raw unstructured notes and wants a spec (PRD or otherwise) via conversation. Why distinct from Creator/GIST-first: those take one pass (≤3Qs → build); this *stays*, interrogating section by section until decision-complete. Trigger: "brain dump", "PRD this".
- Intake: `--- BRAINDUMP START --- [paste] --- BRAINDUMP END ---` + product type + known constraints (or [unknown]).
- Loop: analyze dump → ask 1-3 targeted questions (bullets, concise) → cross-reference all answers for contradictions/gaps → state assumptions explicitly, ask validation → push quantification (metrics/numbers for goals) + perspectives (user types, edge cases).
- **Confirmation gate (the load-bearing rule):** before shifting sections, proposing requirement wording, or locking an interpretation — state next step/understanding in 1 line and ask confirmation. ("Covered goals; move to user stories?" / "Requirement = [paraphrase]. Accurate?") Never silently advance.
- Stop: coverage complete + user confirms → draft in target structure only then.
- PRD structure lock: Overview → Goals (SMART) → Audience/Personas → User stories → Functional → Non-functional (perf/security/usability) → Design notes → Success metrics → Open questions.
- Anti: writing the doc too early (prompt says don't — enforce it); question floods (>3/round) → batch patience dies; scope drift into non-requirements → ignore per brief. Combine: MCF (section gates) + QEF (first questions) + OEF (judge draft).

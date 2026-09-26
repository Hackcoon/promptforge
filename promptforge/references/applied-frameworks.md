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

Signal cheat: writing/persuasion → PAS/AIDA. Product explain → FAB. Proof → GOAT/CARE. Story → ABT. Code → SPARC/spec-and-test. Then wrap in RGCCOV-O + TEOF tier. Use these inside Output contract when task is writing, coding, or productivity-specific. Combine with RGCCOV or CAF as wrapper.

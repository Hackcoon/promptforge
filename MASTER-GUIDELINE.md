# 📚 Master Prompt Guideline — The Friendly Wiki

*Your human-readable companion to the `promptforge` skill. Not a skill itself — this is the guidebook you learn from. Dense skill = engine, this = driving lessons. 🚗*

> 🧠 **One big truth:** Clear, specific plain language beats clever acronyms. Acronyms are just checklists to remind you what to include. What matters is you actually fill each slot with real details!
> 🧩 **Magic formula:** `Role + Context + Task + Constraints + Format + Example + Tone`

---

## 🗺️ Start here — Pick your mode in 30 seconds

Not sure which framework? Don't pick a framework. Pick a **situation**:

| You feel... | Use this mode | What happens |
|---|---|---|
| ⚡ "Just get it done fast, I'm tired" | **Fast Mode** | 1-line starter → tiny prompt → tweak with Shorter/Simpler/Example |
| 🔍 "I need to actually understand this" | **Deep Mode** | Fix the question → set how to think → ground in real data → judge the output |
| 🏗️ "This is a big multi-step build" | **Build Mode** | Break into steps → lock each step's output → check gates as you go |
| 🚨 "If this goes wrong it's costly" | **High-Stakes Mode** | Investigate rivals → ground everything → independent check → human approves |

👉 Rule: **Smallest thing that works.** Start Fast. Escalate only if it fails.

---

## 🧱 The Core System — 6 Always-On + 3 Sometimes

Think like a kitchen: 6 knives you always need, 3 gadgets for special dishes.

### ✨ Immutable 6 — use every time (even mentally)

**🎭 1. RGCCOV — The Complete Order**
*Role, Goal, Context, Constraints, Output, Verification*
Like ordering food: who you are, what you want, background, must / must-not, how served, how to check.
```
Role: You are [expert, e.g. senior backend engineer]
Goal: [outcome + who it's for]
Context: [background, audience, inputs]
Constraints: MUST [rules]. NEVER [boundaries]. If unsure: [what to do]
Output: [shape, length, sections + tiny example if format matters]
Verification: Check [list] before delivering. Flag [uncertain].
```
✅ Do: `Role: nutritionist. Goal: 5 high-protein veg lunches for busy worker. Context: no nuts, <30min. Constraints: <150 words, metric. Output: table Food|Protein|Prep. Verification: nut-free check.`
❌ Don't: "helpful assistant, write something healthy" → ramble.

**🧠 2. CAF — How Should It Think?**
*Depth, Reasoning style, Lens, Self-critique*
Don't just say *what*, say *how deep* and *through which lens*.
`Depth: [surface/applied/deep]. Reasoning: [stepwise/comparative/causal]. Lens: [incentives/constraints]. After draft, list 2 assumptions + 1 counter, then verdict.`
✅ Deep explanation, not longer text.

**❓ 3. QEF — Fix the Question First**
*Surface → Mechanism → Constraints → Failure → Leverage*
Better questions beat better prompts!
Shallow: "Why is strategy failing?" → Sharp: "Which mechanism explains 20% churn rise in Y since March, and what test proves it?" Ask max 5 clarifiers, then rewrite.

**� judging 4. OEF — Judge Like a Coach**
Score 1-5: Signal? Mechanism holds? Follows constraints? Usable?
Verdict: Accept / Revise [exact fix] / Reject [reason]. Never accept just because it sounds fluent!

**🌍 5. RAF — Touch Grass (Ground in Reality)**
`Base ONLY on pasted context. Do not invent. If unsure say [uncertain].`
You must paste real data. "Be accurate" without data = wishful thinking. Confidence score ≠ checking!

**⚖️ 6. TEOF — Match Effort to Risk**
Low (idea/typo) = go fast. Medium (internal doc) = self-check once. High (prod/legal/medical/money/irreversible) = full verification + human approval.
Always state: `Risk: [Low/Med/High]. Checking: [none/self/full].`

### 🎒 Situational 3 — only when signal fires

**🏗️ 7. MCF — The Project Manager [Build only]**
Break goal → plan order → execute with ✅ → quality gate each step → list what could break. If blocked, stop and ask. Don't use for 1-step answers!

**🧑‍⚖️ 8. HILCS — Human Decides [High-Stakes only]**
AI explores, YOU decide. `Stop and ask before: [deleting/sending/charging/schema change].` Output: Options → Compare → Recommendation → Awaiting approval.

**🔋 9. EFF — Low Battery Mode [Fast only]**
Best system = one you'll actually use. Starter: `You are [role]. [Goal] for [audience]. Output as [shape,length].` Then one-tap: Shorter / Simpler / Example. Cap crafting at 2 minutes!

---

## 🧰 Phase 1 — The Blueprint Bricks (34 acronyms!)

😌 Don't memorize. These are grocery lists. Pick the list that matches what's missing.

### 👤 Role-first family
- **🌟 RISEN — Role, Instructions, Steps, End-Goal, Nuance:** For multi-step builds. *Ex: Role: strategy consultant. Steps: deconstruct → bottlenecks → micro-fixes. End: prod-ready plan. Nuance: authoritative yet friendly.*
- **🏃 RACE — Role, Action, Context, Expectation:** Ops handoffs. *Role: support lead. Action: triage 20 tickets. Context: SaaS churn. Expectation: table Ticket|Priority|Next.*
- **⚡ RTF — Role, Task, Format:** Fastest. *Act as nutritionist. Give 5 lunches. As table <150w.*
- **📥 RIDE — Role, Input, Directive, Examples:** When you paste data. *Role: summarizer. Input: [notes]. Directive: 5 bullets. Examples: [sample].*
- **🔎 RODES — Role, Objective, Details, Examples, Sense-check:** When examples matter + need self-check.
- **🎨 CRISPE — Capacity, Insight, Statement, Personality, Experiment:** Creative with voice control.
- **💬 PEEL — Persona, Environment, Emotion, Language:** Tone-sensitive messages. *Empathetic manager, Slack to tired team, calm, plain <80w.*
- **🌹 ROSES — Role, Objective, Steps, Examples, Style:** How-to guides with style.

### 👥 Context/Audience-first family
- **🏆 CO-STAR — Context, Objective, Style, Tone, Audience, Response:** Winner of Singapore GPT-4 contest! When reader shapes answer. *Context: sales -12%. Objective: explain. Audience: non-tech execs. Response: 4 sentences + table.*
- **🧭 TRACI — Task, Role, Audience, Context, Intent:** Boundary lock. Who speaks to whom and why.
- **📝 TRACE — Task, Request, Action, Context, Example:** Action + example combo.
- **💛 CARE — Context, Action, Result, Example:** Mini case studies. *Checkout drop 30% → one-page form → +12% in 3 wks.*
- **💡 IDEA — Intent, Details, Expectation, Audience:** Intent-led briefs.
- **📦 ICIO — Instruction, Context, Input, Output:** Data in → shaped out. MUST paste input or it will invent!

### 🎯 Task/Goal-first family
- **🏷️ TAG — Task, Action, Goal:** Ultra-minimal ops.
- **⛓️ GCT — Goal, Constraints, Timeline:** Must bound! Use MUST / NEVER. *Goal: ship onboarding. Constraints: must SSO, never billing. Timeline: Fri→Mon→Wed.*
- **🔧 PAR — Problem, Action, Result:** Default fix story.
- **🙏 PRO — Problem, Request, Outcome:** Ask variant.
- **⭐ STAR — Situation, Task, Action, Result:** Interview stories, evidence-based.
- **🎬 STAGE — Situation, Task, Action, Goal, Expectation:** STAR + future standard.
- **🦍 APE-task — Action, Purpose, Expectation:** 1-liner. (Not the optimizer APE in Phase 4!)
- **🌉 BAB — Before, After, Bridge:** Persuasion. Bridge must be real mechanism!
- **💧 DRIP — Do, Result, Instructions, Parameters:** Parameterized jobs.
- **🌊 COAST — Context, Objective, Actions, Scenario, Task:** Scenario planning. Pair with Cascade!
- **📢 AIDA — Attention, Interest, Desire, Action:** Marketing copy formula.

### 💎 Quality checklists + New bounded friends ✨
- **✅ CLEAR — Concise, Logical, Explicit, Adaptive, Reflective:** Peer-reviewed (Dr. Leo Lo 2023)! Use as quality gate.
- **📏 SMART — Specific, Measurable, Achievable, Relevant, Time-bound:** Goals that can be measured.
- **🎁 CREATE — Character, Request, Examples, Adjustments, Type, Extras (Dave Birss):** Content with iteration.
- **4️⃣ 4-Sentence — Context, Problem, Solution, Impact:** Exactly 4 sentences for execs!
- **🗂️ OOF — Organize Output Format:** Headers + **bold anchors** + tables. Put in any Output slot for scannability.
- **👤 PGTC — Persona, Goal, Task, Context:** Minimal scaffold. Expand to RGCCOV if missing constraints.
- **🌧️ RAIN — Role, Aim, Input, Numeric Target:** When you need exactly N things! *Role: analyst. Aim: diagnose drop. Input: [data]. Numeric: top 5 causes.* Stops rambling.
- **🌊 FLOW — Function, Level, Output, Win Metric:** Define what great looks like! *Win: CFO can present in 5 min.* For business-critical docs.
- **🎯 AIM-B — Audience, Input, Method:** Anti-generic content brief! *Audience: ops managers. Input: stats + example. Method: LinkedIn 1200 chars.* (Rivals: other AIMs — don't mix! Coaching AIM SMART [Acceptable/Ideal/Middle + SMART step] lives in Applied for goals/habits only — not a general scaffold.)

> 🧠 Pro tip: If user names one (e.g. "use CO-STAR"), honor it! Wrap it in RGCCOV Verification + TEOF tier to stay safe. Never stack >2.

---

## 🧠 Phase 2 — The Reasoning Engine (where science is strongest!)

This changes *how* it thinks, not just how you format.

- **👣 Zero / Few-shot:** No examples vs show 2-5 examples. Show when format keeps slipping.
- **🔗 Chain-of-Thought (CoT):** "Show steps before answer." Foundation of everything.
- **💬 Zero-shot CoT:** Just add "Let's think step by step" — no examples needed.
- **🗳️ Self-Consistency:** Sample 3-5 paths, majority wins. More accurate, more cost.
- **🤖 Auto-CoT:** Auto-generate examples, no hand-writing.
- **🌳 Tree-of-Thoughts (ToT):** Branch like chess, evaluate, backtrack. For puzzles/planning.
- **🕸️ Graph-of-Thoughts (GoT):** Ideas as network, merge/loop. Beyond linear.
- **💀 Skeleton-of-Thought:** Outline first, fill in parallel. Faster!
- **📉 Least-to-Most:** Break hard → easy ordered steps, each uses prior answer.
- **📋 Plan-and-Solve:** Draft plan, then execute. Better than naive CoT for multi-step.
- **🙋 Self-Ask:** Let it ask its own sub-questions, answer each, then combine.
- **↩️ Step-Back:** First abstract principle, then solve specific. "What general rule applies here?"
- **⚡ ReAct — Reason + Act + Observe:** Loop with tools/search. For up-to-date facts/actions.
- **🐍 PAL / Program-of-Thoughts:** Write Python to calculate, run it. Don't trust mental math!
- **📚 RAG — Retrieval:** Pull docs into context first. Reduces hallucination (needs retrieval!).
- **🪞 Self-Refine:** Same model critiques + revises itself.
- **🔄 Reflexion:** Reflect on failure, remember it, try better next round.
- **✅ Chain-of-Verification (CoV):** Draft → list claims → fact-check each → corrected final.
- **🔬 CRITIC:** Check with external tools (search/code/calc), not vibes.
- **🧘 Meta-Cognitive:** "Is my logic biased by first assumption? What would flip me?"
- **🧃 Chain-of-Density (CoD):** Rewrite summary same length but denser, 2-3 passes. For exec briefs.
- **🗜️ LLMLingua compression:** Drop fluff tokens, keep meaning. Cheaper/faster.

**Quick picker 🧭**
Math/logic → CoT → Self-Consistency → ToT if branching. Facts/actions → ReAct/RAG. Must calculate → PAL. Catch mistakes → Self-Refine → CoV → CRITIC. Too big → Least-to-Most / Self-Ask / chaining. Dense summary → CoD. Learning a technical skill with AI → 🚗 DRIVER-edu: Discover → Represent → Implement → Validate → Evolve → Reflect (Purdue Zhang — code first, validate always!).

⚠️ Safety: Fancy branching without tools can hallucinate. For Medium+ risk, require sources, execution, or human.

---

## 🤖 Phase 3 — Orchestration (many calls, many agents)

Beyond one prompt!

- **🔁 Plan → Act → Observe:** The basic agent loop.
- **⚔️ Multi-agent debate:** 2+ AIs argue for rounds, then agree. Catches single-pass errors (2-3x cost).
- **🧅 Mixture-of-Agents:** Layers build on prior layers. Stronger final.
- **🗳️ Ensembling:** Run pipeline N times, vote.
- **🧠 Memory agents:** Remember across sessions (episodic or vector store).
- **📋 Blackboard:** Specialists share one scratchpad, not telephone chain.
- **🌌 Context Engineering:** Manage *everything* in context across run — retrieval, memory, tool outputs. Bigger than prompt wording!

Always add HILCS gates + OEF judging for High risk.

---

## 🧪 Phase 4 — Auto-Optimization (stop hand-tuning!)

For tasks you repeat. Let computer search for best prompt vs a score!

- **🐵 APE:** Generate candidates, test on validation set, keep winners. The original!
- **📈 OPRO:** Show optimizer past prompts + scores, ask for better. Beat humans on hard benchmarks!
- **🧬 PromptBreeder / EvoPrompt / CAPO:** Evolve prompts like genes — mutate, crossover, select.
- **📐 TextGrad:** "Backprop with words" — feedback as gradient.
- **🏭 DSPy:** Define pipeline, compiler tunes instructions + examples. Prod standard! (MIPROv2, COPRO, GEPA)
- **🧙 PromptWizard (Microsoft):** Feedback → critique → synthesize loop.
- **📦 Wrappers:** Promptomatix, CoolPrompt, prompt-ops — easy mode, often DSPy inside.

**Workflow:** Freeze metric + 20-50 test cases → start RGCCOV baseline → run optimizer → test on held-out → rollout with TEOF gate.

---

## 🔬 Research Pass + 🌊 Cascade — When answers aren't enough

**🔬 Research Pass:** Trigger with `Research Pass this: [...]`
Quick (fact) → Targeted (decision) → Full (strategic, costly if wrong). Always: freeze belief, list rivals, expand vocab, search by function, trace to source, triangulate, hunt failures/counter-evidence, stop at saturation, state confidence, filter to *your* context. Never fabricate sources!

**🌊 Cascade Engine:** "What could go wrong?"
1. System Physics: agents (Incumbent/Opportunist/Regulator), hidden subsidies, external costs, wildcard.
2. Three Futures (150-200 words each): Intended, Backlash (Cobra effect!), Mutation. Probable/Possible/Edge — no fake %.
3. Stress: Reversibility 0-10, time-lag trap, concentration risk, pre-mortem.
4. Command: early warning 0-6mo, point of no return, no-regrets move, amplifier, kill switch.

---

## 🛠️ Tool cheat-sheet (apply silently)

- **💬 Chat (Claude/ChatGPT/Gemini):** Front-load Role+Constraints+Output. Headers or XML. 2-5 examples max. State when-unsure.
- **🧠 Reasoning models (o3-style):** Short + clean. No CoT scaffolding. Zero-shot first.
- **💻 Coding agents (Code/Cursor/Copilot):** File scope, start→target, allowed/forbidden, stop conditions, `Done when:` + verify command.
- **🎨 Generators (image/video):** Lock stack/style, what NOT to build, boundaries. Prevent bloat! Use 🖼️ Visual Descriptor: comma descriptors, lighting/mood early, palette + composition, aspect lock (`--ar 16:9`), negative (`--no text,watermark`).

---

## ✅ Quality bar before you hit enter

1. Works first try? Goal clear, format + length locked?
2. Only load-bearing sentences? No fluff adjectives?
3. Strong words? MUST / NEVER > should / avoid.
4. Right effort? TEOF tier matches risk?
5. Grounded? Data pasted or explicitly fiction?
6. Safe? Scope + forbidden + approval gate if High?

**Red flags 🚩:** No sources when needed, one stat repeated as many, fame ≠ relevance, correlation called cause, uncertainty erased in summary.

---

## 🚀 Quickstart — your first 5 minutes

**Minute 1 — Pick a mode, not a framework.** Fast task? ⚡. Need to understand? 🔍. Building? 🏗️. Costly if wrong? 🚨.
**Minute 2 — Fill the union.** `Role + Context + Task + Constraints + Format + Example + Tone` — concrete words in each, no blanks that matter.
**Minute 3 — Lock output.** Shape + length + 1 mini-example if format matters. Add `Done when:` for builds.
**Minute 4 — Set risk.** Low = send. Medium = self-check once. High = sources + human approval.
**Minute 5 — Run quality bar above.** Fix failures, send.

Mode maps (follow arrows, stop at ✅):
```
⚡ Fast:   idea → 1-line RGCCOV → Shorter/Simpler/Example → ✅
🔍 Deep:   vague? → QEF fix → CAF+RAF → OEF judge → ✅ (factual? +CoV)
🏗️ Build:  MCF break → GCT bound → RGCCOV per step → gate each → ✅
🚨 High:   QEF → Research → RAF → OEF → HILCS approve → ✅ (never EFF-only)
```

## ❓ FAQ

**Which acronym do I actually need?** None. Fill the union with specifics. Acronyms are reminders, not magic — benchmarks prove it.
**When do I use RAIN/FLOW?** Numeric output → RAIN. Quality bar → FLOW. Otherwise skip.
**MCF or DRIVER?** Shipping → MCF. Learning the skill → DRIVER-edu.
**GROW, CLEAR, or AIM SMART?** One session → GROW. Ongoing → CLEAR-Coaching. Habit too big → AIM SMART. Rarely needed otherwise.
**Why did my prompt ramble?** No length + no format lock. Add both.
**Why did it hallucinate?** No pasted data + no `[uncertain]` rule. Add RAF grounding.
**Why did the agent loop?** No scope + no stop + no `Done when:`. Add all three (T3).
**Do I need legal-adapter?** Only for legal tasks — then High-Stakes + adapter, lawyer signs off.

---

## 📖 Sources to explore

Prompt Report (Schulhoff 2024), Sahoo 2024 survey, Chains/Trees/Graphs survey, Auto Prompt Optimization surveys 2025, promptolution, promptingguide.ai, CLEAR Lo 2023, practitioner roundups 2025-26.

*Next: see `IMPLEMENTATION_PLAN.md` for what's coming (Applied, Verification, Eval harness, Examples library). Tell me which mode you live in — ⚡🔍🏗️🚨 — and we'll tailor!*

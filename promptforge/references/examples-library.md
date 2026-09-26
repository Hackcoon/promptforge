# Examples Library — 20 Weak → Strong (with mode + suggested frameworks)

Format per item: Mode | Weak (what user typed) | Strong (paste-ready, condensed) | Kept/Fixed/Added + frameworks. All Strong blocks assume Suggested-header shown in answer; here we show block only for space.

## ⚡ Fast (1-5)
**1. Meeting notes → bullets**
Weak: "summarize my meeting notes"
Strong: `You are a meeting summarizer. Turn [paste notes] into 5 bullets + Actions (owner). <120 words, plain eng.`
Kept: task. Fixed: vague→precise op + length. Added: role + output lock. [EFF→RGCCOV 1-liner, TEOF Low]

**2. Email tone**
Weak: "make this sound professional"
Strong: `Role: comms editor. Rewrite [paste] for [audience] in neutral tone. Keep meaning, <100w. Output: rewrite only.`
Fixed: audience + length + output. [RTF, TEOF Low]

**3. Idea list**
Weak: "give me startup ideas"
Strong: `Role: B2B strategist. Aim: side-project for ops managers. Input: [skills/time]. Numeric: exactly 10 ideas, each 1 line + effort L/M/H.`
Added: Numeric Target. [RAIN]

**4. Explain term**
Weak: "what is EBITDA?"
Strong: `Explain EBITDA for [non-finance exec] in <80w + 1 example. No jargon. Flag [uncertain] if edge case.`
Added: audience + length + grounding. [PGTC, RAF-lite]

**5. Shorten text**
Weak: "shorten this"
Strong: `Instruction: cut [paste] to 50%. Context: internal update. Output: bullets, keep numbers/names.`
[ICIO, OOF]

## 🔍 Deep (6-10)
**6. Vague strategy Q**
Weak: "why is strategy failing?"
Strong: `QEF rewrite first: Which mechanism explains 20% churn rise in Y since March — acquisition vs churn? Constraints: [budget/team]. Then: Depth applied, causal+comparative, lens incentives+constraints. After draft list 2 assumptions + 1 counter, verdict. Base on [pasted data]. [uncertain] if gap.`
[QEF→CAF+RAF→OEF, TEOF Med]

**7. EV cost verdict**
Weak: "are EVs cheaper?"
Strong: `Depth applied. Reasoning causal+comparative. Lens incentives+constraints. Compare 5yr TCO EV vs ICE for [mileage/region]. Cite sources. After draft: 2 assumptions + 1 counter-case, then verdict + table.`
[CAF+RAF, CoV if factual]

**8. Generic content**
Weak: "write a LinkedIn post about AI"
Strong: `Audience: ops managers 50-500 emp, LinkedIn commute readers. Input: [McKinsey stat + retail example + keywords]. Method: 1200-char post, hook + 3 paras + 3 takeaways + CTA + hashtags.`
[AIM-B inside RGCCOV-O]

**9. Dense summary**
Weak: "summarize this 20-pg report"
Strong: `Draft 60w summary of [paste]. Then 2 passes: add 3 missing entities each, same length, denser. Deliver final + entity count.`
[CoD]

**10. Fact-check answer**
Weak: "is this launch claim true? [paste]"
Strong: `1. Draft verdict. 2. List claims C1..Cn. 3. Verify each vs [sources]. 4. Corrected + Changed + [uncertain] left. Cite inline [S1].`
[CoV + reClaim-lite, TEOF Med]

## 🏗️ Build (11-15)
**11. Landing page (generator)**
Weak: "make me a landing page for my SaaS, everything, dark mode, auth"
Strong: `Stack: Next.js + Tailwind. Pages: hero/pricing/FAQ only. NOT auth/dark/blog. Sections: hero {headline/sub/CTA}, 3 pillars, proof, FAQ. Done when: npm run build passes, responsive 375/1440.`
[MCF+GCT, anti-bloat]

**12. Checkout test plan**
Weak: "test our checkout"
Strong: `Role: QA. Objective: checkout plan. Details: guest + coupon edge. Examples: [given/when/then]. Sense-check: cover refund path. Output: table Case|Steps|Expect| Gate: all P0 ✅.`
[RODES + OEF gate]

**13. SQL optimization**
Weak: "make this query faster"
Strong: `Function: optimize [paste query, PG15, 50M rows, 4m20s]. Level: perf engineer → senior backend. Output: EXPLAIN breakdown + rewritten query + index DDL + expected gain. Win: <30s same hardware, each fix maps to bottleneck.`
[FLOW]

**14. Learning build (DRIVER)**
Weak: "teach me finance with AI"
Strong: `Discover: [portfolio task + AI as pair programmer]. Represent: [model/data frame]. Implement: [build in Python first]. Validate: [tests vs sources, flag uncertain]. Evolve: [transfer to 2nd case]. Reflect: [bias/limits]. Stop if Validate fails.`
[DRIVER-edu, TEOF Med]

**15. Agentic coding task**
Weak: "fix the flaky test"
Strong: `Scope: app/api/** only. Start: pytest flaky on asyncio. Target: green 3x. Allowed: read/edit/test. Forbidden: schema/deps without ask. After each step ✅. Done when: pytest -q passes 3x + tsc clean. Stop before deleting.`
[HILCS scope + verify block]

## 🚨 High-Stakes (16-18)
**16. Pricing decision**
Weak: "should we raise prices?"
Strong: `QEF → Research Targeted: rivals (raise vs hold vs tier), mechanism, conditions. RAF: base on [pasted metrics] only. OEF score. HILCS packet: Options→Compare→Recommendation→Awaiting approval. Risk High. No external writes.`
[Research→RAF→OEF→HILCS]

**17. Medical/internal (no diagnosis, info only)**
Weak: "is this dosage right?"
Strong: `Do NOT dose. Provide info only from [pasted label/guideline] + tell to confirm with pharmacist + cite. [uncertain] if ambiguous. Risk High, human gate required.`
[RAF + HILCS, fail-closed]

**18. Vendor claim**
Weak: "vendor says 50% faster, true?"
Strong: `Freeze claim + belief. Rivals: benchmark trick vs real gain. Lineage to original test. Triangulate 2 sources. Pre-mortem if wrong. Confidence state + what would flip. Decision + verification experiment.`
[Research Pass Full lite]

## 🎨 Cross (19-20)
**19. Image generation**
Weak: "cool dragon picture"
Strong: `cinematic dragon perched on cliff, golden hour, volumetric fog, detailed scales, photorealistic, wide shot --ar 16:9 --v 6 --no text, watermark, blurry`
[Visual Descriptor, Generators adapter]

**20. Exec update (4 sentences)**
Weak: "update execs on delay"
Strong: `[Context]. [Problem]. [Solution]. [Impact]. HARD 4 sentences, <90w, neutral, for non-tech execs.`
[4-Sentence + CO-STAR audience]

---
Use: Creator picks Strong template by signal; Optimizer shows Kept/Fixed/Added line. All Strong blocks get Suggested-header + risk line in answer (omitted here for density).

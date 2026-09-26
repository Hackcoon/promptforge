# Optimizer Starter — DSPy / OPRO / Evo + Interactive Ask-Loop

Starts from `eval-harness.md` (need a frozen set + 1 metric first). Pick ONE optimizer per task, not all.

## 1. Which optimizer when
- **OPRO:** single instruction, no framework lock-in, fastest to try. Needs: task desc + history of (prompt, score).
- **DSPy MIPROv2:** multi-step pipeline, prod standard. Needs: program sketch (modules) + metric fn. Heaviest, best for repeatable prod.
- **EvoPrompt (GA/DE):** cheap discrete search when you have no pipeline code. Needs: population + mutation via LLM + rounds.
- **APO:** error-driven — failures have clear patterns. Needs: failure cases + textual "gradients".
- **PromptWizard:** joint instruction+examples tuning without adopting DSPy fully.

## 2. Minimal starters
**OPRO loop:** `Meta-prompt: [task + constraints] + history [(P1,S1)...] → propose P-next different in [1 specific way] → score on dev set → append → repeat ≤10 rounds. Stop: 3 rounds no gain or target hit. Judge winner on held-out once.`
**DSPy sketch:** `program = Chain(input → draft → verify). metric = binary pass (harness). optimizer = MIPROv2(devset, metric, max_bootstrapped_demos=4). Compile → test held-out → deploy winner + version.`
**EvoPrompt loop:** `pop=8 prompts (RGCCOV variants) → score dev → keep top 4 → LLM crossover/mutate → repeat ≤5 gens. Stop on saturation.`
All: baseline first, change one thing per round, TEOF-gate rollout, version prompts (v1.1...).

## 3. Interactive ask-loop (the "keeps asking questions" family — your question)
Automated optimizers DON'T ask — they search scores. The asking lives in these, already in your skill:
- **Creator intake (≤3Qs):** tool/output/constraints if unsafe to assume → build with stated assumptions.
- **QEF / 5Q Clarifier (≤5Qs):** fixes the QUESTION (surface→mechanism→constraints→failure→leverage) before any prompt exists. This is the main "keeps asking to improve" framework.
- **OEF Revise loop:** Accept / Revise [exact fix] / Reject — the prompt gets better via correction rounds, not longer briefs.
- **EFF one-tap:** Shorter / Simpler / Example after delivery.
Copy-paste interactive refiner (human-in-loop optimizer):
```
Round: 1. Draft from current prompt on [1 dev case]. 2. Ask the ONE question whose answer changes the output most (tool/output/constraint/gap) — max 3 total across rounds. 3. Revise prompt with answer. 4. OEF score. Stop: Accept or 3 rounds. Never re-ask answered Qs.
```
Combine: QEF first (fix question) → Creator 3Qs (fix spec) → OEF revise (fix output). For prod scale, graduate to OPRO/DSPy above.

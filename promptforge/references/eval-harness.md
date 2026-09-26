# Eval Harness — Validation Sets + Metrics (makes Phase 4 real)

No harness = optimizers are theory. Build this once per repeatable task, then any optimizer (DSPy/OPRO/Evo) can run against it.

## 1. Validation set template (20-50 cases; 5 minimum to start)
| id | input (paste) | expected (gold or rubric) | weight |
|----|---------------|---------------------------|--------|
| ex-01 | [real input] | [exact output or pass criteria] | 1 |
Keep cases real + hard: include 30% edge cases (missing input, bad rows, ambiguous ask). Freeze the set — never edit cases to flatter a prompt.

Split: **dev** (tune on this, ~70%) / **held-out** (judge winner once, ~30%). Tuning on held-out = cheating; scores lie.

## 2. Metric library (pick 1-2, not all)
- **Binary pass/fail** (default): did it meet the contract? Fast, hardest to game. `score = passed / total`.
- **OEF 1-5 ×4:** Signal / Mechanism / Constraint / Insight, average. Use when quality > correctness.
- **Grounding score:** % claims with T1/T2 cite, 0 invented numbers. Use for RAF tasks.
- **Format adherence:** shape + length + sections exact? Binary per case.
- **Cost:** tokens + latency per case (track, don't optimize first).

## 3. Run procedure
1. Baseline: RGCCOV prompt + 0-5 few-shots → score dev set, record.
2. Change ONE thing → rescore dev. Keep winner.
3. OEF-judge top 2 (blind if possible).
4. Winner runs ONCE on held-out → ship score. If held-out drops >10pts vs dev, set overfit — add edge cases, repeat.
5. TEOF-gate rollout (Low: ship. Med: spot-check weekly. High: HILCS + monitor).

## 4. Mini example (bill summarizer, 5 cases)
- ex-01 normal CSV → table Category|Total, ≤120w → pass = shape + math right.
- ex-02 empty input → must ask for data, not invent → pass = [uncertain]/ask, zero transactions claimed.
- ex-03 bad row (negative amount, missing date) → reject row with reason, summarize rest.
- ex-04 ambiguous ("summarize") → default monthly-by-category + state assumption.
- ex-05 500-row file → same shape, no truncation without note.
Baseline 3/5 → add ICIO input contract + OOF lock → 5/5 dev → 4/5 held-out (new edge: duplicate rows) → add dedupe rule → 5/5.

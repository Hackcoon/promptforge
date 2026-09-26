# Anti-Library — Top 10 Failures (before → after + fix)

Teaching value per line: recognize the smell, apply the one-line fix. Pairs with `examples-library.md` (which shows full rebuilds).

1. **Vague verb** — Before: "handle my bills." After: "Import xlsx → preview → confirm → write bills.json." Fix: precise operation (QEF verb swap).
2. **No length** — Before: "summarize report." After: "…in 5 bullets, <120w." Fix: always lock length (OOF).
3. **No format** — Before: "compare DBs." After: "…as table Option|Cost|Risk|Verdict." Fix: shape lock (T1).
4. **Helpful-assistant role** — Before: "You are a helpful assistant." After: "You are a senior backend engineer for distributed systems." / drop role if generic. Fix: expertise-or-nothing.
5. **Wishful grounding** — Before: "Be accurate about Q3 sales." After: "Base ONLY on [pasted CSV]. [uncertain] if gap." Fix: RAF paste + flag.
6. **Invented numbers** — Before: output with confident stats, no source. After: same claims + [S1] cites or [uncertain]. Fix: cite tiers.
7. **Scope "everything"** — Before: "app with everything." After: "v1 = 3 features; NOT auth/sync; v2 parked." Fix: GCT must/never.
8. **Silent agent** — Before: agent edits, no trace. After: "After each step output ✅ [done]. Stop before deleting." Fix: progress + stop (T3).
9. **No done** — Before: "fix tests." After: "Done when: pytest -q 3x + tsc clean." Fix: acceptance + cmds.
10. **Fluency accepted** — Before: "looks great, ship." After: OEF score (Signal/Mechanism/Constraint/Insight) → Revise [exact fix]. Fix: judge, don't vibe.

Scan every build for 1-10 before delivery. Each maps to Quality Bar items 1-6.

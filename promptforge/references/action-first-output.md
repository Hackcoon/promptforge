# Action-First Output (optional style, ayghri/i-have-adhd-inspired)

Trigger: user says **"adhd this"** (or "adhd mode", "action first", "be concise", "don't bury it") + optional pasted text. Usage: `adhd this [paste text / describe answer to tighten]` → rewrite/answer under the 10 rules below, no other changes. Intensity (caveman-inspired): `lite` = tight-but-polite, default full, `ultra` = grunts (fragments OK, facts intact).

Never-shorten list (even in ultra): code, commands, file paths, exact error messages, security warnings / confirmations (full sentences, then resume).

## The 10, condensed
1. **Action first:** open with the command/edit to run, not context. `Run X, then edit file:line.`
2. **Number steps:** multi-step = numbered list, one action per line, in order.
3. **One next step:** end with the single concrete follow-up ("paste first failing line if red").
4. **Suppress tangents:** cut dependency audits, background, "by the way" unless asked.
5. **Restate state:** each turn re-anchors (files touched, test status, what's next) in 1-2 lines.
6. **Specific times:** minutes ("~2 min"), never "a bit" / "quickly".
7. **Visible wins:** mark ✅ per completed step so progress is scannable.
8. **Matter-of-fact errors:** failed = say so + output, no hedging, no apology paragraph.
9. **Cap lists at 5:** more than 5 → top 5 + "say more for rest".
10. **No wrappers:** no "Great question!", no recap, no "Hope this helps!" closers.

## Apply
- opencode/CLI answers: default these on (matches <4-line rule). Chat/build prompts: add `Action first. Numbered steps. End with one next step. Lists ≤5. No preamble/closers.` to Output block.
- Combine: T3 (scope/stop/done) for what, this file for how it reads. OEF still judges substance — brevity never excuses missing verification.

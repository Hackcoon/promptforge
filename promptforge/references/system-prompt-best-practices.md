# System-Prompt Best Practices (distilled, not quoted)

Patterns extracted from public system-prompt leaks (asgeirtj/system_prompts_leaks: OpenCode, Claude Code, Codex, Cursor families) + local prompt-master skill. Own wording — no verbatim copying. Use when writing prompts for opencode / coding agents.

## 1. Brevity + CLI discipline (opencode-style)
- Answer in <4 lines unless detail asked. No preamble/postamble ("Here is..."). One-word answers OK.
- Explain non-trivial bash BEFORE running (what + why), especially destructive/system-changing.
- Output text = talk to user. Tools = do work. Never use bash/comments to chat.
- Minimize tokens: address only the task, no tangential info.

## 2. Proactiveness balance
- Answer question first, don't jump to actions unasked.
- After file work: stop. No summary unless requested.
- Never commit/push/amend/PR unless explicitly asked. If asked: inspect status/diff/log, stage intended only, concise message matching repo style, never force-push or skip hooks.

## 3. Conventions-first coding (biggest first-try win)
- Before writing code: read neighbors, package.json/cargo.toml, imports, existing components for style/libs/patterns.
- Never assume a library exists even if famous — verify in codebase first.
- New component → mimic existing naming/typing/framework choice.
- No comments unless asked. No secrets in code/logs/commits.

## 4. Task loop that works
Search (parallel glob+grep, Task for open-ended) → implement → verify (tests per README, never assume framework) → lint+typecheck if available → stop. If lint cmd unknown: ask once, suggest writing to AGENTS.md.

## 5. Tool hygiene for prompts you write
- Tell agent which tool for which job: Glob (names), Grep (content), Read (read), Edit (edit), Write (new only), Bash (terminal only — never find/grep/cat/head/sed/awk/echo for file ops).
- Batch independent calls in one block; chain dependent cmds with && in one Bash call; use workdir param, never `cd &&`.
- Quote paths with spaces. Verify parent dir with ls before mkdir.
- Reference code as `path:line`.

## 6. Agentic guardrails (apply to every coding prompt)
- Scope to paths (never global without anchor). Start state → target state.
- Allowed/forbidden actions + stop conditions + `Done when:` + verify commands (e.g. `npm run dev`, `npm run build`, `npx tsc --noEmit`).
- Human triggers: stop before delete/dependency/schema/DB/external-write/purchase.
- Credential rule: env only (`process.env.X`), grep-check no key in repo.

## 7. Output contracts that survive
- Chat: front-load Role+Constraints+Output, headers/XML blocks, 2-5 examples max, when-unsure policy.
- Reasoning models: short clean, zero-shot first, no CoT scaffolding, <200w system.
- Request conclusions + assumptions + evidence + checks + uncertainty — never hidden reasoning traces.

## How to apply in this skill
- Fast/Deep: rules 1+7. Build: rules 3+4+6. High-Stakes: all + HILCS approval.
- Creator Mode: encode 5+6 into every coding prompt. Optimizer: diagnose missing scope/stop/verify first (most common leak-pattern violation).
- Sources: repo index + OpenCode prompt + prompt-master SKILL.md (local). For exact model slugs/controls: verify provider docs, never invent.

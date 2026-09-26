# Router Accuracy Set — 20 Intents (run before every minor bump)

How: feed each intent, check Mode + primary framework match. Pass = 18/20. Failures → fix Router hint or pickers, not the intent.

| # | Intent (user words) | Expected Mode | Expected primary |
|---|---------------------|---------------|------------------|
| 1 | "summarize notes fast" | ⚡ Fast | RGCCOV 1-liner |
| 2 | "tired, just make it work" | ⚡ Fast | EFF starter |
| 3 | "explain X clearly, not longer" | 🔍 Deep | CAF |
| 4 | "answers feel shallow" | 🔍 Deep | QEF first |
| 5 | "looks good but weak" | 🔍 Deep | OEF |
| 6 | "need exactly 15 ideas" | 🔍 Deep | RAIN |
| 7 | "board-ready memo, quality bar?" | 🔍 Deep | FLOW |
| 8 | "my content sounds generic" | 🔍 Deep | AIM-B |
| 9 | "multi-step build with gates" | 🏗️ Build | MCF |
| 10 | "learn to do it with AI" | 🏗️ Build | DRIVER-edu |
| 11 | "irreversible, be careful" | 🚨 High | HILCS |
| 12 | "is this claim true? prove it" | 🚨 High | Research Pass |
| 13 | "what could go wrong / backlash?" | 🚨 High | Cascade |
| 14 | "ground this in my data" | 🔍 Deep | RAF |
| 15 | "compress report to one page" | 🔍 Deep | T9 One-Page Brief |
| 16 | "fix this pasted prompt" | ✨/🛠️ Creator/Optimizer | Optimizer + T8 |
| 17 | "make an image, no text" | ✨ Creator | T5 Visual Descriptor |
| 18 | "scope this coding task" | 🏗️ Build | T3 file-anchored |
| 19 | "coach my report / habit" | 🔍/🚨 per risk | GROW / CLEAR-Coaching / AIM SMART picker |
| 20 | "which framework for legal?" | 🚨 High | legal-adapter + HILCS |

Also negative checks: simple lookup must NOT route MCF/HILCS/Research; High-Stakes must NEVER route EFF-only.

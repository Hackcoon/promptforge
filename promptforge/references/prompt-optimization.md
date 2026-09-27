# Automated Prompt Optimization — Meta-Layer (Phase 4)

Treat prompt as searchable artifact against validation set + scoring function. Use for repeatable production tasks, not one-offs. Hand-tune first (RGCCOV + Phase 2), then optimize.

| Method | Core idea | When |
|--------|-----------|------|
| APE (Automatic Prompt Engineer) (Zhou et al. 2022) | LLM generates candidates, scores on validation, resamples/paraphrases best (Monte Carlo). Seminal. | Baseline optimizer |
| OPRO (Yang et al. 2024) | Meta-prompt with task + history of past prompts/scores; LLM proposes next. Beat humans on BBH/GSM8K by large margins. | Strong generic optimizer |
| APE2 / PE2 | Meta-prompts LLM to refine its own prompt-writing process stepwise. Larger search than OPRO. | When OPRO plateaus |
| APO | Textual gradients from failure-case analysis + bandit selection. Efficient refinement. | Error-driven fix |
| PromptBreeder | Self-referential genetic algorithm; evolves prompts + mutation-prompts together. | Open-ended evolution |
| EvoPrompt | GA/DE operators with LLM crossover/mutation on discrete text. | Discrete search |
| CAPO | GA jointly optimizes instructions + few-shot examples. More cost-efficient than earlier discrete. | Joint instruction+examples |
| TextGrad (Yuksekgonul et al. 2024) | Textual autograd: pipeline as graph, backprop natural-language feedback as gradient. | Pipeline tuning |
| DSPy (Khattab et al. 2024) | Declarative modules/signatures + compiler (MIPROv2, COPRO, GEPA) tunes instructions + demos vs metric. | Production standard |
| GEPA | Reflective evolutionary search in DSPy ecosystem. | DSPy alternative |
| PromptWizard (Microsoft) | Joint instruction+example optimization via feedback-critique-synthesize loop. | Joint tuning |
| AdalFlow / LLM-AutoDiff | Prompts as differentiable params, own auto-diff engine (TextGrad spirit). | Pipeline alt |
| DAPO | Structured meta-instruction (type/format/constraints/reasoning/tips) synthesizes strong init, then sentence-by-sentence refine. | Strong init + refine |
| DSP (Demonstrate-Search-Predict) | Precursor to DSPy: demos → retrieve → predict. Foundational for RAG pipeline opt. | RAG pipelines |
| Hard Prompts Made Easy (PEZ) | Gradient-based discrete opt for human-readable hard tokens (not just soft embeddings). | Interpretable tokens |
| Promptomatix / CoolPrompt / prompt-ops / promptolution (2025) | Wrappers (often DSPy-backed) packaging optimizers behind simple API. | Want opt without framework lock-in |

Why it matters: Phase 1+2 give good prompt; Phase 4 finds provably better one via metric + validation set.

Naming: bare APE = this optimizer, always. The scaffold "APE-task" (Action/Purpose/Expectation) is aliased to TAG — see construction-frameworks.

Workflow:
1. Freeze task, metric (binary pass/fail or 1-5 OEF), validation set (20-50 cases min). See `eval-harness.md` for set + metric templates + worked example.
2. Start from RGCCOV baseline + 2-5 few-shots.
3. Run DSPy/OPRO/EvoPrompt; keep best on held-out set. See `optimizer-starter.md` for minimal loops + which-optimizer picker + interactive ask-loop (QEF/Creator/OEF revise family).
4. OEF-judge winner, TEOF-gate rollout, HILCS if High risk.

Sources: Survey of Automatic Prompt Engineering: Optimization Perspective (2025), Systematic Survey of Automatic Prompt Optimization (arXiv:2502.16923), promptolution (arXiv:2512.02840), Prompt Report (Schulhoff et al. 2024, arXiv:2406.06608).

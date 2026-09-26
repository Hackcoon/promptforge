# Reasoning and Workflow Methods

> Empirical note: Phase 2 techniques change how the model reasons and have the strongest peer-reviewed backing (CoT, Self-Consistency, ToT, ReAct, Self-Refine, etc.). Prefer these over Phase 1 reshuffling when accuracy matters. Sources: Schulhoff et al. 2024 (Prompt Report, 58+ techniques), Sahoo et al. 2024, Demystifying Chains/Trees/Graphs (2024).

These describe how to carry out a task, not just what to put in a prompt.

| Method | Use when |
|--------|----------|
| Zero-shot | Simple instruction, no examples needed |
| One-shot | One example locks format |
| Few-shot | Several input/output pairs needed for pattern |
| Zero-shot CoT | Ask stepwise approach, no example reasoning. Use sparingly, never ask for hidden reasoning |
| Few-shot CoT | Demonstrate reasoning pattern via examples |
| Auto-CoT | Generate reasoning examples automatically |
| Self-consistency | Compare multiple independent paths for convergence (needs sampling, not single prompt) |
| Tree-of-Thought | Explore branching candidates (needs execution loop, high fabrication risk in single prompt) |
| Meta prompting | Have AI design/improve the prompt |
| Prompt chaining | Split task, pass outputs forward |
| Generate Knowledge | Establish concepts before main task |
| RAG | Bring retrieved external material — requires retrieval access, not just instruction to use RAG |
| Reflexion | Critique draft and revise |
| ReAct | Alternate reasoning + actions, then synthesize |
| 5Q Clarifier | Ask five clarifying questions before drafting |
| Options → Compare → Decide | Alternatives, trade-offs, choice |
| Iterative Refiner | Draft, feedback, revise in stages |
| Checklist Builder | Goal → actionable steps + checks |
| Research → Extract → Apply → Deliver | Gather, derive insights, apply, present |
| Input → Process → Output | State in, transformation, deliverable |
| Recursive Prompt Optimizer | Analyze → Revise → Evaluate → Test → Revise |
| Three-phase agentic meta-prompting | Impression → Review files → Generate working prompt |
| Agentless | Human-in-loop to get agent-like results via chat |
| ACE / Agentic Context Engineering | Context as evolving playbook via generation, reflection, curation |

## Phase 2 Master Catalog — The Engine

### Core reasoning elicitation
- **Zero-shot / Few-shot:** baseline vs in-context worked examples.
- **Chain-of-Thought (CoT) (Wei et al. 2022):** intermediate steps before final answer; foundation for all below.
- **Zero-shot CoT (Kojima et al. 2022):** `Let's think step by step` with no exemplars.
- **Self-Consistency (CoT-SC) (Wang et al. 2022):** sample N chains, majority vote. Accuracy > cost.
- **Auto-CoT (Zhang et al. 2022):** auto-generate diverse demos by clustering; no hand-writing.
- **Active-Prompt:** annotate only high-uncertainty questions.
- **Complexity-Based (Fu et al. 2022):** prefer exemplars/chains with more steps.
- **Contrastive CoT:** show correct + incorrect explanations so model learns what to avoid.
- **Analogical Prompting:** model self-generates relevant analogies/examples before solving.

### Branching / multi-path search
- **Tree of Thoughts (ToT) (Yao et al. 2023):** propose multiple next-thoughts, evaluate, BFS/DFS/backtrack. Use for puzzles/planning with real branching.
- **Graph of Thoughts (GoT) (Besta et al. 2023):** vertices + edges, merge/loop/aggregate. See owner GoT below.
- **Skeleton-of-Thought (SoT):** draft skeleton/outline, expand points in parallel. Latency gain, slight quality trade.
- **Algorithm of Thoughts (AoT):** encode explicit search algorithm (e.g. DFS) in prompt; model imitates it.
- **Buffer of Thoughts (BoT):** bank of reusable thought-templates, retrieved per problem.
- **Maieutic Prompting (Jung et al. 2022):** tree of explanations + counter-explanations, resolve via consistency check.
- **Progressive-Hint:** feed prior answer as hint across rounds until stable.

### Task decomposition
- **Least-to-Most (Zhou et al. 2022):** ordered subproblems, each conditioned on prior answers.
- **Decomposed Prompting:** route each subproblem to specialized sub-prompt/model.
- **Plan-and-Solve:** draft explicit plan, then execute step by step. Better than naive zero-shot CoT for multi-step.
- **Self-Ask (Press et al. 2022):** generate + answer own sub-questions before final; optionally interleave search.
- **Step-Back:** abstract general principle first, then apply to instance.
- **Chain-of-Table:** explicit table ops (add column, sort, filter) for tabular reasoning.
- **Directional Stimulus:** small hint/keywords per instance to steer generation.
- **Generated Knowledge:** generate background facts first, then condition answer on them.
- **Prompt Chaining:** split task into piped prompts (LangChain-style building block).

### Tool-use & grounding
- **ReAct (Yao et al. 2022):** interleave Reason + Act + Observe with tools/search.
- **PAL (Gao et al. 2022):** offload computation to generated Python, execute externally.
- **Program of Thoughts (PoT):** reasoning as executable code, interpreter does computation.
- **ART:** auto-select tool-use demos from task library, interleave tool calls.
- **Toolformer:** training concept — call API where it would reduce perplexity.
- **Multimodal CoT:** rationales spanning text + images.
- **RAG:** retrieve external passages into context before answering. Requires retrieval access.
- **Graph Prompting:** represent knowledge-graph relations directly in prompt.

### Self-critique / verification loops
- **Self-Refine (Madaan et al. 2023):** same model critiques + revises in feedback loop, no external verifier.
- **Reflexion (Shinn et al. 2023):** verbal reflection on failures stored in episodic memory across trials.
- **Chain-of-Verification (CoV/CoVe):** draft → fact-check questions → answer separately → revised final.
- **CRITIC:** verify via external tools (search, code, calc), not self-assessment.
- **Self-Ask + Search:** Self-Ask with live search per sub-question.
- **Meta-Cognitive Prompting (MP):** monitor own process: comprehension → judgment → evaluation → decision → confidence. Single-turn introspective (vs Reflexion multi-trial).

### Density / compression / summarization
- **Chain of Density (CoD) (Adams et al. 2023):** iteratively rewrite summary denser at fixed length. See owner CoD below.
- **Prompt compression (LLMLingua / v2 / LongLLMLingua):** drop low-information tokens, preserve task performance. Question-aware variants preserve query spans.

### Quick pick by problem type
- Show work / math-logic: CoT → Self-Consistency (accuracy>cost) → ToT (branching/backtracking).
- Up-to-date facts / actions: ReAct, RAG, tool-calling.
- Correct computation: PAL / PoT (execute code, don't mental-math).
- Catch mistakes: Self-Refine → CoV → CRITIC (external) → Reflexion (multi-episode).
- Too big for one prompt: Least-to-Most / Plan-and-Solve / Self-Ask / chaining.
- Dense summary: CoD.
- Repeatable prod task: stop hand-tuning; use prompt-optimization.md (DSPy/OPRO/EvoPrompt).

## Phase 2: Cognitive & Reasoning (The Engine) — Owner-defined

- **Graph of Thoughts (GoT):** bypasses linear thinking. Network of vertices (ideas) + edges (dependencies). Combine pathways, backtrack, loop thoughts. Use for branching exploration where ToT is too linear. Single-prompt simulation is lossy — prefer agentic loop or explicit map: `Nodes: [ideas]. Edges: [depends on]. Merge: [combine nodes X+Y]. Backtrack from [dead end] to [node].`
- **Chain of Density (CoD):** iterative summary infused with high-information entities without growing word count. Maximizes density. Use for exec summaries, briefs. Loop: `Draft 60-word summary → identify 3 missing entities → rewrite same length denser → repeat 2-3x.`
- **Meta-Co (Meta-Cognitive Prompting):** model evaluates own path real-time: "Is this logical or biased by initial premise?" Use for debiasing. Add: `After draft, audit: premise bias? alternative path ignored? what evidence would flip conclusion?`
- **Chain-of-Verification (CoV):** draft baseline → list verifiable claims → self-check → corrected final. Use for accuracy-critical answers. Template: `1. Draft. 2. List claims [C1..Cn]. 3. Verify each against [sources/context]. 4. Output corrected + what changed.`
- **Self-Ask:** decompose complex query into explicit sub-questions, answer individually, aggregate. Use for multi-hop Q&A. Template: `Sub-Q1..Qn → answer each with evidence → synthesize final, flag conflicts.`
- **CRITIC:** validate against external constraints, logic rules, or code execution to kill hallucinations pre-delivery. Use when code/logic checkable. Template: `Draft → check vs [rules / tests / execution] → fix failures → deliver + test report.`

Safety: GoT/Meta-Co/CoV/Self-Ask/CRITIC raise fabrication risk in single forward passes without tools. Require external check (RAF sources, execution, human) for TEOF Medium+. Never present simulated graph traversal as real search.

## DRIVER-edu [SITUATIONAL — Build/Learning loop, Research Pass 2026-09]

Source: Zhang, Purdue AI Finance (AI DRIVER™ Series, classroom-tested 200+). Canonical D = Define & Discover (variants: Discover / Discover & Design). Distinct from World Bank crash-database DRIVER (Data for Road Incident Visualization Evaluation Reporting) — do NOT merge.

When: technical/learning builds where you must *do with AI*, not just answer — forces Implement + Validate + Reflect. Alternative to MCF when goal is skill transfer, not just delivery.
Template: `Discover:[define problem + AI role as teammate] → Represent:[frame model/data] → Implement:[build in code/prompt first] → Validate:[test vs sources/execution, flag uncertain] → Evolve:[iterate + transfer pattern] → Reflect:[bias/limits/ethics + what would change].`
Maps: Discover/Represent = QEF+CAF, Implement = RGCCOV+PAL, Validate = RAF+OEF+CoV/CRITIC, Evolve = Iterative Refiner/Phase 4, Reflect = Meta-Co.
Anti: skip Validate → AI crutch; skip Reflect → no transfer. TEOF Med/High (Validate non-optional).

## Visual Descriptor [TOOL ADAPTER — image/video, not Phase-1 scaffold]

Source: prompt-master skill pattern + CLIP VDT literature (distinct). When: Midjourney/DALL-E/Sora/ComfyUI.
Pattern: `comma-separated descriptors, lighting/mood early, subject + style + palette + composition + atmosphere, aspect-ratio + version locked, negative prompt to prevent drift.` Ex: `cinematic portrait, golden hour, shallow depth, photorealistic, 16:9 --ar 16:9 --v 6 --no text, watermark`.
Use inside Generators adapter, not text RGCCOV-O. See SKILL.md Tool Adaptation.

Names still unresolved — do NOT invent: USC, DiCo, AETHER, MESSAGE.
Rejected as prompt scaffolds: AETHER (tool name only, no expansion), MESSAGE (messaging-house spec, no acronym), USC (university confusion), DiCo/DICO (training/architecture: Direct CLIP Optimization / Dynamic Inference Orchestration, not fill-in).

Safety: Mixture-of-Experts, Tree/Graph simulation, Universal Self-Consistency, long chains compound fabrication risk in single prompts. Use only when explicitly requested and tool-supported.

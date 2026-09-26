# Agentic & Multi-Agent Patterns — Orchestration Layer (Phase 3)

Beyond single-prompt reasoning. Use when task needs chaining, state, or multiple model instances. Prefer simplest single prompt first (RGCCOV/MCF); escalate only on signal.

| Pattern | When / How |
|---------|------------|
| Plan → Act → Observe loop | General ReAct-style agent loop for coding/browsing agents. Reason, act via tool, observe result, repeat. |
| Multi-agent debate | 2+ instances argue/critique over rounds before final. Surfaces single-pass errors. Cost: 2-3x tokens. Use for TEOF High disputed answers. |
| Mixture of Agents (MoA) | Layered LLMs; each layer sees/builds on prior layer outputs, aggregate final. Stronger than single, cheaper than debate for open-ended quality. |
| Ensembling / Self-Consistency (agent-level) | Run same pipeline N times, vote/merge whole trajectories, not just answers. |
| Memory-augmented agents | Episodic (Reflexion-style) or long-term vector-store persisting across sessions/tasks. Required for multi-session continuity. |
| Blackboard / shared-scratchpad | Specialized sub-agents read/write common workspace vs linear handoffs. Use for parallel subtasks. |
| Context Engineering | Discipline managing what enters context across whole run: retrieval, memory, tool outputs, compaction — not just initial instruction. System-level; beats single-prompt tuning. |

Safety: multi-agent compounds cost + coordination failure. Add HILCS checkpoints for irreversible actions, RAF grounding, OEF judging. Never present simulated debate as independent verification without external check.

Combine: MCF controls process → agentic loop executes → OEF judges → HILCS approves if High risk.

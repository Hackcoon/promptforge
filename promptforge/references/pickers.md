# Pickers — Which One When (3 one-pagers)

Use when two frameworks overlap and you're stuck. Each ends with a default so you never stall.

## 1. Constraints: RAIN vs GCT vs SMART (most frequent — use weekly)

| Signal | Pick | Why |
|--------|------|-----|
| Output needs a number (exactly N, top 5, ≤X words, score /10) | **RAIN** (Role/Aim/Input/Numeric Target) | Only one that makes quantity verifiable at a glance |
| Scope creep risk ("everything", deadlines, forbidden zones) | **GCT** (Goal/Constraints/Timeline) | MUST/NEVER + sequence locks scope; RAIN can't bound scope |
| Goal itself is fuzzy (no metric, no date, "improve things") | **SMART** (Specific/Measurable/Achievable/Relevant/Time-bound) | Fixes the goal before any deliverable exists |

Can combine: SMART the goal → GCT the scope → RAIN per deliverable. Never all three in one prompt — layer across plan vs step.
Default: vague → SMART first. Clear goal, creeping scope → GCT. Clear scope, rambling output → RAIN.

## 2. Build loop: MCF vs DRIVER-edu (use when multi-step)

| Signal | Pick | Why |
|--------|------|-----|
| Deliverable matters, learning doesn't (ship the thing) | **MCF** | Breakdown + gates + failure modes, stops at done |
| Skill transfer matters (learn to do it with AI next time) | **DRIVER-edu** (Define&Discover→Represent→Implement→Validate→Evolve→Reflect) | Forces Implement-first + Validate + Reflect; Evolve transfers pattern to next case |

Overlap: both plan + gate. Difference is the ending: MCF ends at delivery, DRIVER ends at reflection.
Default: shipping → MCF. Studying/practicing/technical coaching → DRIVER-edu.

## 3. Coaching: GROW vs CLEAR-Coaching vs AIM SMART (rare — only for people-work)

When you'll use this: performance reviews, 1:1s, habit change (sleep/focus), stakeholder coaching, team retrospectives. If you never run those, park this picker — it fires maybe monthly.
| Signal | Pick | Why |
|--------|------|-----|
| Single session, clear goal, need commitment now | **GROW** (Goal/Reality/Options/Will) | Fastest path goal → action in one conversation |
| Relationship/transformational work, drifting stakeholder, need review loops | **CLEAR-Coaching** (Contracting/Listening/Exploring/Action/Review) | Contracts the relationship + revisits it; GROW has no review cycle |
| Goal too big, keeps failing (health, focus, habits) | **AIM SMART** (Acceptable/Ideal/Middle + SMART micro-step) | Shrinks to one testable step instead of another failed big goal |

Default: 1:1 with action needed → GROW. Ongoing/drifting → CLEAR-Coaching. Personal habit → AIM SMART. Never a generic prompt scaffold.

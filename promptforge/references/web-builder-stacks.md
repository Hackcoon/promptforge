# Web-Builder Stacks — What to Default To (distilled from Claude Design, AI Studio Build, Antigravity, Jules)

No universal stack — pin one up front with bans + rationale, or every downstream file drifts. Pick by product, then enforce.

## Stack options (choose one, state why)
- **A. Single-file component** (Claude Design-style): markup template + plain logic class, inline styles only, no stylesheets/classes/token files, fonts/keyframes/resets in head only. When: shareable widgets, streamed preview, demos. Why: paints without waiting for CSS; forking stays cheap.
- **B. TypeScript + Tailwind** (AI Studio-style): TS on Node, Tailwind via single global import, no separate CSS/CSS-in-JS/inline attrs. Charts: d3 custom, recharts standard. When: real apps with data + charts. Why: type safety + utility speed without style fragmentation.
- **C. Vanilla HTML/JS/CSS** (Antigravity-style): no Tailwind unless requested (then confirm version), Next.js/Vite only for explicitly complex apps. Design tokens in base stylesheet first, components reuse, pages assemble, polish last. When: landing pages, content sites, max portability. Why: zero toolchain, tokens prevent ad-hoc utility sprawl.

## Universal rules (apply regardless of stack)
1. **Pin + ban:** name stack, versions, AND what's forbidden (no mock data, no key-input UI, no auth/DB unless asked, no build-output edits — rebuild from source).
2. **Real integrations only:** actual APIs/OAuth with required credentials documented; preview-fails-until-configured stated upfront. Secrets server-side; new vars declared in example env file, platform prompts for values.
3. **Skeleton rule:** every async list/conditional declares placeholder count/size; templates never compute, logic does.
4. **One file default, numeric split bar:** split only on reuse request OR ~4+ repeats with real props/state. Prevents premature abstraction.
5. **Intent triage:** explain vs change vs ambiguous — explain-only makes zero edits; ambiguous gets explanation + opt-in offer.
6. **Gates:** plan-review approval before build; read-back after every mutation; scripted preview check (desktop + mobile screenshots, clean console) before done. Never commit unasked.
7. **SEO + media:** title, meta, single-H1, semantic tags on every page; generate real media, never placeholder boxes/gradients-as-content.

Combine: T4 generator block for the prompt, this file for stack choice. TEOF Med+ for anything customer-facing.

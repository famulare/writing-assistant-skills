# Skill Tiers — the naming convention that exposes the hierarchy

The writing-assistant skills form a **call hierarchy**, not a flat list: some skills dispatch others.
A reader (or an agent) should be able to see, from a skill's metadata, *what kind of thing it is* and
*what it calls*. This file defines the convention. It complements `skill-router.md` (which says *which*
skill when) and `skill-graph.md` (*what flows into what*).

Introduced by the 2026-06-22 hardening pass; see `../hardening/2026-06-22-post-0616-pass/FINDINGS.md` §3.

## Two metadata fields (on every `SKILL.md` frontmatter, mirrored to `agents/openai.yaml`)

- **`tier:`** — *dispatch behavior*: does it call other skills, and over what span?
  - `core` — always-on guardrail; not a step.
  - `leaf` — one atomic operation; calls no writing skill.
  - `orchestrator` — dispatches leaf skills to build/transform/review **one bounded unit** (a span, a
    section, a claim, a derived artifact).
  - `runbook` — a **multi-stage, gated process over the whole artifact**; dispatches orchestrators + leaves.
  - `meta` — operates on the skill package itself.
  - `substrate` — an external resource other skills draw on.
- **`role:`** — *function / workflow position* (orthogonal to tier): `guard`, `input`, `substrate`,
  `transform`, `audit`, `research`, `orchestrate`, `closeout`, `meta`.
- **`calls:`** — the sibling skills this one dispatches (comma-separated, by name). **Authoritative.**
  The reverse view (`called-by`) is **rendered in `skill-router.md`**, not stored per-skill — a single
  authoritative direction avoids the bidirectional drift of maintaining both.

Why two fields: `tier` and `role` are independent. `final-audit-pass` is an *orchestrator* (dispatch) whose
*role* is `audit`; `build-outline` is a *leaf* whose role is `input`; `finalize-document-with-audit` is a *runbook*
whose role is `closeout`. One field couldn't carry both without ambiguity.

## Forward naming rule (so new names signal their tier)

- **runbook** → `run-*` (e.g. `run-section`, `run-claim-harden`).
- **orchestrator** → constructive `compose-*` / descriptive verb, or a review sweep `*-pass`
  (e.g. `compose-section`, `final-audit-pass`).
- **leaf audit** → `*-scan` / `*-audit` (e.g. `slop-scan`, `voice-audit`).
- **leaf input / transform** → `verb-noun` (e.g. `ingest-source`, `build-outline`, `rewrite-block`).

The `tier:`/`role:` metadata is authoritative; the name is a hint. Existing skills are **not** mass-renamed
(names are referenced across commands, references, the contract, mirrors, and immutable transcripts — high
churn, on record as painful). Renames are opt-in and applied only when a name actively misleads;
`build-skeleton → build-outline` (2026-06-22) is the one such case so far (it failed discovery — "do we
have a skill for the outline?" — and under-named a skill that now renders the outline contract, not just a
matrix). A router alias note covers the transition.

## The inventory, by tier

| skill | tier | role | calls |
| --- | --- | --- | --- |
| preserve-authorial-writing | core | guard | — |
| source-manifest | leaf | input | — |
| extract-argument | leaf | input | — |
| build-outline | leaf | input | — |
| ingest-source | leaf | input | — (folds to ledgers) |
| frankendraft | leaf | substrate | — |
| rewrite-block | leaf | transform | minimal-edit |
| minimal-edit | leaf | transform | — |
| slop-scan | leaf | audit | — |
| claim-audit | leaf | audit | — |
| voice-audit | leaf | audit | — |
| voice-costume-audit | leaf | audit | — |
| scaffold-architecture-audit | leaf | audit | — |
| condense-section | leaf | audit | minimal-edit |
| render-word | leaf | transform | — |
| compose-section | orchestrator | transform | rewrite-block, minimal-edit |
| harden-claim | orchestrator | research | ingest-source |
| final-audit-pass | orchestrator | audit | slop-scan, voice-audit, voice-costume-audit, scaffold-architecture-audit, minimal-edit |
| derive-artifact | orchestrator | transform | extract-argument, build-outline, compose-section, final-audit-pass |
| run-section | runbook | orchestrate | build-outline, frankendraft, compose-section, final-audit-pass, minimal-edit, harden-claim |
| run-claim-harden | runbook | research | harden-claim, ingest-source |
| finalize-document-with-audit | runbook | closeout | claim-audit, voice-audit |
| harden-writing-workflow | meta | meta | — |

## Reading the hierarchy

- **Leaves** do one thing and call (almost) nothing — the atoms.
- **Orchestrators** call leaves for one bounded unit: `compose-section` builds a section,
  `harden-claim` hardens a claim, `final-audit-pass` reviews a draft, `derive-artifact` spins off a summary.
- **Runbooks** call orchestrators across the whole artifact: `run-section` drives the per-section build
  loop; `run-claim-harden` sweeps every section's claims; `finalize-document-with-audit` closes out.
- `preserve-authorial-writing` guards all of them; `harden-writing-workflow`
  improves the package after sessions.

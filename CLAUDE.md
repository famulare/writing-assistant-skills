# CLAUDE.md — Writing Assistant (Claude-native entry point)

Repo orientation, behavior contract, and maintenance rules live in `AGENTS.md`
and are imported below so there is a single maintenance surface for both Claude
and Codex. This file adds only the Claude-specific slash-command workflow.

@AGENTS.md

## Using the workflow (Claude slash commands)

The `.claude/commands/*.md` wrappers are project-scoped slash commands. Each
reads `references/writing-skill-common.md` plus its own `skills/<name>/SKILL.md`,
then runs that step. Core + steps:

- `/preserve-authorial-writing` — the thin core; the guardrails for any writing op.
- `/source-manifest` — name what controls the task before drafting.
- `/ingest-source` — digest one NEW source mid-project: save verbatim, register, advise the fold.
- `/extract-argument` — pull claims, evidence, assumptions, uncertainty.
- `/build-outline` — structure before prose (skeleton matrix + per-section contract; renamed from `build-skeleton`).
- `/frankendraft` — assemble a verbatim-only raw substrate from the author's words; mark holes.
- `/scaffold-architecture-audit` — pre-draft audit of the raw scaffold's cross-section structure.
- `/rewrite-block` — transport one existing raw span → polished (the atomic operator).
- `/compose-section` — assemble a section: `rewrite-block` per raw span, generate per hole, seam.
- `/minimal-edit` — revise existing prose under minimal-diff discipline.
- `/condense-section` — within one section, audit length/thread/order/density and propose cuts.
- `/slop-scan` — find generic / over-smoothed / LLM-like language.
- `/claim-audit` — test whether the prose is defensible against sources.
- `/harden-claim` — re-research and harden a thin claim into evidence (the loop).
- `/voice-audit` — test whether the prose still sounds like Mike.
- `/voice-costume-audit` — blind/reveal test for an invented whole-artifact persona; costume is diagnostic, not automatically bad.
- `/final-audit-pass` — orchestrated audit sweep: local slop/voice, whole-artifact costume for drafts, supplied raw-scaffold audit, and finished-prose seams.
- `/run-section` — runbook: drive one section end to end (outline → draft → audit → harden → fold).
- `/run-claim-harden` — runbook: whole-draft claim-hardening sweep across every section.
- `/derive-artifact` — spin a downstream artifact (exec summary, memo) off a finished dossier.
- `/finalize-document-with-audit` — final prose + provenance/audit trail.
- `/render-word` — export a markdown file to M365-styled .docx via pandoc.
- `/harden-writing-workflow` — review a session and improve the skills (see `references/hardening-contract.md` for a multi-session pass).

For *which skill when* and *what flows into what* (with human-in-the-loop gates), see
`references/skill-router.md` and `references/skill-graph.md`. For the naming
convention that exposes the call hierarchy (`tier:`/`role:`/`calls:`, with the full
inventory table), see `references/skill-tiers.md`.

These project commands fire only when the cwd is this repo. The skills are also
installed system-wide as symlinks from both global configs (Claude and Codex), so
they are available everywhere and edits here are live — see the install rules in
`AGENTS.md`.

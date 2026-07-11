# Demo — one source, the whole pipeline, two registers

A worked, end-to-end run of the writing-assistant skill stack on a single real (lightly
redacted) piece of raw material. It shows the workflow's core move: **outline once,
frankendraft once, transport into two registers** — a formal scientific research note
and a casual blog post — with independent review and claim-hardening at every gate, and
a human (here, the assistant playing that role) adjudicating each decision.

Read the two outputs first, then the trail:
- **[`05_scientific-report.md`](05_scientific-report.md)** — the formal register.
- **[`08_blog-post.md`](08_blog-post.md)** — the casual register, *derived* from the report.

## The source
`raw_source_serotype-fuzziness.md` — the verbatim body of one email (the author's own
words), lightly redacted to remove living-colleague names and organizations. Historical
citations (Bodian, Morgan, Sabin; 1949) and strain/place names are kept. It tells a
complete arc: we treat poliovirus serotypes as clean fixed categories → the 1949
literature already knew they were fuzzy → the Bodian/Morgan evidence (the Per and Kover
strains break the type-defining pattern) → standardization defined the fuzziness away →
an evolutionary reading of when it mattered → why OPV2 cessation makes it live again.

## The flow (and which skill drove each step)

| # | Stage | File(s) | Skill | Independent review? |
|---|---|---|---|---|
| 0 | Frame the task | `00_source-manifest.md` | `source-manifest` | — |
| 0 | Pull the argument | `01_argument.md` | `extract-argument` | — |
| 1 | Structure (once) | `02_outline.md` | `build-outline` | — |
| 1 | Pre-draft structure audit | `reviews/scaffold-audit.md` | `scaffold-architecture-audit` | ✅ fresh-context subagent |
| 1 | Verbatim substrate (once) | `04_frankendraft.md` | `frankendraft` | ✅ fidelity subagent (`reviews/frankendraft-fidelity.md`) |
| 2 | Compose the report (sectioned) | `05_scientific-report.md` | `run-section` → `compose-section` → `rewrite-block`, `minimal-edit`, `condense-section` | — |
| 3 | Harden the claims | `06_claim-ledger.md`, `07_bibliography.md` | `run-claim-harden` → `harden-claim` → `ingest-source` | ✅ research subagents (`reviews/harden-*.md`) |
| 4 | Audit the report | `reviews/slop-scan-report.md`, `reviews/voice-audit-report.md`, `reviews/claim-audit-report.md` | `final-audit-pass` → `slop-scan` + `voice-audit` + `claim-audit` | ✅ three parallel fresh-context subagents |
| 5 | Derive the blog | `08_blog-post.md` | `derive-artifact` (+ its own audit trio) | ✅ `reviews/blog-*.md` |
| 6 | Blind comparative judge | `reviews/blind-judge.md` | (final-audit-pass judge) | ✅ fresh-context subagent |
| 7 | Finalize + disclose | provenance footers in `05`/`08` | `finalize-document-with-audit` | — |
| 7 | Export to Word | `10a_scientific-report.docx`, `10b_blog-post.docx` | `render-word` | — |
| 8 | Session retro | `11_workflow-retro.md` | `harden-writing-workflow` | — |
| — | Human decisions, throughout | `decision-log.md` | `preserve-authorial-writing` (governs all) | — |

## What the run demonstrates
- **One substrate, two voices.** Both outputs trace to the same `02_outline.md` /
  `04_frankendraft.md`; only the transport differs, governed by the two example voice
  cards in `../references/` (`voice-card-example-scientific.md`, `-casual.md`).
- **The guardrails catch real slips.** Independent reviewers caught a certainty drift
  (a dropped hedge in §3), and the blind judge caught an invented figure in the blog's
  close. Both were fixed before finalization — see `decision-log.md` (entries 11, 18).
- **Claims stay honest.** Citations were fetch-verified (a journal-name anachronism was
  corrected); "Per"/"Kover"/"4 of 14" are kept at the author's strength but recorded as
  primary-table / author-sourced, with no invented secondary citation
  (`06_claim-ledger.md`).

## Skill coverage note
Every skill in the stack was exercised except one. `condense-section` was applied as a
per-section length/density check but proposed no cuts (no section exceeded its budget).
`local-writing-llm` was **not** exercised: it wraps a private local-model/RAG substrate
that isn't part of this shareable demo. Everything else ran for real, including the
independent subagent reviews recorded in `reviews/`.

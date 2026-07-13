# Demo — one source, the whole pipeline, two registers

A worked, end-to-end run of the writing-assistant skill stack on a single real (lightly
redacted) piece of raw material. It shows the workflow's core move: **outline once,
frankendraft once, transport independently into two registers** — a formal scientific
research note and a casual blog post. The hardened claim ledger governs both branches;
the author's verbatim substrate, not one AI rendering, governs the next rendering.

The first autonomous run made the assistant simulate the human gates. That was useful
for exercising the machinery, but it was not equivalent to author approval. It also
misrouted the blog through `derive-artifact`, using the scientific report as its prose
substrate. The current artifacts correct that mistake; the original audits are retained
under `reviews/original-autonomous-run/` as a workflow failure record.

Read the two outputs first, then the trail:
- **[`05_scientific-report.md`](05_scientific-report.md)** — the formal register.
- **[`08_blog-post.md`](08_blog-post.md)** — the casual register, transported in parallel
  from the same frankendraft.

## The source
`raw_source_serotype-fuzziness.md` — the verbatim body of one email (the author's own
words), lightly redacted to remove living-colleague names and organizations. Historical
citations (Bodian, Morgan, Sabin; 1949) and strain/place names are kept. It tells a
complete arc: we treat poliovirus serotypes as clean fixed categories → the 1949
literature already knew they were fuzzy → the Bodian/Morgan evidence (the Per and Kotter
strains break the type-defining pattern) → standardization defined the fuzziness away →
an evolutionary reading of when it mattered → why OPV2 cessation makes it live again.

## The flow (and which skill drove each step)

| # | Stage | File(s) | Skill | Independent review? |
|---|---|---|---|---|
| 0 | Frame the task | `00_source-manifest.md` | `source-manifest` | — |
| 0 | Pull the argument | `01_argument.md` | `extract-argument` | — |
| 1 | Structure (once) | `02_outline.md` | `build-outline` | — |
| 1 | Pre-draft structure audit | `reviews/original-autonomous-run/scaffold-audit.md` | `scaffold-architecture-audit` | historical fresh-context review |
| 1 | Verbatim substrate (once) | `04_frankendraft.md` | `frankendraft` | historical fidelity review (`reviews/original-autonomous-run/frankendraft-fidelity.md`) |
| 2 | Corrective report transport | `05_scientific-report.md`, `03_corrective-transport-record.md` | source-first corrective rewrite; not represented as a validated `compose-section` run | — |
| 3 | Harden the claims | `06_claim-ledger.md`, `07_bibliography.md` | `run-claim-harden` → `harden-claim` → `ingest-source` | historical research reviews (`reviews/original-autonomous-run/harden-*.md`) |
| 4 | Audit the report | `reviews/current-scientific-audit.md`, `reviews/voice-costume-scientific-audit.md` | `final-audit-pass` → `slop-scan` + `voice-audit` + `voice-costume-audit` + `claim-audit` | ✅ fresh-context review; costume audit used frozen blind/reveal |
| 5 | Corrective blog transport from the shared substrate | `08_blog-post.md`, `03_corrective-transport-record.md` | source-first corrective rewrite; not represented as a validated `compose-section` run | — |
| 6 | Audit the blog | `reviews/current-blog-audit.md`, `reviews/voice-costume-blog-audit.md` | `final-audit-pass` → `slop-scan` + `voice-audit` + `voice-costume-audit` + `claim-audit` | ✅ fresh-context review; costume audit used frozen blind/reveal |
| 7 | Finalize + disclose | provenance footers in `05`/`08` | `finalize-document-with-audit` | — |
| 7 | Export to Word | `10a_scientific-report.docx`, `10b_blog-post.docx` | `render-word` | — |
| 8 | Session retro | `11_workflow-retro.md` | `harden-writing-workflow` | — |
| — | Human decisions, throughout | `decision-log.md` | `preserve-authorial-writing` (governs all) | — |

## What the run demonstrates
- **One substrate, two voices.** Both outputs trace to the same `02_outline.md` /
  `04_frankendraft.md`. The active card and direct dossier evidence govern register;
  the filled cards under `references/voice-card-example-*` are examples, not voice authority.
- **Guardrails do not substitute for routing or human judgment.** The original audits
  caught local slips but missed a strengthened thesis, a misrouted parallel artifact,
  and document-level Claude register. The corrected run records those misses rather than
  presenting the autonomous adjudication as successful HITL.
- **Claims stay honest.** Citations were fetch-verified (a journal-name anachronism was
  corrected); "Per"/"Kotter"/"4 of 14" are kept at the author's strength but recorded as
  primary-table / author-sourced, with no invented secondary citation
  (`06_claim-ledger.md`).

## Historical audit record

The original run's audit reports remain under `reviews/original-autonomous-run/`. They
describe the pre-correction artifacts and must not be read as validation of the current
prose. The current audit reports identify residual author decisions rather than claiming
that simulated decisions constitute final approval.

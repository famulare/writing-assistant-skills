# Source manifest — serotype-fuzziness demo

Per `skills/source-manifest`. Names everything that controls this task before drafting.

## Current instructions (first source of truth)
- Produce a scientific research note and a parallel casual blog post that carry the
  **full arc** of the raw email (see `raw_source_serotype-fuzziness.md`).
- Exercise the full skill stack. For the historical autonomous run, the assistant
  simulated the human gates; those calls are workflow test records, not author approval.
- Invent nothing; preserve claim strength and hedges. Keep the raw source's
  redaction intact; the author has explicitly restored Amy Rosenfeld's attribution
  in the two public artifacts.

## Centered source language (the author's words that anchor the task)
- The raw email is the sole authorial substrate. Load-bearing phrases the author centers:
  - "way back in the day, they knew serotypes were fuzzy … developments since the 1950s had largely defined away the evidence"
  - "in the canonizing of stylized facts, we lost the common knowledge that the story is fuzzy"
  - "mostly type 1 with a little bit of type 2 should not be surprising at all"
  - "we wait a few years and start to notice viruses that are between serotype"

## Source artifacts
| Source | Role | Status |
|---|---|---|
| `raw_source_serotype-fuzziness.md` | primary authorial substrate (verbatim, redacted) | included |
| Bodian 1949 (Am J Epidemiol / Am J Hyg vol 49, 1949) | cited historical evidence (Table 1/2, serotype scheme, Per) | **verify in Phase 3** |
| Morgan 1949 | cited historical evidence (Kotter symmetric cross-protection) | **verify in Phase 3** |
| AJE vol 49 issue 2 (1949) | cited container for the above | **verify in Phase 3** |
| MEF-1 = "Middle East Forces", 1942 | historical naming claim | **verify in Phase 3** |
| "only 4 of 14 strains sequenced (1980s–90s)" | quantitative claim | **verify / mark if unverifiable** |

## Voice sources
- `raw_source_serotype-fuzziness.md` → primary direct voice evidence for both transports,
  especially the public blog.
- `voice/voice-card.md` → compact active guidance, not standalone evidence.
- `voice/dossiers/formal-papers.md` → formal-register evidence for the scientific note.
- `voice/dossiers/public-personal-blog.md` and
  `voice/dossiers/public-personal-scientific-essay.md` → public-blog evidence and
  register-specific drift controls.

The filled cards under `references/voice-card-example-*.md` demonstrate card structure;
they are not governing voice evidence for this task.

## Evidence gaps (to resolve or mark)
- Source figures/tables were **not extractable** from the PDF; all table/figure content
  must be described textually and any specific number verified or marked.
- Exact Bodian 1949 journal/volume (the email says AJE vol 49; Bodian's serotype work is
  often cited in *Am J Hyg*) — reconcile in Phase 3, mark if uncertain.
- "10x higher R0 in Cairo" and "1 in 200" are the author's asides — keep as author
  observation, do not elevate to verified fact unless a source is found.

## Conflicts
- None internal to the email. If a Phase-3 citation check contradicts an author aside,
  **do not silently reconcile** — mark it and log an author decision.

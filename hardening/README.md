# How these skills were hardened

The skills in this package were not designed top-down and then declared finished.
They were **hardened against real drafting sessions**: after using the assistant on
an actual writing project, the maintainer reviewed the session for every place he
had to override, correct, restate, or heavily steer it, classified those moments
into recurring failure modes, and folded the *smallest useful* fix back into a skill
— tightening an existing one, adding a voice-card rule, or building a new subskill
only when a failure recurred.

This directory keeps a few **redacted work-products** from those passes as worked
examples of the method. The method itself — its authority model and stopping rules —
lives in [`../references/hardening-contract.md`](../references/hardening-contract.md),
and the skill that runs a pass is `harden-writing-workflow`.

## The loop

1. **Use the assistant on a real artifact.** Hardening evidence only comes from real
   stakes, not synthetic prompts.
2. **Find where the human had to intervene.** Every override, correction, restated
   instruction, or manual re-edit is a signal that a skill under-specified something.
3. **Classify the failure mode, don't just patch the instance.** Was it a missing
   skill instruction? A voice-card gap that caused a recurring over-flag? A
   verification step that checked *existence* of evidence but not its *direction*? A
   structural problem no skill owned?
4. **Propose the smallest useful fix**, at the right altitude — a line in an existing
   skill, a shared-protocol rule, or (only on recurrence) a new subskill.
5. **The author triages.** Findings are proposed with evidence; the author approves,
   defers, or declines each. Nothing is auto-applied to the skillset.
6. **Apply, and keep the rationale trail** so a later pass doesn't relitigate a
   settled decision or re-break a validated behavior.

A comprehensive pass scales this up: extract the whole session history, index every
intervention, run **blind** per-session reviews in fresh context, reconcile them into
a recurrence matrix, and gate a fix on whether a failure showed up across sessions
(or with enough independent severity in one). The same **risk-tier** and
**evidence-before-assertion** discipline the skills enforce on prose is applied to
changing the skills themselves.

## What's in each example

- **`2026-06-12-tb-dossier/HARDENING-LOG.md`** — a single-session pass. Its
  "where the author steered, corrected, or overrode" table is the method in
  miniature: each row is a failure moment → a classified failure mode → the smallest
  skill edit. Findings that came out of this one include the *em-dash-density* tell
  (density is the signal, not the individual dash), the *consensus-prior foil* (an
  LLM defaults to the field's modal reading, which is dangerous for an author writing
  *against* consensus), a claim-audit *direction/sign* check, and the first note of a
  missing *cross-section scaffold architecture* audit — later built as
  `scaffold-architecture-audit`.

- **`2026-06-16-comprehensive-pass/`** — the first multi-session pass. `FINDINGS.md`
  opens on the headline *delivery gap* (approved fixes that never landed) and lays out
  what to build. `findings-appendix.md` is the receipts: a table of principles marked
  WORKED / KEEP / BUILD with commit evidence, so validated behaviors are not
  relitigated. `plan.md` is the pass's own runbook (extractor design, closed
  vocabularies, blind-review provenance) — it doubles as the worked example the
  `harden-writing-workflow` skill points to.

- **`2026-06-22-post-0616-pass/`** — a follow-up pass. `FINDINGS.md` is a right-sized
  later sweep. `transport-operator-analysis.md` is the most concrete artifact here: an
  independent characterization of the author's recurring **hand-edits** — what
  systematically changes when assistant-composed prose becomes committed prose (cut
  the announcer sentence; cut inflated absolutes; restore idiosyncratic self-located
  detail; relocate a spine sentence rather than restate it) — each mapped to the skill
  that should own it. It is the clearest evidence of *what "sounds like the author"
  actually means* as a set of operations.

## Redaction note

These files are lightly redacted: personal names and organization-internal detail
were removed. The domain content (tuberculosis science and the manuscript's section
structure) is retained deliberately — it is the concrete example that makes the
method legible. The confidential per-session scratch (raw transcripts, digests, the
recurrence matrix) was never committed; these are the already-scrubbed outputs.

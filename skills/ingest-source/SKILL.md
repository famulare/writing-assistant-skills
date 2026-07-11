---
name: ingest-source
description: Digest one NEW raw source mid-project — a correspondence email, a paper, or chat text promoted to a source — into the working record. Use to save the source verbatim with a provenance header, register it with a status tier and a tracked-vs-local rule, and produce a fold-advisory to the claim ledger and bibliography with fetch-verified identifiers. This is mid-project single-source ingest; to name all the materials that control a task before drafting, use source-manifest instead.
tier: leaf
role: input
calls: — (folds to ledgers)
---

# Ingest Source

Take one new raw source from *arrived* to *registered and fold-ready*. A source
surfaces mid-project — an email lands, a paper is cited at you, a chat exchange
turns out to carry a load-bearing fact — and it has to enter the record without
being silently dissolved into the prose.

Distinct from `source-manifest`: that skill is **pre-draft** and **names all the
controls** for a task before prose exists. This skill is **mid-project** and
handles **one source at a time** as it arrives — save it, register it, advise the
fold. Run this when a single new source needs to enter an already-running
project; run `source-manifest` when you are mapping the whole control surface
before drafting.

If available, read `../../references/writing-skill-common.md` for the source
hierarchy, markers, and the reader-privacy rules that govern what may be tracked.

## Mode

INGEST. Save and register; advise the fold, do not perform it. The ledger fold is
the author's call to confirm — this skill hands over a proposed fold, not an
applied one.

## Inputs

Use available:

- the raw source as it arrived (email body, paper, chat passage, attachment)
- its origin: who/where it came from, when, and in what channel
- the project's working ledgers (claim, source registry, bibliography)
- which claim or section, if any, called the source in

## Procedure

1. **Save the source verbatim, with a provenance header.** Preserve the source
   exactly as received — no cleanup, no summarizing into the record. Prepend a
   provenance header: origin, channel, date received, and how it entered the
   project (which claim or query surfaced it). A digest may follow the verbatim
   body, but never replaces it.

2. **Register it with a status tier.** Add an entry to the source registry with a
   status tier (e.g. central / supporting / background / candidate-uncertain) and
   a one-line statement of what it bears on. **Err overcomplete.** It is cheap to
   demote or reject a registered source later; it is costly to discover a central
   source was never recorded. When the tier is unclear, **register-and-flag**
   (`[AUTHOR DECISION: tier?]`) rather than skip — under-registering is the
   failure to avoid.

3. **Apply the tracked-vs-local rule.** Decide what may live in version control
   and what stays out (see reader-privacy rules in
   `writing-skill-common.md` / `source-manifest`):
   - A non-sensitive paper or public artifact may be tracked.
   - **Correspondence, reader-private notes, and confidential internal sources
     stay local** — kept in scratch the repo ignores, contributing synthesized
     facts only, never lifted verbatim objects into a tracked artifact.
   - **Never auto-commit a confidential binary** (PDF, dataset) on the
     assistant's initiative. A named-sender attribution is the author's decision
     to make, not the assistant's.

4. **Fetch-verify every identifier — never recall.** Any identifier the source
   carries or that you would attach to it (PMID / DOI / title / accession /
   version / URL) is confirmed against the live source, not recalled. Recall-based
   identifiers are not trustworthy; a figure stated as a headline but lifted from
   an abstract or a forwarded summary must be traced to the primary object. Mark
   anything unverifiable `[VERIFY CITATION: …]` rather than asserting it.

5. **Produce a fold-advisory — do not auto-fold.** Hand the author a proposed
   fold, kept separate from the live ledgers until confirmed:
   - **claim ledger** — candidate claims the source supports or contests, with
     claim strength left for the author to set; distinguish the no-voice evidence
     layer from any authored framing. Flag claims that *cut against* an existing
     ledger entry rather than smoothing them in.
   - **bibliography / source ledger** — the verified citation with its identifier
     and a one-line finding, grouped by the section it would serve.
   - Carry voice/communication tags: mark the source and any drawn fact as in the
     author's voice or not, and personal communications as such.

## Output

- the saved verbatim source path + its provenance header
- the registry entry: status tier, what it bears on, tracked-vs-local decision
- fetch-verified identifiers (and anything left `[VERIFY CITATION: …]`)
- the proposed fold-advisory (claim-ledger candidates, bibliography entry) —
  proposed, not applied
- author decisions needed: tier confirmation, claim strength, any
  named-attribution call

## Verification

- The source is saved verbatim; the digest never replaces the original.
- A provenance header records origin, channel, date, and how it entered.
- The registry errs overcomplete — unclear tier means register-and-flag, not skip.
- The tracked-vs-local rule is applied; no confidential source or binary is
  committed on the assistant's initiative; no reader/sender is named in tracked
  output without the author's decision.
- Every identifier is fetch-verified against the live source, not recalled.
- The fold is advised, not auto-applied; claim strength is left for the author.
- Disconfirming candidates are flagged, not smoothed into the existing ledger.

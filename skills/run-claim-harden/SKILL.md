---
name: run-claim-harden
description: Run whole-draft claim-hardening as a sweep — triage every section (harden / partial / skip-conceptual / nothing), dispatch harden-claim per section that needs it, emit one report per section plus a consolidated outcome index, close out by tier, then fold verified evidence to the ledgers. Use after a draft exists to harden its load-bearing claims at scale. For one section's loop from contract to prose, use run-section; for a single claim, use harden-claim directly.
tier: runbook
role: research
calls: harden-claim, ingest-source
---

# Run Claim Harden — the whole-draft hardening sweep

The **runbook** for hardening a finished draft's claims at scale. It triages
every section, dispatches `harden-claim` (read `../harden-claim/SKILL.md`) per
section that needs it, and consolidates the results. The non-delegable judgment —
the triage call and the sharp question per section — stays with the author and
the lead; the subagents only surface evidence.

This is the whole-draft companion to `run-section` (which hardens one section
late in its build loop). Run it once the draft exists, when many sections need
hardening at once.

If available, read `../../references/writing-skill-common.md` for the risk tiers
and markers, and `../../references/independent-review-prompts.md` for fetch-verify
patterns.

## Mode

RE-RESEARCH, lead-orchestrated. The lead fans out per-section work and may cross
model families and tools for breadth. **A subagent cannot spawn subagents** — so
heterogeneous breadth, and any per-section parallelism, is the lead's job. Do not
let an agent decide a claim; agents surface evidence, the human reads it and the
author sets strength.

## Triage — the load-bearing step

Classify **every** section before dispatching anything. The skip rule is real,
not pro-forma: **over-hardening conceptual sections is the failure to avoid.**
Re-research cannot harden an argument-of-structure, and the added evidence
over-centers the artifact and buries the author's thesis under lit-review.

Per section, assign one of:

- **harden** — load-bearing, contestable claims that are currently thin or
  only-asserted; a skeptical reader would attack them on *evidence*. Full
  `harden-claim` loop.
- **partial** — one or two thin claims inside an otherwise-fine section;
  harden just those, not the whole section.
- **skip-conceptual** — conceptual, constructive, or argument-of-structure
  sections. **Skip on purpose.** The evidence a skeptic would contest here is
  structural, not empirical — re-research would not help and would over-center.
- **nothing** — already evidence-dense and verified, or carrying no contestable
  load. No work.

Treat a "previously corrected" ledger entry as a **yellow flag**, not settled: a
prior correction can itself have been wrong and survived because it looked
finished. Re-verify the attribution it rests on rather than trusting it.

Bring the triage table to the author before dispatching — the harden/skip split
is theirs to confirm.

## Procedure

1. **Triage every section** into harden / partial / skip-conceptual / nothing,
   with a one-line reason each. Confirm the split with the author.

2. **Dispatch `harden-claim` per section needing it** (serial or parallel; the
   lead may cross model families and tools for breadth). For each: the lead poses
   the sharp testable question, fans out read-only breadth-search subagents,
   fetch-verifies every identifier and figure against the live source, and
   synthesises honestly — reframing on overreach. The lead orchestrates the
   fan-out; **do not instruct a subagent to spawn its own subagents.** If a
   section surfaces a central new source, `harden-claim`'s fold calls
   `ingest-source` (read `../ingest-source/SKILL.md`) to register and digest it.

3. **One report artifact per section** — the sharp question run, strongest
   primary sources, comparator cases, disconfirming evidence, fetch-verified
   identifiers with real findings, and any reframe flagged for the author.

4. **Consolidate to an OUTCOME INDEX** across all sections: section → triage
   class → outcome (hardened / reframed / held / skipped) → report artifact →
   author decisions outstanding. This is the one place to read the whole sweep.

5. **Tiered close-out.** Group what remains by what the author must act on:
   confirmed-hardened (ready); reframed-needs-confirmation
   (`[reframed … — author to confirm]`); thin-still (evidence didn't hold —
   reframe or mark `[EVIDENCE NEEDED: …]`); skipped-conceptual (deliberate, with
   reason). Do not smooth mixed evidence into a tidy story.

6. **Fold verified evidence to the ledgers** through `harden-claim`'s fold (claim
   / source / bibliography / outline), which calls `ingest-source` for any
   central new source. Register new sources erring overcomplete — cheap to reject
   later, costly to miss a central one. Mark each provenance tier; keep the
   no-voice evidence layer distinct from the author's voice/thesis.

## Output

1. The triage table (every section → class → one-line reason), author-confirmed
2. Per-section report artifacts for every section hardened or partially hardened
3. The consolidated OUTCOME INDEX
4. The tiered close-out (ready / needs-confirmation / thin-still / skipped)
5. Ledger updates folded, with provenance tiers and new sources registered
6. Author decisions needed: contested triage calls, final claim strengths, reframes

## Verification

- Every section was triaged before any dispatch; the harden/skip split was
  author-confirmed.
- Conceptual / constructive sections were skipped on purpose with a reason — not
  hardened. Over-hardening did not happen.
- Heterogeneous breadth came from the lead crossing model families/tools; no
  instruction told a subagent to spawn subagents.
- Every load-bearing identifier and headline figure was fetch-verified against
  the live primary source, not recalled.
- "Previously corrected" ledger entries were re-verified, not trusted.
- There is one report per hardened section and a single consolidated outcome index.
- Disconfirming evidence is surfaced; reframes that supersede green-lit claims
  are flagged, never silent; mixed evidence is left mixed, not smoothed.
- Verified evidence was folded to the ledgers; central new sources were ingested
  and registered with provenance tiers.
- The author set final claim strengths; nothing was committed without say-so.

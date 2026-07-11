---
name: run-section
description: Run the per-section build loop end to end — refine the section's goals, then walk build-outline → frankendraft → compose-section → final-audit-pass → minimal-edit → harden-claim (late, on the drafted text) → fold to the ledgers. Use to drive a single section from a settled contract to hardened, audited prose. Granularity-aware: it skips stages by stakes rather than forcing the full chain. For the whole-draft claim-hardening sweep, use run-claim-harden; for one section's assembly only, use compose-section.
tier: runbook
role: orchestrate
calls: build-outline, frankendraft, compose-section, final-audit-pass, minimal-edit, harden-claim
---

# Run Section — the per-section build loop

The **runbook** for taking one section from a settled goal to hardened, audited
prose. It dispatches the sibling skills in a fixed order, but it is a
**granularity-aware orchestrator, not a forced chain**: it skips stages by
stakes (see `../../references/writing-skill-common.md` risk tiers and the router
granularity notes). A thin or low-stakes section walks fewer stages; a
load-bearing one walks all of them.

The loop, in order:

1. **Refine section goals** (human-led) → settle the section contract.
2. **`build-outline`** (read `../build-outline/SKILL.md`) → render the contract.
3. **`frankendraft`** (read `../frankendraft/SKILL.md`) → verbatim raw substrate.
4. **`compose-section`** (read `../compose-section/SKILL.md`) → assembled prose.
5. **`final-audit-pass`** (read `../final-audit-pass/SKILL.md`) → slop / voice / scaffold.
6. **`minimal-edit`** (read `../minimal-edit/SKILL.md`) → diff-level revision.
7. **`harden-claim`** (read `../harden-claim/SKILL.md`) → **late**, on the
   drafted text.
8. **Fold** claim-hardening into the ledgers.

**Claim-hardening is late, by design.** It runs on the *drafted* text because it
targets the nuance lost in composing — the load-bearing distinctions that get
smoothed when raw spans are transported and holes are filled. **Pre-writing
evidence-gathering is NOT in this loop**; gather the evidence base before
entering, or run `run-claim-harden` as the whole-draft sweep afterward. Running
harden-claim before the prose exists hardens the wrong thing.

If available, read `../../references/writing-skill-common.md` for the risk tiers
and markers. If `../../voice/voice-card.md` exists, read the active register and
the "author's own / do-not-flag" entries; use only the relevant entries.

## Mode

EXPAND (the section is being built). Each dispatched skill keeps its own mode —
`final-audit-pass` runs AUDIT, `minimal-edit` runs EDIT.

## Granularity — skip by stakes, do not force the chain

This is the load-bearing discipline. Before each stage, ask whether the section's
stakes warrant it; skip the ones that do not.

- **Refine goals + `build-outline`**: always — a section with no settled contract
  is not ready to draft. For a tiny or already-contracted section this can be a
  one-line confirmation, not a full re-architecture.
- **`frankendraft`**: when the author has raw material to transport. A pure
  hole-fill section (no raw) can go straight to `compose-section`, which then
  generates every span from sources.
- **`compose-section`**: always — this is where the prose is assembled.
- **`final-audit-pass`**: scale its `scope` to the section; a short low-stakes section
  may take only the slop/voice pass and skip the scaffold check.
- **`minimal-edit`**: when the assembly left seams or local prose to tighten;
  the `compose-section` seam pass may already suffice.
- **`harden-claim`**: **only on sections with load-bearing, contestable,
  currently-thin claims** (its own triage owns the rule). Skip conceptual or
  constructive sections — re-research won't harden an argument-of-structure, and
  the added depth over-centers the artifact.

## Human-in-the-loop gates

Per the contract, stop for the author at these points — do not walk past them:

- **Architecture** (after refine-goals / `build-outline`): the section contract
  and any reorder are the author's to approve before drafting.
- **Claim strength** (during/after `harden-claim`): the author sets final
  strength, stance, and framing; a reframe that supersedes a green-lit claim is
  flagged (`[reframed … — author to confirm]`), never silent.
- **Finalize**: the section is presented as a reviewable surface, not committed.

Each dispatched skill also keeps its own gates; this runbook does not override
them.

## Procedure

1. **Refine section goals** with the author until the section contract is
   settled: bounded unit, what it must claim, what it must not claim, source
   material, evidence needed, register, connection to adjacent units,
   underspecified points. **Gate: architecture.** Do not proceed on a vague goal.

2. **`build-outline`** — render the per-section outline contract the drafting
   skills consume (Purpose / Must-claim / Must-not-claim / Source-hooks / beats).
   For an already-locked outline, this is a confirm-or-re-architect step.

3. **`frankendraft`** (if raw material exists) — assemble the verbatim-only raw
   substrate and mark the holes.

4. **`compose-section`** — assemble the section span by span (raw spans
   transported, holes filled small and marked, then a seam pass). Carry its
   audit notes forward.

5. **`final-audit-pass`** (scope: section) — slop-scan + voice-audit, then the
   scaffold check at the stakes the section warrants. Auto-resolve only
   local low-risk word/phrase issues; hold author-needing ones.

6. **`minimal-edit`** — diff-level revision of what the audit surfaced and the
   author approved. Carry protected decisions forward: do not silently undo a
   choice an earlier stage deliberately kept.

7. **`harden-claim`** (late, on the drafted text) — for each load-bearing,
   contestable, thin claim the audit flagged: pose the sharp question, fan out,
   fetch-verify, synthesise honestly, let the author set strength. Skip
   conceptual sections. **Gate: claim strength.**

8. **Fold** the verified evidence into the ledgers (claim / source /
   bibliography / outline), per `../finalize-document-with-audit/SKILL.md`. Do not leave
   hardened evidence loose.

## Output

1. The settled section contract
2. The section prose (composed, audited, edited, hardened)
3. Which stages ran and which were skipped, with the stake reason for each skip
4. Audit notes carried from the dispatched skills (slop / voice / scaffold)
5. Claim-hardening results folded to the ledgers (or the skip reason)
6. Author decisions needed: architecture, claim strength, framing

## Verification

- A settled section contract existed before any drafting (architecture gate met).
- Skipped stages each have a stated stake reason — the chain was not forced, and
  no warranted stage was silently dropped.
- `compose-section` ran (the prose was assembled), not single-context walked.
- `harden-claim` ran late, on the drafted text — not before the prose existed —
  and only on load-bearing contestable claims; conceptual sections were skipped.
- Pre-writing evidence-gathering was kept out of the loop.
- Protected decisions from earlier stages survived later ones.
- The author set claim strength; reframes that supersede green-lit claims are
  flagged, never silent.
- Verified evidence was folded to the ledgers, not left loose.
- The section is a reviewable surface; nothing was committed without the author's
  say-so.

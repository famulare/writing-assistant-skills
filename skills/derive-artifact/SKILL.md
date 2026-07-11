---
name: derive-artifact
description: Produce a downstream artifact — executive summary, reader memo, cover note — from a finished dossier. Use to extract the source's spine, build an outline for the new form, compose under heavy voice control (the hole-fill path dominates), and audit; the derived artifact re-asserts the source's hardened claim strengths, marks any new framing as authored, and invents no unsourced claim. For composing a section of the source document itself, use compose-section.
tier: orchestrator
role: transform
calls: extract-argument, build-outline, compose-section, final-audit-pass
---

# Derive Artifact

> **v0 / PROVISIONAL.** Evidence for this skill is thin (one autonomous run);
> expect a near-term revision. Treat the shape below as a first draft.

The **orchestrator** for producing a *downstream* artifact from a *finished*
source — an executive summary, a reader memo, a cover note — not for drafting the
source document itself. The source dossier is the authority; the derived artifact
is a re-rendering of it into a new form, with no new evidentiary base of its own.

Distinct from `compose-section`: that assembles a section *of the source
document* from its own scaffold and raw spans. This skill takes a *finished*
dossier and re-renders its spine into a *different artifact* for a different
reader. Almost every span here is a hole — there is rarely raw text for the new
form — so the **hole-fill path dominates, and the heaviest voice control
applies.**

If available, read `../../references/writing-skill-common.md`. If
`../../voice/voice-card.md` exists, read it for the active register and the
"author's own / do-not-flag" entries — heaviest voice control applies because the
hole-fill path dominates. Use only the relevant register or voice-card entries;
do not paste or summarize the whole card unless asked.

## Mode

EXPAND, source-bounded. The new artifact may only say what the finished dossier
already supports. No span introduces evidence the source does not carry.

## The non-negotiable constraint — fidelity to the source ledger

The derived artifact is downstream of hardened work. It must not loosen it.

- **Re-assert the source's hardened claim strengths.** A claim that was hardened
  to a calibrated strength in the source ledger carries *that exact strength*
  into the artifact. A summary that rounds a hedged claim up to a confident one,
  or drops a caveat for brevity, is a certainty drift — surface it, do not commit
  it.
- **Mark any new framing as authored.** A summary necessarily adds connective
  framing, emphasis, and ordering the source did not have. Any such move is an
  authored interpretation: mark it `[CLAIM RISK: …]` (or `[SCOPE RISK: …]` for a
  scope/audience shift), do not blend it in as if it came from the source.
- **Invent no unsourced claim.** If the new form seems to need a fact the dossier
  does not carry, mark the hole (`[EVIDENCE NEEDED: …]`), do not fill it. The
  artifact has no independent evidence-gathering loop.

## Procedure

1. **Extract the spine → `extract-argument`** (read `../extract-argument/SKILL.md`).
   Pull the source's central claim, the load-bearing subclaims, the evidence each
   rests on, and the uncertainty — from the *finished* dossier, with its ledger
   claim strengths attached. The spine is what the artifact must carry; everything
   else is what the new form is allowed to drop.

2. **Build the outline for the new form → `build-outline`** (read
   `../build-outline/SKILL.md`). Render the section contract for the *target*
   artifact, not the source: its reader, its length budget, what it must claim,
   what it must not claim, and which spine elements map to which beats. The new
   form reorders and compresses — make that visible in the outline, do not hide it.

3. **Compose under heavy voice control → `compose-section`** (read
   `../compose-section/SKILL.md`). Because almost every beat is a hole, the
   hole-fill path dominates: each is a bounded generate-from-sources span in its
   own fresh-context agent, primed with the anchor exemplar and the polished left
   neighbor, synthesizing only from the dossier. Keep the heaviest voice control
   on this path. Re-assert ledger claim strengths as each span is composed; mark
   authored framing `[CLAIM RISK: …]`; mark missing support, do not fill it.

4. **Audit → `final-audit-pass`** (read `../final-audit-pass/SKILL.md`). Run the independent
   audit over the derived artifact: slop-scan + voice-audit, and — the move that
   matters most here — confirm every claim strength matches the source ledger and
   every new framing move is marked. Surface drift and unmarked interpretation for
   the author; do not silently smooth.

## Closing self-screen (before presenting)

Run, do not skip:

- For every load-bearing claim carried from the dossier, **re-assert its exact
  ledger strength** and surface any certainty drift the derivation introduced.
- Confirm no claim in the artifact lacks a source in the dossier; flag any that
  does as `[EVIDENCE NEEDED: …]`, not as a quiet addition.
- Run the `slop-scan` tell-list (read `../slop-scan/SKILL.md`) over your own
  draft — a summary form drifts toward generic register fast.

## Provenance fold

Fold nothing new into the source ledgers — this artifact derives *from* them and
adds no evidence. Record the artifact itself, its mapping back to the spine, and
any author decisions in the audit trail — see `../finalize-document-with-audit/SKILL.md`.

## Output

1. Target artifact contract (reader, form, length, must/must-not-claim)
2. The derived artifact prose (composed, audited)
3. Audit notes
4. Self-screen result (certainty drift + unsourced claims + residual slop, if any)

Audit notes should include:

- the spine elements carried and the ones dropped (and why)
- per beat: which spine element it renders, and the span agent's id
- new framing introduced (and its `[CLAIM RISK]` / `[SCOPE RISK]` markers)
- any claim-strength comparison against the source ledger
- unsupported material (`[EVIDENCE NEEDED]`)
- author decisions needed

## Verification

- Every claim in the artifact maps to the finished dossier; none is invented.
- Hardened ledger claim strengths are re-asserted exactly, not loosened or
  rounded; introduced certainty drift is surfaced.
- New framing, emphasis, and reordering are marked as authored, not blended.
- The hole-fill path ran under the heaviest voice control; spans were
  voice-controlled, not authored-around.
- The independent audit ran; drift and unmarked interpretation are surfaced.
- The artifact adds no evidence to the source ledgers.

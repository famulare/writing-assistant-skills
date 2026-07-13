---
name: voice-costume-audit
description: "Audit a finished whole artifact for an invented document-wide rhetorical persona: a genre costume, narrator, reader relationship, or epistemic posture not earned by the author's source language, the artifact contract, or explicit author decisions. Uses a mandatory independent blind-then-reveal review. Not for local phrasing drift (use voice-audit or slop-scan)."
tier: leaf
role: audit
calls: —
---

# Voice Costume Audit

Use on a finished **whole artifact** when its sentences may be locally competent
but the assembled document seems to perform an author, genre, or stance that the
source did not authorize.

If available, read `../../references/writing-skill-common.md` and the voice
costume reviewer prompt in `../../references/independent-review-prompts.md`.

## Question

> What kind of author has the assembled document invented, and where did the
> artifact obtain permission to speak that way?

The audit tests the cumulative narrator, reader relationship, epistemic posture,
degree of explanatory control, first-person stance, intimacy or institutional
distance, humor, cleverness, compression, friction, and repeated genre moves.

## Mode and independence

AUDIT, propose-only. Run in a fresh independent context that did not draft the
artifact and has not seen drafting rationale, prior audit conclusions, or the
desired answer. A same-context pass is only a labeled pre-screen.

The audit is **diagnostic, not corrective**. Costume is not synonymous with
failure: genre conventions, strategic distance, accessibility, or a deliberate
public persona may justify keeping it. A finding identifies a consequential
authorial choice; it does not decide that the artifact should be de-costumed.

The blind/reveal order is mandatory:

1. Give the reviewer **only the finished artifact and its artifact type**. Do
   not provide the raw source, outline, voice card, author identity, drafting
   history, or suspected failure.
2. The reviewer writes and freezes the blind persona profile.
3. Only then reveal the minimum authority evidence: raw author language or
   frankendraft, artifact/audience/register contract, relevant voice dossier and
   active voice-card entries, accepted/rejected revisions, and explicit author
   decisions. Do not reveal another audit's conclusions.
4. The same reviewer maps the already-inferred persona against that evidence.

If the two stages cannot be isolated, stop or label the result a contaminated
pre-screen; do not call it independent verification.

## Boundaries

This skill owns **document-wide persona construction**. It does not own:

- phrase- or paragraph-local generic language (`slop-scan`)
- passage-level fidelity to author language (`voice-audit`)
- claim support (`claim-audit`)
- section ownership, ordering, or redundancy (`scaffold-architecture-audit`)
- general document coherence or attractiveness

A genre convention is not automatically a costume. Formality, accessibility,
first person, humor, or polish may be required by the artifact contract or
earned by the source. Absence of verbal quirks is not itself drift. Do not infer
a costume from topic, grammatical correctness, or professional register alone.

## Procedure

### A. Blind persona profile

Read the artifact as a reader would and record:

1. **Implied speaker:** expertise, authority, social position, and self-location.
   Disaggregate authority by domain, corpus, method, and recency: long experience
   in one area must not silently become longstanding expertise in a newly entered
   literature or adjacent field.
2. **Reader relationship:** peer, explainer, advocate, institutional voice,
   confessor, provocateur, guide, or another recurring relation.
3. **Epistemic posture:** exploratory versus settled; calibrated versus
   omniscient; observational versus thesis-first.
4. **Genre performance:** recurring moves that make the artifact resemble a
   recognizable report, thinkpiece, blog, memo, personal essay, or explainer.
5. **Persona mechanisms:** repeated opening, transition, section-heading,
   anecdote, emphasis, and closing choices that create the effect.
6. **Counter-signals:** passages whose texture resists or complicates the
   inferred persona.

Freeze this profile before receiving authority evidence. Group related signals
into **five to eight rows**; do not turn the blind profile into a line-edit list.

### B. Authority map after reveal

For every **verdict-relevant** persona trait, identify its authority. Group
source-earned traits that share the same mechanism; do not exhaustively map
minor stylistic observations that cannot change the verdict:

- **source-earned** — supported by direct author language or demonstrated voice
- **contract-required** — needed by the explicit audience, register, or form
- **author-approved exception** — explicitly accepted for this artifact
- **unsupported costume** — imposed without authority and governing enough to
  change who appears to be speaking
- **underdetermined — author call** — plausible but not resolvable from evidence

Ground each classification in specific artifact language and specific authority
evidence. Do not convert a missing example in the voice card into proof of
absence; direct source language outranks a distilled card.

### C. Whole-artifact verdict

Choose one:

- **No material costume** — the governing persona is earned or required.
- **Localized costume pressure** — unsupported recurring moves exist but do not
  govern the artifact.
- **Artifact governed by an unsupported persona** — cumulative choices invent a
  speaker or genre performance that materially displaces the authorized voice.

State confidence and the strongest discriminator that could change the verdict.

### D. Repair scope

Do not rewrite or presume that repair is desirable. Return the finding to the
human in the loop, who may choose to keep, modify, or remove the costume. Identify
the smallest viable repair strategy only so that the choice is concrete:

- preserve as-is
- replace or remove a recurring framing device
- revise bounded openings, bridges, or closing moves
- re-run selected spans through transport from the frankendraft
- recompose from the shared source substrate when the costume is governing

Every keep/change decision about a detected persona is high-risk and remains an
author decision. In an explicitly autonomous demo, a designated demo agent may
simulate that decision to exercise the workflow, but must label and log it as a
simulation; it is not author approval and must not advance the artifact to final.

## Output

### Blind persona profile (frozen before reveal)

| Dimension | Artifact implies | Artifact evidence |
| --- | --- | --- |

### Authority map

| Persona trait or mechanism | Authority evidence | Status |
| --- | --- | --- |

### Verdict

One of the three verdicts, with confidence and the strongest discriminator.

### Governing findings

| Costume mechanism | Artifact-wide evidence | What it displaces | Smallest repair strategy | Risk |
| --- | --- | --- | --- | --- |

Limit governing findings to the **five or fewer** mechanisms that could change
the whole-artifact verdict or require an author decision.

Then add:

- authentic anchors to preserve
- author decisions needed, explicitly including **keep as-is** where defensible
- independence record: reviewer, blind inputs, reveal inputs, and whether the
  blind profile was frozen before reveal

## Verification

- The reviewer was independent of drafting.
- The blind pass received no source, voice, drafting, or suspected-failure cues.
- The blind profile was persisted before the reveal.
- Findings are cumulative and document-level, not a renamed list of bad phrases.
- The audit distinguishes general expertise from authority over a specific
  corpus, method, period, or adjacent field.
- Every status cites both artifact evidence and its authority or lack thereof.
- Contract-required genre behavior is not mislabeled as costume.
- Direct author language outranks voice-card summaries.
- No whole-artifact persona repair was silently applied.
- A costume finding was routed to the human for a keep/modify/remove decision;
  the audit did not treat detection as a mandate to change.
- Any demo-agent adjudication is visibly labeled simulated and not author-approved.

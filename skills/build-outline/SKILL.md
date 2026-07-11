---
name: build-outline
description: Build (or re-architect) THE outline before drafting prose — the canonical outline skill. Two stages — an analytical skeleton matrix (section structure, claim placement, evidence mapping, transition logic, citation needs, gaps, risk flags), then the per-section outline contract (Purpose / Must-claim / Must-not-claim / Source-hooks / beats) that frankendraft and compose-section consume. Use when Mike needs a structure before drafting, asks "do we have a skill for the outline?", or wants to re-architect an existing (even locked) outline against a new framing. Produces the section contract; compose-section consumes it.
tier: leaf
role: input
calls: —
---

# Build Outline

The outline skill. Use after `source-manifest` or `extract-argument` when the
next step is structure, not polished prose — or any time the live question is
"what is the outline / can we rework the outline." Produces the section contract
that `frankendraft` and `compose-section` consume.

If available, read `../../references/writing-skill-common.md` for shared risk
tiers and verification goals.

## Mode

EXPAND (building fresh). EDIT discipline on the contract when re-architecting an
existing outline — see Stage 2.

## Goal

Produce an auditable structure, then render it in the working contract format
downstream skills read. Two stages: the analytical pass that decides the
structure, and the contract pass that writes it down for drafting.

## Stage 1 — analytical skeleton

The reasoning surface. Decide the structure here and keep the reasoning visible.

1. State the source or extracted argument being structured.
2. Propose sections in the order that best preserves the argument.
3. For each section, identify purpose, claim, evidence, citation needs,
   transition logic, known gaps, and risk flags.
4. Make reordering visible. Do not hide it inside a clean outline.
5. Mark unsupported sections instead of smoothing over them.

Output this table:

| Section | Purpose | Claim | Evidence | Citations needed | Transition logic | Gaps | Risk flags |
| --- | --- | --- | --- | --- | --- | --- | --- |

Then add:

- Reordering notes
- High-risk structural decisions
- Author decisions needed

## Stage 2 — render the section contract

Render the ordered skeleton as one **section contract** per section — the
working format `frankendraft` arranges to and `compose-section` composes from.
Do not skip this stage: the skeleton matrix is the reasoning; the contract is the
hand-off.

For each section, in final order:

- **Purpose** — what this section does for the argument (one line).
- **Must-claim** — the claims this section is responsible for, at the strength
  the source supports. Carry hedging/uncertainty through verbatim; do not round
  it off.
- **Must-not-claim** — claims that belong to another section or that the sources
  do not support. This is the guardrail against the drafter over-reaching.
- **Source-hooks** — the specific source material (manifest entries, artifacts,
  voice spans) that supports each must-claim. Where nothing yet supports a
  must-claim, write the gap as a marker (`[EVIDENCE NEEDED: …]`,
  `[VERIFY CITATION: …]`, `[UNDERSPECIFIED: …]`), never as plausible filler.
- **beats** — the ordered beats inside the section. A beat is one move the prose
  makes; each becomes a span (raw or hole) downstream.

Keep claim strength, scope, and uncertainty identical to Stage 1 — the contract
records the structure, it does not re-decide it.

## Stage 2 (iterative) — re-architect an existing outline

When an outline already exists (even a locked one) and the framing has changed,
do not rebuild from scratch and do not silently overwrite. Govern the change:

1. **Evaluate current beats against the new framing.** Walk the existing contract
   beat by beat and tag each: **keep** (still earns its place), **reorder** (right
   content, wrong position), **orphan** (no longer serves the framing — park it,
   do not delete), or **add-new** (the framing needs a beat that does not exist).
2. **Surface the structural moves.** Reordering, orphaning, and added beats are
   high-risk structural changes (`writing-skill-common` risk tiers). Present them
   with one-line rationales and **let the author decide** — propose, map, and ask;
   do not apply a re-architecture autonomously. Orphaned beats stay visible as a
   parking list so nothing is lost silently.
3. **Refill the contract.** Once the author rules, re-render the affected sections
   in the Stage 2 contract format. Re-assert each must-claim's strength against
   its source-hook; flag any certainty drift the re-framing introduced.

## Output

1. Stage 1 skeleton matrix + reordering / high-risk / author-decision notes.
2. Stage 2 section contracts (Purpose / Must-claim / Must-not-claim /
   Source-hooks / beats), in final order.
3. When re-architecting: the keep / reorder / orphan / add-new evaluation and the
   parking list, before the refilled contracts.
4. Suggested next bounded drafting unit.

## De-confliction

`build-outline` **produces** the section contract; `compose-section` **consumes**
it (and `frankendraft` arranges verbatim to it). Do not duplicate compose-section's
composing procedure here, and do not draft prose — this skill stops at the
contract.

## Verification

- The skeleton preserves the extracted argument; reordering is visible and
  justified; unsupported sections are flagged.
- The skeleton does not create conclusions unsupported by sources.
- Every section has a contract with all five fields; every must-claim has a
  source-hook or a marker.
- Claim strength, scope, and uncertainty match the source across both stages.
- When re-architecting: every existing beat is tagged keep/reorder/orphan; no
  beat is dropped without an author decision; orphans are parked, not deleted.
- The output stops at the contract — no drafted prose.

---
name: scaffold-architecture-audit
description: Pre-draft AUDIT of a raw scaffold's long-range cross-section architecture before the raw→polished transform. Use after build-outline/frankendraft and before compose-section to check section ownership and relocation, CROSS-SECTION redundancy (same fact/claim/source in multiple sections), within-section beat order, section-to-section handoff coherence (no near-duplicate boundaries; loops close), and structural integrity (numbering/heading gaps). Outputs reorder/relocate/de-dup recommendations to bake INTO the scaffold so the later transform is pure polish. Re-runnable as the scaffold grows. Owns cross-section redundancy; phrase/paragraph-local redundancy belongs to slop-scan.
tier: leaf
role: audit
calls: —
---

# Scaffold Architecture Audit

A **pre-draft, whole-scaffold structure audit**. Run it on the raw scaffold —
the `build-outline` outline and/or the `frankendraft` verbatim assembly — *after*
the architecture is roughly populated and *before* the per-section raw→polished
transform. The point is to settle the document's **long-range cross-section
architecture** while it is still cheap raw text, so the later transform is **pure
polish, not restructure-plus-polish**. Less for a one-shot pass to get wrong means
lower drift.

This audits the **raw + contract layer**, not finished prose. It reports and
recommends; it does **not** rewrite (Mode: AUDIT). The architecture decision is
the author's — this skill separates that decision from the polish that follows.

If available, read `../../references/writing-skill-common.md` for shared risk
tiers and verification goals, the skeleton/locked outline (`build-outline`), the
frankendraft and its hole map (`frankendraft`), and the source manifest
(`source-manifest`).

## Mode

AUDIT. Report findings and recommendations; bake nothing in silently. Reorder,
relocation, and de-dup are **medium/high-risk structural moves** — propose them
visibly with a rationale and leave the call to the author (risk tiers per the
contract).

## Boundary with slop-scan (read this)

This skill and `slop-scan` both touch redundancy; they own **different scales**,
and must not overlap:

- **slop-scan owns line/paragraph-LOCAL redundancy** — the same claim restated
  within a few sentences or one neighborhood (topic-sentence echo, mid-paragraph
  re-assertion). It reads the surrounding paragraph, not the whole document, and
  it repairs phrasing.
- **this skill owns CROSS-SECTION redundancy** — the same fact, claim, or source
  appearing in two or more *different* sections of the scaffold. It reads the
  whole scaffold, names which section should own the material, and recommends a
  relocation/de-dup. It does not repair phrasing.

When a redundancy is contained inside one neighborhood, defer to slop-scan; when
it spans sections, it is this skill's. State which scale a finding is at.

## Inputs

Use available:

- the raw scaffold: the `build-outline` outline and/or the `frankendraft`
  verbatim assembly, with section order and per-section contract (what each
  section must and must not claim)
- the source manifest and any claim/source ledgers (to detect the *same source
  or claim* surfacing in multiple sections)
- the frankendraft hole map, if present (holes are part of the architecture —
  flag a hole whose content already lives, verbatim, in another section)
- any prior run of this audit, so settled decisions are not relitigated

## Procedure

1. **Section ownership / relocation.** For each raw chunk, ask: does it belong in
   the section it currently sits in? Name chunks that are misfiled and the section
   that should own them. A chunk can be load-bearing yet in the wrong place.

2. **Cross-section redundancy.** Sweep the *whole* scaffold for the same fact,
   claim, definition, or source appearing in more than one section. For each,
   name the single section that should **own** it and recommend cutting or
   demoting the duplicate(s) to a cross-reference. (This is the cross-section
   scale — local restatement within one neighborhood is slop-scan's, see boundary
   above.)

3. **Within-section beat order.** For each section, check the order of its beats:
   does the claim land before the evidence it needs, do setups precede payoffs,
   is anything stranded? Recommend the minimal reordering.

4. **Section-to-section handoff coherence.** Read the boundaries between adjacent
   sections: does each handoff advance the argument, or does a section open by
   re-stating where the previous one closed (a **near-duplicate boundary**)? Do
   opened loops close — is a forward-reference ("returned to in §N") actually
   discharged? Flag dangling or un-closed loops and duplicated boundaries.

5. **Structural integrity.** Check numbering and heading hygiene: gaps or
   collisions in section numbers, orphaned/duplicate headings, levels that skip,
   a referenced §N that does not exist.

6. **Reorder-or-already-coherent, per section.** For each section, make the call
   explicit: **is reordering part of the transform that still has to happen, or
   is this section already structurally coherent and ready for pure polish?** This
   is the hand-off signal to `compose-section` — it says where the transform is
   polish-only and where it is restructure-then-polish.

## Output

Group recommendations so the **architecture decision (author's)** is separable
from the **polish that follows**:

| Finding | Type | Scale | Section(s) | Recommendation | Risk |
| --- | --- | --- | --- | --- | --- |

- *Type* ∈ {relocate, cross-section de-dup, beat-reorder, handoff/loop,
  numbering/heading}.
- *Scale* ∈ {within-section, cross-section} (cross-section redundancy is this
  skill's; mark any local one as "→ slop-scan").

Then add:

- **Architecture decisions needed** — the reorder/relocate/de-dup moves the
  author must approve before baking them into the scaffold.
- **Per-section transform status** — for each section: *already coherent (polish
  only)* vs *reorder still part of the transform* (the hand-off to
  `compose-section`).
- **Bake-in list** — once approved, the concrete edits to the raw scaffold (not
  the prose) so the downstream raw→polished transform is pure polish.

## Re-runnability

This is a **re-runnable** audit, not a one-time gate. Run it again whenever the
scaffold grows — new sections, new verbatim, filled holes. On re-run, do not
relitigate settled architecture decisions; report only what changed and what the
growth introduced (new cross-section duplication, new dangling loops, numbering
drift).

## Placement in the pipeline

build-outline → frankendraft (raw) → **scaffold-architecture-audit** →
compose-section (raw→polished per section) → minimal-edit seam pass.

This is the **pre-draft** architecture pass on the raw layer. It is distinct from
a report-only whole-document final pass over finished prose — this one runs
*before* the per-section transform, on raw text, so the transform inherits a
settled architecture.

## Verification

- Findings are reported, not silently baked in; structural moves are proposed
  with a rationale for the author's call.
- Cross-section redundancy is named at the cross-section scale; line/paragraph
  redundancy is deferred to slop-scan, not duplicated here.
- Each section carries an explicit reorder-or-already-coherent verdict.
- Relocation recommendations name the owning section, not just the duplication.
- Numbering/heading gaps are caught.
- A re-run reports only what changed; settled decisions are not relitigated.

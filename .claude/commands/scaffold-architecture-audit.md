# /scaffold-architecture-audit

Audit the long-range cross-section architecture of this raw scaffold before the
raw→polished transform:

`$ARGUMENTS`

Read these files if available:

- `references/writing-skill-common.md`
- `skills/scaffold-architecture-audit/SKILL.md`

Run on the raw scaffold (build-outline outline and/or frankendraft assembly),
before per-section drafting. Check section ownership/relocation, CROSS-SECTION
redundancy (same fact/claim/source across sections), within-section beat order,
section-to-section handoff coherence (no near-duplicate boundaries; loops close),
and numbering/heading integrity. Report reorder/relocate/de-dup recommendations to
bake into the scaffold — separate the architecture decision (the author's) from the
polish that follows, and mark each section as already-coherent vs reorder-still-needed.
Do not rewrite (Mode: AUDIT). Re-runnable as the scaffold grows.

This skill owns cross-section redundancy; for line/paragraph-local generic or
restated phrasing, use `/slop-scan` instead.

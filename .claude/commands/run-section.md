# /run-section

Run the per-section build loop for:

`$ARGUMENTS`

Read these files if available:

- `references/writing-skill-common.md`
- `skills/run-section/SKILL.md`

Refine the section goals with the author until the section contract is settled
(architecture gate), then walk the loop: `build-outline` → `frankendraft` →
`compose-section` → `final-audit-pass` → `minimal-edit` → `harden-claim` (late, on the
drafted text) → fold the verified evidence to the ledgers. It is a
granularity-aware orchestrator, not a forced chain: skip stages by stakes and
state the skip reason; skip `harden-claim` on conceptual sections. Stop at the
architecture, claim-strength, and finalize gates — the author sets claim
strength, and reframes that supersede green-lit claims are flagged, never silent.
Pre-writing evidence-gathering is not in this loop. To harden a finished draft's
claims across all sections instead, use `/run-claim-harden`.

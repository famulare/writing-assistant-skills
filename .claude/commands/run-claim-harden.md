# /run-claim-harden

Run the whole-draft claim-hardening sweep over:

`$ARGUMENTS`

Read these files if available:

- `references/writing-skill-common.md`
- `skills/run-claim-harden/SKILL.md`
- `references/independent-review-prompts.md` for fetch-verify patterns

Triage every section first — harden / partial / skip-conceptual / nothing — with
a one-line reason each, and confirm the split with the author. The skip rule is
real: skip conceptual and constructive sections on purpose, because
over-hardening them is the failure to avoid. Then dispatch `harden-claim` per
section that needs it (serial or parallel; as the lead you cross model families
and tools for breadth — a subagent cannot spawn subagents). Produce one report
artifact per section and a consolidated outcome index, close out by tier, and
fold verified evidence to the ledgers via `harden-claim`'s fold (which calls
`ingest-source` for any central new source). Surface disconfirming evidence;
flag reframes that supersede green-lit claims; the author sets final claim
strength. To run one section's full build loop instead, use `/run-section`.

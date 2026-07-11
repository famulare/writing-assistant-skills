# /final-audit-pass

Run an orchestrated audit sweep over a section or whole draft:

`$ARGUMENTS`

Read these files if available:

- `references/writing-skill-common.md`
- `skills/final-audit-pass/SKILL.md`

Take a `scope` (section | draft). (1) Dispatch `slop-scan` and `voice-audit` to
PARALLEL INDEPENDENT fresh contexts (cross-family where possible). (2) Merge
their findings and AUTONOMOUSLY resolve local low-ambiguity / low-semantic-risk
WORD- and PHRASE-level issues; HOLD any that could touch meaning, claim strength,
hedging, scope, terminology, or voice. (3) Run `scaffold-architecture-audit`,
auto-handling SENTENCE-level-or-smaller issues only. (4) For scope = draft, also
run the post-draft cross-section seam/bridge check — the cross-section echo
visible only once both sections are polished (distinct from compose-section's
intra-section seam and from scaffold-audit's raw-layer handoff). (5) Surface ALL
author-needing slop/voice AND scaffold/seam findings BATCHED at the end, with
proposed repairs.

The auto-resolve boundary is conservative: when in doubt, HOLD (low-risk applied,
medium/high deferred, per the contract's risk tiers). Carry forward any PROTECTED
decisions from prior passes — do not let a later auto-resolve undo a deliberately
kept earlier choice. Mode: AUDIT.

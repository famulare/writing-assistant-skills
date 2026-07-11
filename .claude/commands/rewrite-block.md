# /rewrite-block

Transport one existing raw author span into polished prose:

`$ARGUMENTS`

Read these files if available:

- `references/writing-skill-common.md`
- `skills/rewrite-block/SKILL.md`

Requires a raw span — this is pure transport, not generation. Pass 1
(raw-acausal / polished-causal): use LEFT RAW → LEFT POLISHED as the local
operator (shown not told), TARGET RAW for content and voice microstructure, and
RIGHT RAW for where the thought goes (so the span does not over-close or
summarize early) → emit TARGET POLISHED. Pass 2: seam-repair only, delegated to
`minimal-edit` — no restyle, no global improvement. Preserve claim strength,
hedging, terminology, and compression; mark missing support rather than
authoring it.

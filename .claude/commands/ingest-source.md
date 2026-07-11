# /ingest-source

Digest one new raw source into the working record for:

`$ARGUMENTS`

Read these files if available:

- `references/writing-skill-common.md`
- `skills/ingest-source/SKILL.md`

Save the source verbatim with a provenance header (origin, channel, date, how it
entered), then register it in the source registry with a status tier — err
overcomplete, register-and-flag when the tier is unclear rather than skip. Apply
the tracked-vs-local rule: correspondence, reader-private notes, and confidential
sources stay local and contribute synthesized facts only; never auto-commit a
confidential binary. Fetch-verify every identifier against the live source rather
than recalling it. Produce a fold-advisory to the claim ledger and bibliography —
proposed, not auto-folded; claim strength stays the author's. This is mid-project
single-source ingest; to map all controls before drafting, use `/source-manifest`.

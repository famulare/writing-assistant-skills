---
name: source-manifest
description: Build a source manifest for serious writing work. Use when the assistant must identify current instructions, centered source language, source artifacts, voice sources, evidence gaps, and conflicts before drafting, editing, auditing, or restructuring prose.
tier: leaf
role: input
calls: —
---

# Source Manifest

Use before serious drafting, expansion, restructuring, or audit work.

If available, read `../../references/writing-skill-common.md` for the shared
source hierarchy and output envelope.

## Goal

Identify the materials that control the task before prose is produced.

## Procedure

1. State the active user instruction from the current conversation.
2. Extract any centered source language from the current conversation.
3. List source artifacts and assign each a role:
   - evidence source
   - voice source
   - structure source
   - citation source
   - prior draft
   - constraint
   For every source that might control prose, also distinguish its authority:
   **evidentiary authority**, **voice authority**, or **task authority**. One
   artifact may have more than one role, but do not let authority transfer
   silently between roles.
4. Identify missing evidence or inaccessible artifacts.
5. Identify conflicts between sources.
6. Flag confidential or reader-private material (see below).
7. State what the AI is not allowed to infer from the manifest.

## Voice-source validity

- Direct author language, accepted author revisions, and register-matched
  author exemplars are voice evidence.
- An active voice card is compact guidance derived from evidence; it is not a
  substitute for the evidence when direct sources are available.
- Templates and filled example cards (including
  `references/voice-card-example-*`) demonstrate structure. They are **not
  governing voice evidence for a real task** unless the task explicitly tests
  that example as an example. A manifest that lists one as the governing voice
  source without direct author evidence is invalid; replace it with the active
  card plus direct evidence, or mark `[VOICE RISK: no direct register-matched
  evidence available]`.
- An AI draft may carry a hardened claim record, but it does not become voice
  authority for a later artifact merely because it is finished.

## Reader privacy and confidential sources

Some controlling material is sensitive even when it is legitimately in scope.

- **Never name an external recipient or reader in a tracked file.** Who the piece
  is for, and reader-specific notes written to steer it, stay out of version
  control — keep them in the conversation or in scratch the repo ignores.
- **Confidential internal sources contribute synthesized facts only.** Never
  carry their verbatim tables, figures, or quoted passages into the artifact; use
  the fact, not the lifted object.
- **A named-colleague attribution is an author decision.** Attributing a point or
  a personal communication to a named person is the author's call to make, even
  when it looks low-risk — surface it, do not assert it.
- **Never auto-commit confidential binaries.** Sensitive PDFs, datasets, or other
  binaries supplied as sources are not staged or committed on the assistant's
  initiative.

## Output

Use this structure:

| Source ID | Source | Role | Authority | Controls | Notes / gaps |
| --- | --- | --- | --- | --- | --- |

Then add:

- Active instruction
- Centered source language
- Evidence gaps
- Conflicts
- Human decisions needed

## Verification

- Current conversation is first.
- Source artifacts are not treated as interchangeable.
- AI drafts are not treated as evidence.
- Example cards are not listed as governing voice evidence for real prose.
- Claim authority and voice authority are distinguished when they come from
  different artifacts.
- Conflicts are surfaced rather than resolved silently.
- Missing sources are marked instead of guessed.

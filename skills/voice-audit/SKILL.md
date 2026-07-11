---
name: voice-audit
description: Audit whether prose still sounds like Mike by comparing it to supplied author-written text, accepted revisions, rejected revisions, or an evolving voice card. Use to detect generic AI drift, excessive smoothing, institutional register drift, lost compression, and harmful terminology substitutions.
tier: leaf
role: audit
calls: —
---

# Voice Audit

Use when prose may have become generic, over-smoothed, too institutional, or
less recognizably Mike's.

If available, read `../../references/writing-skill-common.md` and
`../../references/independent-review-prompts.md`. Independent review is the
default for this skill. If `../../voice/voice-card.md` exists, read it as the
active project voice card. If building or updating a voice card, use
`../../references/voice-card-template.md` as a template only. Use only the
relevant register or voice-card entries; do not paste or summarize the whole
card unless asked.

## Mode

AUDIT, run independently. Dispatch the audit to a fresh context that has not seen
the drafting rationale — a Claude subagent or a Codex review agent — using the
voice-audit reviewer prompt. Supply the reviewer the evidence, not just the
distilled card: the relevant register's `../../voice/dossiers/` entry and any
adjacent author-written text, with `../../voice/voice-card.md` as compact
guidance. A same-model pass is only a pre-screen. Repair only when asked or when
the bounded task includes revision.

## Inputs

Use any available:

- current source language
- adjacent author-written text
- prior writing Mike identifies as representative
- accepted revisions
- rejected revisions
- explicit feedback such as "this sounds like me" or "this does not"
- active voice card entries

## Procedure

1. Identify the comparison source.
2. Flag passages that preserve voice.
3. Flag passages that drift toward generic AI prose. Before flagging a
   connective, structure, or phrasing, check it against the voice card's
   "author's own / do-not-flag" list. If it is there, do not flag it.
4. Flag places where useful compression or conceptual texture was removed.
5. Flag terminology substitutions.
6. Distinguish a deliberate authorial exception from drift. When a move reads
   like drift but may be a knowing choice, surface it as a candidate for Mike's
   call — do not score it as error, and do not codify the one-off move as a rule.
7. Flag suspiciously-clean connective prose as a place to *re-roughen*. This is
   a generative move, a shift from the pure remove-slop framing: where a passage
   reads as smoothly-transitioned but texture-thin, propose that Mike may want to
   **add back** concrete detail, self-located observation, or first-person
   texture that smoothing stripped. Propose-only — name the spot and the kind of
   texture that fits; the author decides whether to add it.
8. Propose repairs only at the smallest useful unit.
9. Capture reusable voice-card observations when appropriate.

## Output

Use this table:

| Passage | Voice status | Evidence | Proposed repair |
| --- | --- | --- | --- |

Then add:

- preserved-voice examples
- drift examples
- voice-card candidates
- author decisions needed

## Verification

- The audit uses supplied voice sources when available.
- Findings identify specific language, not vibes.
- No flag fires for an item on the voice card's do-not-flag list.
- Deliberate authorial exceptions are surfaced for Mike's call, not scored as drift.
- Repairs preserve the original argument.
- Distinctive friction is treated as possible signal.
- Suspiciously-clean connective prose is flagged as a re-roughen candidate, not
  passed as fine; the proposal names the texture to add and leaves the call to Mike.
- The voice card is descriptive, not a caricature.

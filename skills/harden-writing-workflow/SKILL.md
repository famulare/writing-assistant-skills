---
name: harden-writing-workflow
description: Review a writing-assistant session to improve the skillset. Use when Mike wants to identify where he had to override, correct, restate, or heavily steer the assistant, then harden existing skills, add voice-card examples, improve verification, or propose new subskills.
tier: meta
role: meta
calls: —
---

# Harden Writing Workflow

Use after one or more writing-assistant sessions to improve the workflow.

If available, read `../../references/writing-skill-common.md` and
`../../references/voice-card-template.md`. For independent review patterns,
read `../../references/independent-review-prompts.md`.

**For a multi-session or large-corpus pass** (reviewing a whole project's session history, not
one session), follow `../../references/hardening-contract.md` — the authority model and the
multiscale evidence-gathering + plan/independent-review/re-plan method — with
`../../hardening/2026-06-16-comprehensive-pass/plan.md` as the worked example. The procedure below
is the single-session core.

## Mode

HARDEN. Do not relitigate authorship or rewrite the finished artifact unless
asked. The task is process improvement.

## Inputs

Use available:

- session transcript or relevant excerpts
- artifacts produced during the session
- Mike's corrections, overrides, and rejected outputs
- repeated restatements by Mike
- places where the workflow created friction
- final accepted wording

## Procedure

1. Identify moments where Mike had to override, correct, restate, or steer.
2. Preserve the reason for each override.
3. Classify each issue:
   - one-off preference
   - missing skill instruction
   - unclear skill boundary
   - missing subskill
   - weak verification step
   - voice-card example candidate
4. Propose the smallest useful skill change.
5. Identify whether the fix belongs in:
   - the core skill
   - a specific slash skill
   - the voice card
   - a shared reference
   - an example library
   - a new skill
6. Produce patch-ready recommendations when files are available.

## Output

Use this table:

| Session moment | What Mike had to do | Failure mode | Proposed hardening |
| --- | --- | --- | --- |

Then add:

- skill edits proposed
- voice-card additions proposed
- new subskills proposed
- verification improvements proposed
- open questions

## Verification

- Distinguish one-off preference from recurring workflow failure.
- Do not convert Mike's correction into generic AI advice.
- Preserve the reason for the override.
- Prefer small skill changes before broad rewrites.
- Keep examples tied to actual accepted or rejected language.
- A hand-edit by Mike on *prose* is normal authorial control, **not** a silent
  rejection. Read it as a transport-operator sample — what the edit *added* or
  changed is the signal — not as the assistant failing. Reserve "rejection" for
  a wholesale discard/regenerate or an in-chat correction. Mis-scoring routine
  polish as rejection inflates the failure count and points hardening at phantom
  problems.


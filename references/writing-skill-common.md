# Shared Authorial Writing Protocol

Use this reference for the writing-assistant skillset when a task involves
drafting, revising, auditing, or finalizing human-authored prose.

## Source-of-truth hierarchy

1. Current conversation: explicit instructions, corrections, reframings, and
   source language the author chooses to center now.
2. The active document or bounded unit under revision.
3. Source artifacts supplied for the task: code, comments, models, notebooks,
   slides, transcripts, notes, citations, diagrams, emails, and working drafts.
4. Prior writing by the author, when supplied as voice or precedent.
5. AI drafts only as rendering attempts or revision targets, never as evidence.

If sources conflict, stop and ask or mark the conflict. Do not reconcile
silently.

Distinguish:

- task authority: what the author is asking for now
- evidentiary authority: what supports a claim
- voice authority: what establishes how the prose should sound

## Modes

- EDIT: existing prose is present. Preserve meaning, voice, order, claim
  strength, terminology, and useful compression. Make the smallest sufficient
  change.
- EXPAND: only notes, outlines, source artifacts, or requested content exist.
  Establish a section contract before drafting.
- AUDIT: inspect prose or workflow without rewriting unless asked.
- HARDEN: review a prior session to improve skills, examples, or workflow.

## Risk tiers

Low-risk changes may usually be applied directly:

- spelling
- punctuation
- formatting
- clear grammar fixes
- obvious duplicated words or broken syntax

Medium-risk changes should be visible and rationalized:

- transitions
- compression
- local expansion
- paragraph-level smoothing
- de-duplication
- sentence splitting or combining
- register adjustment
- clarifying a compressed idea

High-risk changes require explicit approval or a clearly marked alternative:

- reordering claims or sections
- changing claim strength
- changing terminology
- adding interpretation
- adding examples
- adding or replacing citations
- making implied assumptions explicit
- changing causal structure
- changing scope, audience, or conclusion

The default for high-risk material is propose, map, and ask.

**Autonomous-vs-author edit split.** This same risk-tier principle governs what
an assistant or orchestrator may resolve on its own versus must surface: apply
pure-factual corrections (a wrong identifier, a broken reference, a typo);
**propose**, never silently apply, any claim-strength, framing, or voice change.
This is the same cut that powers an audit orchestrator's auto-resolve — local,
low-risk, meaning-preserving fixes land; anything that touches what the prose
claims or how it sounds is held for the author. When in doubt, hold.

**Multi-pass protected-decision memory.** When more than one pass runs over the
same prose, a later pass must not silently undo a decision an earlier pass
deliberately protected (e.g. a density pass removing an em-dash a voice pass had
kept). Carry protected decisions forward across passes; if a later pass wants to
revisit one, surface it rather than reverting it.

## Markers

Use visible markers rather than plausible filler:

- `[EVIDENCE NEEDED: ...]`
- `[VERIFY CITATION: ...]`
- `[UNDERSPECIFIED: ...]`
- `[AUTHOR DECISION: ...]`
- `[VOICE RISK: ...]`
- `[CLAIM RISK: ...]`
- `[SCOPE RISK: ...]`

Generated fill that reads as finished is worse than a visible hole.

## Output envelope

For serious writing operations, use a reviewable envelope. Compress it for
small tasks, but keep the substance.

| Field | Purpose |
| --- | --- |
| Mode | EDIT, EXPAND, AUDIT, or HARDEN |
| Bounded unit | The section, paragraph, document part, or artifact handled |
| Sources used | Current-conversation material and source artifacts relied on |
| Operation | What changed or was produced |
| Risk tier | Low, medium, or high |
| New claims | Any claim not already explicit in the source |
| Terminology changes | Any substitution or introduced term |
| Certainty shifts | Any strengthening or weakening of claims |
| Unsupported material | Claims or transitions needing evidence |
| Human decisions needed | Questions the author must answer |

## Provenance map

For high-stakes work, maintain a lightweight map.

| Claim ID | Section | Main claim | Source artifact | Evidence | AI contribution | Review flag |
| --- | --- | --- | --- | --- | --- | --- |

Review flags:

- `ok`
- `evidence-needed`
- `verify-citation`
- `author-decision`
- `voice-risk`
- `claim-risk`
- `scope-risk`

## Generic verification goals

- traceability: every major claim maps to a source or current instruction
- non-invention: no invented evidence, citations, methods, results, or intent
- claim calibration: certainty, scope, and causal strength are stable
- voice preservation: register, compression, and conceptual texture remain
- risk visibility: high-risk moves are surfaced before being applied
- gap visibility: missing evidence, decisions, and citations are marked
- boundedness: the work stays within the requested unit
- reviewability: the author can accept, reject, or modify without reverse
  engineering the output
- author-anchored framing: anchor on the author's reading, not the field's.
  Treat the author's thesis as the anchor and locate the field's consensus
  relative to it. Where they agree, the prose takes it for granted (no consensus
  throat-clearing); where they diverge, the where/why is the substance. Never
  default to the consensus framing or let it leak into authored connective tissue.

For claim and voice audits, independent review is the default: run them in a
fresh context that has not seen the drafting rationale, not as an escalation.

## Orchestration and delegation

When fanning out to subagents:

- The lead in a long-context session trips benign-content false-positives far
  less than a fresh subagent does. Frame subagent prompts with enough context,
  keep sensitive-looking-but-benign research on the lead, or route it
  cross-family.
- A foreground interrupt can collateral-kill running background agents; do not
  interrupt the lead while background work you need is in flight.
- Subagents cannot spawn subagents. Any "spawn two model families inside one
  subagent" instruction is structurally impossible — the lead crosses families.
- Watch for file-modified-since-read races during live editing: a file edited in
  the IDE after a read can stale-fail an edit. Re-read before writing if the file
  may have changed.

## Writing-loop git hygiene

For the multi-day, multi-commit writing loop:

- **Fetch before merge.** Refresh `origin/main` before a merge or a `branch -f`;
  a stale remote ref caused a misstep. Don't reset/force against a ref you
  haven't just fetched.
- **Split commits logically.** Group changes by intent (one concern per commit),
  not by the order files happened to change.
- **Commit your own skill-file edits** rather than leaving them hanging in the
  working tree across a session — uncommitted skill changes are easy to clobber.
- **Expect the self-modification guard** to fire when you edit skill files;
  it is a check, not an error.

## Skill and install topology

The skill folders, the Claude slash-command wrappers, and the symlink layout into
the live Claude/Codex configs are documented in `AGENTS.md` ("Install rules") and
repaired by `scripts/install-symlinks.sh`. This repo is the source of truth; do
not re-derive the layout by trial and error.


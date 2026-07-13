# Independent Review Prompts

Independent review is the default for claim audit and voice audit, not an
escalation. Run the audit in a fresh context that has not seen the drafting
rationale or the desired conclusion: on Claude, dispatch a subagent; on Codex, a
separate review agent. A same-model pass in the drafting context is only a cheap
pre-screen. Give the reviewer only the context needed for the review, and never
the desired answer unless the task is explicitly compliance checking.

## Claim audit reviewer

Review the output against the source material. Do not rewrite. Identify:

- claims supported by supplied material
- claims not supported by supplied material
- certainty, scope, or causal-strength shifts
- invented or unverifiable citations, methods, results, or intent
- assumptions presented as findings
- caveats that were weakened or removed

Return findings with source references and a severity label.

## Voice audit reviewer

Review the output against the supplied author-written text and voice evidence
(for example, the relevant `voice/dossiers/` entry), not a distilled summary. Do
not rewrite unless asked. Identify:

- passages that preserve voice
- passages that drift toward generic AI prose
- places where useful compression or conceptual texture was erased
- terminology substitutions
- register drift
- repairs that would move the prose closer to the source

Ground each finding in specific language.

## Voice costume audit reviewer

Use only for a finished whole artifact. Run in two isolated stages with the same
fresh reviewer.

**Blind stage:** Give the reviewer only the artifact and its artifact type. Do
not disclose author identity, raw source, voice evidence, drafting history,
suspected failure, or desired result. Ask the reviewer to infer and freeze the
document's implied speaker, reader relationship, epistemic posture, genre
performance, recurring persona mechanisms, and counter-signals.

**Reveal stage:** Only after the blind profile is persisted, supply the raw
author language/frankendraft, explicit artifact contract, relevant voice evidence,
accepted/rejected revisions, and author decisions. Ask the reviewer to classify
each verdict-relevant inferred trait as source-earned, contract-required,
author-approved, unsupported costume, or underdetermined. Require evidence from
both the artifact and the authority materials. Check whether authority earned in
one domain, corpus, method, or time horizon has been inflated into authority over
another. Group the blind profile into five to eight rows and report no more than
five governing findings.

Return the frozen blind profile, authority map, whole-artifact verdict, authentic
anchors, smallest repair strategy, author decisions needed, and independence
record. Do not rewrite. Genre convention alone is not proof of costume, and a
costume finding is not itself a recommendation to remove it. Route the
keep/modify/remove choice to the human. In an explicitly autonomous demo, a demo
agent may simulate the choice only when it is logged as simulated rather than
author-approved.

## N-way comparative judge

Use when several candidate drafts of the same unit exist (for example, outputs
from different models, passes, or prompts) and the author needs them ranked.
Distinct from the per-draft reviewers above: those audit one draft against
sources or voice; this one chooses among drafts.

Anonymize the candidates and present them blind — strip model names, ordering
cues, and any signal of provenance, and shuffle the order. Then:

- Rank the candidates against the supplied criteria (for example, fidelity to
  sources, voice, claim calibration, compression).
- Give a one-line reason per ranking, grounded in specific language.
- Flag ties and near-ties rather than forcing a spurious order.
- Note any candidate that fails a hard constraint (invented evidence, certainty
  drift, scope creep) regardless of its rank.

Do not rewrite or merge candidates. Return the ranking, the reasons, and the
hard-constraint flags; final selection is the author's.

## Independence default when the author is also the auditor

A same-model self-pass over one's own synthesized prose is a pre-screen, not
verification — it shares the drafting context's blind spots. For verification,
use a fresh-context reviewer and, where the stakes warrant, a cross-family one
(a different model family). This holds with extra force when the agent that
drafted the prose is also asked to audit it: do not let a self-pass stand in for
independent review.

## Workflow hardening reviewer

Review a writing-assistant session transcript. Identify places where the author
had to override, correct, restate, or steer the workflow. Distinguish:

- one-off preference
- missing skill instruction
- unclear skill boundary
- missing subskill
- weak verification step
- voice-card example candidate

Propose small skill changes before broad rewrites.

## Delegation degraded mode

When a dispatched reviewer or subagent is blocked (refused, errored, or
unavailable), degrade gracefully — never silently stall. Cap retries, then fall
back across model families, then fall back to a labeled same-context pass marked
explicitly as a pre-screen rather than independent review. Surface which tier
actually ran so the author knows whether the result was independently verified or
only pre-screened.

# Hardening Contract — how this repo improves its own skills

> **STATUS: FINALIZED (v1, 2026-06-17).** The underlying working pattern is established
> cross-project practice [Mike: *"this is a pattern I use EVERYWHERE. I know it works even if
> it's the first in this repo"*]. This document's **repo-specific instantiation** (§4) — the
> digest/vocabulary/blindness mechanics — has been validated by the 2026-06-16 comprehensive pass
> ([worked example](../hardening/2026-06-16-comprehensive-pass/plan.md)) and two independent reviews
> (Opus completeness/coherence, Codex systems integration/error paths). The method is now wired
> into the skill as settled.
>
> This contract was itself produced by the pattern it describes: plan → independent
> cross-model review (a Claude Plan agent, then GPT-5.5 via Codex) → re-plan → execution →
> cross-review of implementation. It is dogfood.

## 1. Why this exists

`harden-writing-workflow` is the skill; this is the **method and the authority model** for
running it at scale. The mechanics of a hardening pass (gather evidence, dedup, propose edits)
are recoverable by any competent instance. What is *not* recoverable, and is the reason this
document exists, is the **judgment**: why review is un-anchored, why prior work counts as
evidence rather than ground truth, why discard stays on the table, why recurrence is the
decision variable, why review comes from a different model family. Those calls are the
hard-won part. A future instance reading the skill cold needs the intent, not just the steps.

This is the analogue, for *improving the skills*, of what
`Design-Contract-for-AI-Assisted-Writing.md` is for *the writing itself*. It is a separate
concern and a separate document on purpose — do not fold it into the writing contract.

## 2. Authority model (the load-bearing part)

These are the standing instructions for any non-trivial hardening pass, in Mike's framing:

- **The current pass is the authoritative one.** [Mike: *"this exercise you are leading is the
  authoritative first hardening pass… you have full control over final form, in collab with me
  in this session."*] Prior agents' outputs — committed edits, prior hardening logs, draft
  skills, approved-but-unapplied edits, earlier triage — are **evidence to evaluate, not a
  baseline to extend.**
- **Eval prior work fairly; discard is a live outcome.** [Mike: *"discarding narrow context
  work from other agents may be an outcome, may not. eval fairly."*] Narrow-context work
  (produced from one or two sessions) is neither authoritative nor disposable by default. It is
  judged against the full evidence: **keep / revise / revert / install / discard.**
- **Mike makes the calls; the assistant shapes the work.** Final wording, structure, and which
  hardenings land stay human-authored. The assistant runs the search, holds constraints
  explicit, and surfaces the decisions.
- **Multiscale search produces the deliverable.** [Mike: *"produce coherent, complete hardening
  plan from multiscale search."*] One coherent, deduplicated, recurrence-weighted plan — not a
  pile of per-session notes.

## 3. The general pattern (established practice)

Two sub-patterns are general and proven; reuse them beyond hardening.

### 3.1 Hierarchical, context-protected evidence gathering

When the evidence corpus is too large for one context (here: ~35 MB of session transcripts):
**distill → map → reduce → reconcile.** Subagents read raw evidence, **write findings to
files, and return only a summary + path** — the orchestrator never ingests raw bulk and its
context stays clean across many units. If a unit is too big even after distillation, split on
*semantic* boundaries (artifact/section), never mid-evidence, and give each chunk a shared
head-matter preamble so no chunk loses the context that makes a finding interpretable.

### 3.2 Plan → independent cross-model review → re-plan

Draft a plan; have it **red-teamed by an independent agent from a *different model family***;
revise in response; repeat as warranted. The cross-model part is load-bearing, not ceremony:
in the 2026-06-16 pass a Claude Plan agent caught a 27× resource-estimate error (and cut a
whole dead branch), while GPT-5.5 caught an anchoring flaw and a logic bug (a closed set that
would reject the very new file the plan proposed). Same-family review would likely have missed
one or the other. **Different models fail differently; that is the point of the second
reviewer.** Give the reviewer the prior review so it builds beyond it rather than re-deriving.

## 4. The hardening-specific method (PROVISIONAL — validated by first execution)

The instantiation of §3 for a hardening pass over session history. Full, worked detail —
schemas, phase prompts, corpus inventory — lives in the
[worked example](../hardening/2026-06-16-comprehensive-pass/plan.md); this is the shape.

0. **Extract** — distill each transcript to a compact dialogue digest (keep human turns,
   assistant text, tool/skill names; drop bulky tool output). Snapshot the live state of all
   target files at run-start (other agents may be editing). Emit an audit table of what was
   kept/dropped so false negatives are sampleable.

   > **Amendment (2026-06-22, pass #2).** *Scope the corpus by INTERNAL session timestamps,
   > never file mtime.* Transcripts get copied/restored (backup, git, sync), which resets mtime
   > to the copy date — pass #2 found old XL transcripts all mtime'd to a single copy date. Use
   > the jsonl `timestamp` field to place each session. For a session that spans the cutoff,
   > check **session-ID continuity** so a resumed tail is captured and its already-reviewed body
   > is not re-reviewed. *(Empirical note from the first run: on the
   subscription stack, model reasoning is stored only as an encrypted signature — not raw or
   summarized CoT — so diagnosis rests on observable text + the author's corrections + artifact/
   git divergence. That is the sounder basis regardless, since displayed CoT is known to be an
   unreliable account of the computation.)*
1a. **Index (cheap) → human checkpoint** — multiple complementary lenses catalog every place
   the human steered (explicit correction; silent/artifact-mediated rejection; worked
   patterns). The orchestrator reconciles them into a **closed vocabulary** (failure classes +
   recurrence keys) plus a coverage-risk note. **The human approves the vocabulary here** — it
   determines how every later finding is counted, so it is the one mandatory checkpoint.
1b. **Map (blind, deep)** — one agent per significant unit runs the harden skill, **blind to
   all prior conclusions and triage**, and emits *unlabeled* plain-language finding memos
   (discovery decoupled from the vocabulary being evaluated), cross-referenced to artifacts for
   accept/reject evidence. A **separate single classifier** maps memos onto the closed
   vocabulary, with a `registry-miss` bucket for genuinely new failures.
2. **Reduce** — compute a **multi-signal recurrence score** (distinct sessions, moments,
   artifacts, modes, dates; same-topic penalty), not a bare count. Run a **confirmation
   detector**: % of findings novel / confirming / contradictory versus prior logs — a
   zero-novel result is a blindness-leak alarm, not a success.
3. **Reconcile** — bring prior work in *as evidence* and assign each item a verdict (CONFIRM /
   EXTEND / CONTRADICT / NOT-SUPPORT) → disposition (KEEP / REVISE / REVERT / INSTALL /
   DISCARD). Respect prior human triage but flag where cross-session evidence changes it.
4. **Deliver** — one plan; each item carries problem · evidence · decision · exact target ·
   proposed text · disposition · **generalization tier** · over-hardening risk · test/check.
   Iterate with the human; apply edits (+ any mirrors) as a separate approved step.

## 5. Invariants

- **Recurrence is the build/keep decision variable.** Don't over-build on N=1; escalate to a
  general skill on demonstrated recurrence. (The same discipline applies to *this contract*:
  generalize a sub-pattern only when it has recurred — see §3 vs the deliberately un-built
  "any complex goal" generalization.)
- **Blindness enables fair eval.** Independent re-derivation, then compare. Agreement between an
  un-anchored derivation and a prior narrow-context log is real signal; divergence localizes
  narrow-context bias.
- **Anti-overfit.** Every shared-skill change must justify itself on a non-dossier
  counterfactual. Dossier- or register-specific learning routes to `voice/dossiers/` or a
  repo-local skill, **not** the shared skills.
- **Smallest useful change first.** Prefer a skill-instruction or verification-step edit before
  a new subskill; preserve the reason for every human override; tie examples to real accepted /
  rejected language.

## 6. Confidentiality & multi-agent coordination

- **Raw evidence and per-unit findings stay out of git** when the corpus carries confidential
  content (the writing transcripts do). Only the generalized, **sensitivity-scrubbed**
  deliverable is committed. Scratch lives outside any repo.
- **Track contract drift / live state.** Multiple agents may touch the same files. Snapshot at
  run-start, attribute changes by **provenance tier** (live human-endorsed > narrow-context
  committed > narrow-context uncommitted), and **never clobber another agent's uncommitted
  work** when applying edits — reconcile against the live diff.

## 7. How this wires into the skill

`harden-writing-workflow/SKILL.md` stays thin and points here. Single-session hardening runs
the skill directly; a **multi-session or large-corpus** pass follows this contract and the
worked example. Skills point to authoritative references; they do not inline them (the repo's
standing architecture).

## 8. Worked example

[`../hardening/2026-06-16-comprehensive-pass/plan.md`](../hardening/2026-06-16-comprehensive-pass/plan.md) —
the full plan for the first comprehensive pass (a multi-session TB-dossier writing effort's session history), including
the extractor design, closed vocabularies, phase prompts, prior-work inventory, and review
provenance.

## 9. Provisional status — what the first execution must validate

Revisit and finalize this contract after the 2026-06-16 pass runs. Open to revision:
- whether the digest extractor's steering-window heuristic actually catches artifact-mediated
  and delayed steering (or needs the git-divergence signal to carry more weight);
- whether the closed-vocabulary-at-checkpoint cost is worth it versus letting the classifier
  cluster post hoc;
- whether the multi-signal recurrence score discriminates better than session-count in
  practice;
- whether the confirmation detector ever actually fires (and what its healthy baseline is).

Only once these survive contact does the method (§4) graduate from PROVISIONAL and get wired
into the skill as settled.

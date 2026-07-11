---
name: harden-claim
description: Re-research, verify, and reframe a load-bearing, contestable claim from under-evidenced to evidence-dense and honest. Use to deepen or harden a thin or only-asserted claim — pose a sharp testable question, fan out read-only breadth-search subagents, fetch-verify every identifier and figure against the live source, synthesise honestly (reframe on overreach), let the author set claim strength, then fold the verified evidence into the working ledgers. This is the re-research LOOP that produces evidence; to audit defensibility of prose that already exists, use claim-audit instead.
tier: orchestrator
role: research
calls: ingest-source
---

# Harden Claim — the re-research loop ("DOTS")

Take a load-bearing claim from *asserted* to *evidence-dense and honest*. This is
a discipline-scaffold and an agent-orchestrator, not one-click automation. The
non-delegable move — posing the sharp question — is the author's and yours.
Subagents do breadth-search and fetch-verification; the synthesis and the fold
are yours; claim strength is the author's.

Distinct from `claim-audit`: that skill audits prose that already exists for
defensibility against supplied sources. This skill *generates* the evidence — it
re-researches a thin or contested claim from scratch and reframes it. Run this
when there is no evidence base yet to audit against, or the existing one is too
thin to defend.

If you cannot state, in one sentence, the sharp testable question this loop is
answering, you are not ready to run it. Stop and draft the question first.

## Mode

RE-RESEARCH, lead-orchestrated. The lead (the orchestrating context) fans out
read-only subagents and crosses model families. A subagent cannot spawn
subagents — so heterogeneous breadth is the lead's job, not a single subagent's.
Do not let an agent decide the claim; agents surface evidence, the human reads it.
This loop **calls `ingest-source`** for any central source it surfaces (see the
fold in step 6) and **folds through** the working claim/source/bibliography
ledgers.

## Inputs

Use available:

- the candidate claim and where it lives (which document, section, ledger)
- the source/evidence material already gathered, if any
- the author's thesis and current framing, to locate the claim against
- the working ledgers this folds into (claim, source, bibliography, outline)

## Procedure

1. **Pose a sharp, testable question** — not "find sources on X." Name the
   contrast and the confound; make it falsifiable. This is the rate-limiter and
   where the author's judgment is decisive. Draft candidate question(s); bring
   them to the author to sharpen before dispatching. A vague question returns a
   generic lit-review; a sharp one returns the decisive comparison.

2. **Fan out breadth-search subagents** (read-only, web-enabled), one per
   claim or sub-question, parallel where independent. The lead orchestrates this
   fan-out; do not instruct a subagent to spawn its own subagents. Each prompt
   must demand: the strongest **primary** sources; the contrast/comparator
   cases; **and the honest disconfirming evidence**; the actual findings and
   numbers, not just titles; and an explicit flag **if the claim is overreach.**
   The agent surfaces evidence including what cuts against the claim — it never
   decides the claim.

   **Cross model families at the lead, as a heterogeneous breadth node.** The
   lead dispatches subagents from more than one model family on the same sharp
   question — different families surface sources each misses alone and expose
   correlated blind spots. Treat every family's output as an untrusted breadth
   dump on equal footing: every identifier it returns goes through step 3
   fetch-verification, no exceptions. Cross-family calls may run on metered
   third-party quota — use them for genuine breadth passes, not reflexively, and
   not for long runs without a clear question.

   **Expect content-filter false positives on benign biomedical/historical
   material.** Factual but charged phrasing (mortality, autopsy, clinical or
   wartime detail) can trip a model's usage filter on an entirely legitimate
   query. Neutralize the phrasing before dispatch — ask for the documented fact,
   not the vivid detail — and if a subagent is blocked, **route to a different
   model family on the first block** rather than re-issuing the same prompt.
   Repeated identical retries waste turns and can poison context. Because you
   switched providers under duress, cross-check the fallback's output against a
   second source or the primary before folding.

3. **Fetch-verify every candidate identifier and figure** — a verification
   subagent (or a second pass) that fetches the live source page and confirms
   the identifiers (PMID/DOI/title/accession/version) refer to the same object,
   reporting the real findings. **Non-skippable.** Recall-based agent or LLM
   output is not trustworthy for identifiers — recall-based ID errors are the
   whole reason this step exists. A figure stated as a headline but lifted from
   a review or abstract must be traced to the primary source. Spot-check the
   load-bearing identifiers yourself.

   **Re-verify existing ledger attributions on a re-harden.** When you are
   re-hardening a claim, re-verify any existing ledger attribution it rests on —
   do not inherit it as settled. Treat **"previously corrected"** as a yellow
   flag, not a clearance: a prior correction can itself be wrong and survive
   precisely because it looks settled, and thin-claim triage skips exactly those
   entries. The attribution that already passed once still goes through the
   fetch-verify above.

4. **Synthesise honestly — does the evidence actually hold?** Integrate the
   findings with the thesis. If the claim is overreach, **reframe toward what
   the evidence supports** rather than forcing the narrative. Carry loose ends
   as loose; if the evidence is mixed, say so and reframe to the defensible
   claim. This is the editor's judgment — yours, not the agent's.

5. **Bring the synthesis and any reframe to the author.** Claim strength,
   stance, and framing are the author's. Flag a supersede explicitly
   (`[reframed … — author to confirm]`) rather than silently overwriting a claim
   the author green-lit.

6. **Fold the verified evidence into the working ledgers**, per the project's
   provenance conventions:
   - bibliography/source ledger — verified citations with identifier + one-line
     finding, grouped by the section they serve.
   - claim ledger — claims, distinguishing the **no-voice evidence layer** from
     the **author's voice/thesis**; mark the provenance tier.
   - outline/skeleton — compact, evidence-dense register; carry only live meta
     markers, not the full depth (that lives in the bibliography).
   - source registry — register any new source with its status tier. For any
     source the loop deems central, **ingest it via `ingest-source`** (read
     `../ingest-source/SKILL.md`) — digest, register with a status tier, and
     fold to the ledgers with fetch-verified identifiers, rather than registering
     it ad hoc here. The registry **errs overcomplete**: cheap to reject a source
     later, costly to miss a central one.
   - Prose-folding, when it comes, is governed by the drafting skills, not this
     one.

## Output

- the sharp question(s) actually run
- per sub-question: strongest primary sources, comparator cases, disconfirming
  evidence, with fetch-verified identifiers and real findings (not titles)
- the honest synthesis, with any reframe flagged for the author's confirmation
- the ledger updates proposed (verified evidence, provenance tiers)
- author decisions needed: final claim strength, stance, framing

## Triage — what warrants the loop

Run it on claims that are **load-bearing AND contestable AND currently thin or
only-asserted.** Strong candidates are empirical claims a skeptical reader would
attack on *evidence*.

**Do not run it on conceptual or constructive sections** — re-research won't
harden an argument-of-structure, and the added depth would over-center the
artifact. When in doubt, ask whether a skeptical reader would attack the claim
on evidence; if not, skip.

## Verification

- The sharp question is stated in one sentence before any dispatch.
- Heterogeneous breadth comes from the lead crossing model families — no
  instruction tells a subagent to spawn subagents.
- Every load-bearing identifier and headline figure is fetch-verified against
  the live primary source, not recalled; pasted premises are checked, not
  trusted.
- Disconfirming evidence is surfaced, not suppressed; overreach is flagged.
- Filter-blocked research was rerouted to a fallback family on the first block
  (not retried identically), and the fallback's output was cross-checked.
- The agent surfaces evidence; the human reads it and the author sets strength.
- A reframe that supersedes a green-lit claim is flagged, never silent.
- Mixed evidence is reframed to the defensible claim, not smoothed into a tidy
  story.

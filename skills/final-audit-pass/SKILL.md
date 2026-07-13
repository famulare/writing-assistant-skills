---
name: final-audit-pass
description: "Orchestrated audit sweep over a drafted section or whole draft. Dispatches parallel independent fresh-context slop-scan + voice-audit and, for whole drafts, a mandatory blind-then-reveal voice-costume-audit; autonomously resolves local low-risk word/phrase issues and holds author-needing ones, runs scaffold-architecture-audit only on a supplied raw scaffold, then checks post-draft cross-section seams. Preserves the full costume verification record and batches author-needing findings."
tier: orchestrator
role: audit
calls: slop-scan, voice-audit, voice-costume-audit, scaffold-architecture-audit, minimal-edit
---

# Audit Pass

The **standing audit sweep** over polished prose, run as a single orchestrated
pass instead of by hand each time. It composes the leaf audits, applies the
risk-tier gate to their findings (low-risk applied, med/high deferred), and
returns one batched set of author decisions. Mode: AUDIT — it repairs only what
the risk tier permits and surfaces the rest.

Takes a `scope`:

- **section** — one drafted/polished section.
- **draft** — the whole drafted document (enables the cross-section seam check
  in step 4).

Inputs are the finished prose plus, when available, its corresponding raw
scaffold/section contract. Never pass finished prose to a leaf whose contract is
the raw scaffold.

If available, read `../../references/writing-skill-common.md` for the shared
risk tiers, markers, and verification goals; the section/scaffold contract
(`build-outline`/`scaffold-architecture-audit`) for what each section must and
must not claim; and `../../voice/voice-card.md` for the do-not-flag list.

## Mode

AUDIT, with a bounded autonomous-repair lane. The lane is the risk-tier gate
made concrete: apply low-risk local fixes directly; **propose** medium-risk and
**ask** before high-risk. The default is propose, map, and ask.

## Auto-resolve boundary (read this — it is load-bearing)

The orchestrator may resolve a finding itself **only** when it is *both*:

- **local** — word- or phrase-level in the finished prose (step 2), contained in
  one neighborhood; and
- **low-ambiguity, low-semantic-risk** — no shift in claim strength, hedging,
  scope, terminology, causal structure, or voice; no added claim, citation, or
  example.

Everything else is **held** for the author: anything paragraph-scale or larger,
anything cross-section, and any word/phrase change that could touch meaning,
claim calibration, or voice. **When in doubt, hold.** A held finding is reported
with its proposed repair, never applied. Applied fixes are listed too, so the
author can reverse any of them.

## Carry protected decisions forward

A later pass must not silently undo a decision an earlier pass deliberately
protected (e.g. a density pass removing an em-dash a voice pass kept). Before
auto-resolving, check any protected decisions carried in from prior passes
(slop-scan keeps, voice-card do-not-flag entries, earlier author calls). If a
candidate auto-fix would reverse one, **do not apply it** — surface it as an
author decision instead.

## Procedure

1. **Parallel independent dispatch.** Fan out `slop-scan` and `voice-audit` to
   **separate fresh contexts** that have not seen the drafting rationale (Claude
   subagents and/or a cross-family Codex reviewer). They run independently and in
   parallel; voice-audit gets the relevant voice evidence, not just the card.
   When `scope = draft`, also dispatch `voice-costume-audit` to its own fresh
   context. Its first stage receives only the finished artifact and artifact type;
   freeze that persona profile before revealing source, contract, voice evidence,
   or author decisions. Do not give it findings from the other audits.
   Subagents cannot spawn subagents — the lead crosses families.

2. **Resolve / hold the slop + voice findings.** Merge the local reports. For each
   word- or phrase-level finding, apply it directly **only** if it clears the
   auto-resolve boundary above; otherwise hold it. Use `minimal-edit` discipline
   for the applied fixes (smallest sufficient change, no drift). Hold every
   `voice-costume-audit` finding: document-wide persona decisions are high-risk,
   and **keep as-is** is a valid author resolution. Do not convert detection into
   a presumption that the artifact should be de-costumed.

3. **Scaffold-architecture-audit.** Run `scaffold-architecture-audit` over the
   corresponding **raw scaffold**, when supplied. Do not run this raw-layer leaf
   on the finished prose. At this post-draft stage the raw scaffold is audit
   evidence: do not mutate it. Map any finding to the finished artifact and hold
   it for the author; a scaffold correction would require corresponding
   recomposition. If no raw scaffold is available, record this step as not run;
   step 4 still checks finished-prose seams but does not pretend to replace the
   missing raw-layer audit.

4. **Post-draft cross-section seam/bridge check** (scope = draft only). Read the
   boundaries between adjacent **finished** sections for the cross-section echo
   that only becomes visible once both sides are polished — a duplicated point,
   a near-duplicate boundary, a bridge that no longer tracks, a loop opened in
   one section and not closed in another. This is **distinct** from
   `compose-section`'s intra-section seam pass (within one section, at draft
   time) and from `scaffold-architecture-audit`'s raw-layer handoff check (on the
   pre-draft scaffold). Surface these; do not silently rewrite across a boundary.

5. **Batch and surface.** Present **all** held findings together at the end —
   the slop/voice batch and the scaffold/seam batch in one reviewable surface —
   so the author makes the calls in one place rather than piecemeal.

## Output

Two grouped batches, then the envelope:

**Applied (low-risk, auto-resolved)** — a short list of the local fixes applied,
each reversible:

| Passage | Fix | Source audit |
| --- | --- | --- |

**Held for the author** — slop/voice and scaffold/seam, in one place:

| Finding | Source audit | Scale | Why held | Proposed repair | Risk |
| --- | --- | --- | --- | --- | --- |

- *Source audit* ∈ {slop-scan, voice-audit, voice-costume-audit,
  scaffold-architecture-audit, seam-check}.
- *Scale* ∈ {word/phrase, sentence, paragraph, whole-artifact, cross-section,
  seam}.

Then add:

- **Author decisions needed** — the held findings requiring a call.
- **Protected decisions carried forward** — earlier choices respected this pass.
- **Whole-artifact costume audit record** (scope = draft) — attach the full
  `voice-costume-audit` subreport or link its preserved location, and report its
  verdict, frozen blind-profile hash, reveal inputs, and independence status. Do
  not flatten away the frozen profile or authority map when batching findings.
- Standard envelope fields: new claims, certainty shifts, terminology changes,
  unsupported material (per `writing-skill-common.md`).

## Boundary with the leaf audits and compose-section

- This skill **orchestrates** `slop-scan`, `voice-audit`, `voice-costume-audit`, and
  `scaffold-architecture-audit`; it does not re-derive their tells. It owns the
  *composition* (parallel dispatch + risk-tier resolution + batched surface) and
  the **post-draft cross-section seam check**, which no leaf owns.
- `compose-section` runs an intra-section seam pass at draft time; the
  seam check here is **cross-section, post-draft** — a different scale and a
  later moment.
- `scaffold-architecture-audit` checks handoff coherence on the **raw scaffold**;
  step 4 here checks it on **finished prose**, where echoes only then appear.

## Verification

- slop-scan and voice-audit ran in **independent fresh contexts**, in parallel,
  not as a single same-model pass.
- When scope = draft, voice-costume-audit ran independently and froze its blind
  artifact-only persona profile before receiving authority evidence.
- Every detected costume was held for a human keep/modify/remove decision; any
  demo-agent choice is labeled simulated and not author-approved.
- The full costume-audit subreport remains attached or referenceable, including
  its frozen blind profile, hash, authority map, and independence record.
- Scaffold-architecture-audit received a raw scaffold, not finished prose; if no
  raw scaffold was supplied, the output says that the raw-layer step did not run.
- No raw-scaffold finding was auto-applied after composition; each was mapped to
  the finished artifact and held, with recomposition named when required.
- Auto-resolved fixes are all local and low-semantic-risk; every claim-strength,
  scope, terminology, voice, or cross-section finding was held, not applied.
- No protected decision from a prior pass was silently reversed.
- The post-draft cross-section seam check ran when scope = draft.
- All held findings are surfaced **batched at the end**, with proposed repairs.
- Applied fixes are listed and reversible.

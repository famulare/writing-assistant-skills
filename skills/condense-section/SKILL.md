---
name: condense-section
description: Within ONE section, audit for length, thread, order, and information density, then propose cuts. Identify the core thread, check beat order, name darlings to kill, and flag low-information-density sentences, while preserving voice, claim strength, and hedging. ALL decisions surface to the author (high-risk; propose cuts, never auto-delete). Owns within-section thread/density/length — NOT slop-scan (local generic language), NOT minimal-edit (diff revision), NOT scaffold-architecture-audit (cross-section structure).
tier: leaf
role: audit
calls: minimal-edit
---

# Condense Section

Use when one section is long, shaggy, or carrying fat — when the thread is sound
but buried, the order wanders, a darling earns its keep on charm rather than
work, or sentences run thin on information. The job is to find what to cut and
propose it; the author decides.

If available, read `../../references/writing-skill-common.md` for shared risk
tiers, markers, and verification goals, and the section contract
(`build-outline`) for what the section must and must not claim. If
`../../voice/voice-card.md` exists, read the relevant entries when judging
density or darlings — distinctive friction is signal, not fat.

## Mode

AUDIT → propose. Cutting is **high-risk** by the contract (it changes scope and
can change claim strength), so **all decisions surface to the author**. Propose
cuts; **never auto-delete**. When a cut is approved, apply it under
`minimal-edit` discipline (smallest sufficient change, no drift into the
surrounding prose).

## Boundary (read this — this skill owns within-section length)

This skill must not overlap with three neighbors:

- **NOT `slop-scan`** — slop-scan owns local *generic / over-smoothed / inflated*
  language (a phrase that sounds like AI). This owns *thread, density, and
  length* within the section (a sentence that is fine prose but adds little, or a
  paragraph the section does not need). A slop sentence can be dense; a low-info
  sentence can be slop-free.
- **NOT `minimal-edit`** — minimal-edit is diff-level revision of text that
  stays. This decides what should *leave*. It calls minimal-edit to apply an
  approved cut cleanly, but the condense decision is its own.
- **NOT `scaffold-architecture-audit`** — that owns *cross-section* structure
  (which section owns what, cross-section redundancy, section-to-section
  handoff). This stays **inside one section**: its thread, its beat order, its
  darlings, its density. A cross-section relocation is scaffold-audit's; defer it.

State the section boundary explicitly; do not reach across it.

## Procedure

1. **Identify the core thread.** Name the section's single load-bearing line —
   what it must establish. State it in one sentence. Everything else is judged
   against whether it serves that thread.

2. **Check beat order.** Within the section, does each beat land where it does
   the most work — claim before the evidence it needs, setup before payoff,
   nothing stranded? Propose the minimal reordering. (Cross-section moves are
   scaffold-audit's; keep this within the section.)

3. **Name darlings to kill.** Flag passages that are well-made but do not serve
   the core thread — a charming aside, a second example that adds no new
   information, a tangent. Name each and say what is lost and gained by cutting
   it. Do not cut; propose.

4. **Flag low-information-density sentences.** Flag sentences that run thin —
   restate a neighbor, narrate significance the prose already shows, or carry
   little load. Mark whether each is a candidate cut or a candidate compression
   (the latter hands to `minimal-edit`). Distinguish genuine fat from useful
   compression Mike already did — dense is not thin.

5. **Preserve voice, claim strength, hedging.** Do not let a cut weaken a claim,
   drop a hedge, or sand off distinctive friction. If a proposed cut would touch
   any of these, flag it as such so the author sees the cost.

## Output

| Passage | Issue | Serves core thread? | Cut / compress / reorder | What is lost / gained |
| --- | --- | --- | --- | --- |

- *Issue* ∈ {off-thread darling, low-density sentence, beat out of order,
  redundant within section}.

Then add:

- **Core thread** — the one-sentence statement of what the section must establish.
- **Darling-kill list** — the well-made passages proposed for cutting, each with
  cost/benefit.
- **Author decisions needed** — every proposed cut and reorder (all of them; no
  cut is applied without a call).
- **Voice / claim-strength / hedging flags** — any proposed cut that would touch
  these.

## Verification

- Every cut is proposed, never applied autonomously.
- The core thread is named in one sentence; cuts are judged against it.
- No proposed cut weakens a claim, drops a hedge, or removes distinctive friction
  without that cost being flagged.
- Findings stay within the section; cross-section moves are deferred to
  `scaffold-architecture-audit`.
- Local generic-language repair is deferred to `slop-scan`; diff-level revision
  to `minimal-edit`.
- Useful compression is not mistaken for fat.

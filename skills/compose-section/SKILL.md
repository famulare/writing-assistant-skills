---
name: compose-section
description: Assemble a whole section by walking its scaffold span by span — raw spans go through rewrite-block (transport), holes are filled by bounded generate-from-sources, then a minimal-edit seam pass unifies the assembly. Use to turn an outline/skeleton/frankendraft plus supplied materials into section prose. For a single existing raw span, use rewrite-block directly; for diff-level revision of finished prose, use minimal-edit.
tier: orchestrator
role: transform
calls: rewrite-block, minimal-edit
---

# Compose Section

The **orchestrator** for producing a section. It dispatches an **independent,
fresh-context agent per span** — never one agent walking the whole section — and
routes each span to the right operator:

- **raw span exists → `rewrite-block`** (read `../rewrite-block/SKILL.md`):
  low-drift transport of the author's raw text → polished, primed with a fixed
  raw→polished **anchor exemplar** plus the rolling local window.
- **hole (no raw exists) → bounded generate-from-sources** (below): the one
  irreducible piece of genuine "draft from sources" — synthesize from supplied
  material, kept small, voice-controlled, and marked.
- **then a `minimal-edit` seam pass** across the assembled spans.

**Backward compatible.** With no frankendraft / no raw, every span is a hole and
each is still drafted in its own agent from sources. With a raw scaffold present,
most spans take the low-drift transport path. The per-span dispatch strictly
dominates single-context walking (see rationale).

## Why one independent agent per span

A single agent that walks every span in one context conditions each new span on
its own accumulating output. Over a section that pulls the prose toward the
model's native ("assistant") modal style: the back half drifts toward generic
even when the front half transported the author's voice faithfully. (Observed
2026-06-18: a single compose agent produced a section an AI-text detector split
cleanly — the first paragraphs read human, the rest read AI, right where the
accumulating context took over.) Fresh context per span, plus a fixed
human-graded anchor exemplar passed to every span, is the section-scale form of
the rolling-window transport that fixed the same drift at paragraph scale: no
context ever holds more than the anchor pair, one polished neighbor, and the
local raw window, so modal style cannot compound across the section.

**First validation (2026-06-19).** The next section of the same document was
composed with this per-span method (one fresh-context agent per beat, fixed
anchor exemplar) and, after the author's hand-edit, scored 100% human on an
AI-text detector — whereas the single-agent section above carried a back-half
AI signature that *survived* the author's edit pass. Read with the confound in
view: the per-span section also had denser author-raw input and a heavier
hand-edit, so this is not a clean isolation of the dispatch method. Directional
evidence that per-span dispatch lowers the *starting* signature; author-content
density remains the dominant lever (thin raw → more hole-fill → more signature,
regardless of how the agents are wired). The clean test, for next time: run the
detector on the compose output *before* the author's rewrite.

If available, read `../../references/writing-skill-common.md`. If
`../../voice/voice-card.md` exists, read it for the active register and the
"author's own / do-not-flag" entries — heaviest voice control applies to the
hole-fill path. If voice sources are supplied and reusable observations should be
captured, use `../../references/voice-card-template.md` as a template only. Use
only the relevant register or voice-card entries; do not paste or summarize the
whole card unless asked. If a frankendraft and its hole map exist
(`../frankendraft/SKILL.md`), use them: holes are pre-marked there.

## Mode

EXPAND.

## Before composing — section contract

- bounded unit (this section)
- what it must claim
- what it must not claim
- source material supporting it
- evidence needed
- register
- connection to adjacent units
- underspecified points

## Procedure

1. **Lay out spans + pick the anchor exemplar.** Order the section's spans from
   the scaffold/skeleton/frankendraft; for each, decide raw text present
   (transport) or hole (generate). Then choose ONE fixed `RAW → POLISHED`
   **anchor exemplar**: a short, already-approved, human-graded transport by the
   same author in the same register (e.g. an earlier finished section's raw span
   and its polished form). This is the gold demonstration of the local operator
   and is passed to *every* span agent, so each span is re-anchored to
   human-quality output, not to the model's own accumulating prose. If no
   approved transport exists yet, the strongest available author-written span is
   the fallback anchor — note that it is unverified.

2. **Dispatch one independent (fresh-context) agent per span, in scaffold
   order.** Do NOT walk all spans inside a single agent context. Each span agent
   gets ONLY: the section contract, the relevant voice-card entries, the fixed
   anchor exemplar, and its local window — never the whole running draft.

   - **Raw span → `rewrite-block`** (read `../rewrite-block/SKILL.md`). Prime it
     with the autoregressive few-shot, in this order:
       - `ANCHOR RAW → ANCHOR POLISHED` — the fixed gold operator (every span);
       - `LEFT RAW → LEFT POLISHED` — the immediately preceding span and the
         polished form the *previous span's agent* just produced (the rolling
         demonstration);
       - `TARGET RAW` — this span, to transport;
       - `RIGHT RAW` — the next raw span, lookahead so it does not over-close.
     Thread each agent's output forward as the next span's `LEFT POLISHED`. The
     chain is sequential, but every link is a fresh context re-anchored by the
     fixed exemplar, so drift cannot accumulate across the section. Do not
     re-derive the transport operator here — `rewrite-block` owns it.

   - **Hole → bounded generate-from-sources**, also in its own fresh-context
     agent, primed with the anchor exemplar + the polished left neighbor for
     voice. Synthesize from supplied materials only:
       - Keep it small: fill the hole, do not author around it.
       - Preserve claim strength and uncertainty; preserve meaningful compression.
       - Mark, don't fill: use markers for missing support
         (`[EVIDENCE NEEDED: …]`, `[VERIFY CITATION: …]`, `[UNDERSPECIFIED: …]`).
       - Authored interpretation placed in connective tissue (topic sentences,
         transitions, captions) must be marked `[CLAIM RISK: …]`, not blended.
       - Do not invent citations, methods, results, examples, or intent.

   *Throughput variant:* if local coherence matters less than speed, spans may be
   dispatched in parallel using `LEFT RAW` (not `LEFT POLISHED`) as the only
   neighbor anchor; the seam pass then carries more of the coherence load. The
   sequential rolling-window above is the default — it is what was validated.

3. **Seam pass → `minimal-edit`** (read `../minimal-edit/SKILL.md`), in a fresh
   context over the full assembly: unify the assembled spans — pronouns,
   duplicated transitions, tense, local flow. Seam repair only; no restyle or
   global improvement.

## Closing self-screen (before presenting)

Run, do not skip — surface residual problems rather than shipping clean:

- Run the `slop-scan` tell-list (read `../slop-scan/SKILL.md`) over **your own
  draft**, including the spans you just generated. Surface residual generic /
  over-smoothed / coda / near-redundancy language; report it, don't silently
  smooth raw edges.
- For any load-bearing claim with a hardened strength in the ledger, **re-assert
  that exact strength**. Surface any certainty drift introduced during compose.

This is a checklist-pointer, not an auto-rewrite chain: flag, don't auto-smooth.

## Provenance fold

Fold verified evidence into the ledgers (claim / source / bibliography / outline)
rather than leaving it loose — see `../finalize-document-with-audit/SKILL.md`.

## Output

1. Section contract
2. Section prose (assembled, seam-repaired)
3. Audit notes
4. Self-screen result (residual slop + certainty drift, if any)

Audit notes should include:

- the fixed anchor exemplar used (and whether it was an approved transport or an
  unverified fallback)
- per span: transport (`rewrite-block`) vs hole-fill (generate), and the span
  agent's id
- sources used
- connective tissue added (and its `[CLAIM RISK]` markers)
- new claims, if any
- certainty shifts, if any
- terminology changes, if any
- unsupported material
- author decisions needed

## Verification

- Each span ran in its own fresh-context agent; no single agent walked the whole
  section. The fixed anchor exemplar was passed to every span agent.
- Every span is accounted for: raw → transported, hole → generated-and-marked.
- Every paragraph has source support.
- Holes were filled small and voice-controlled, not authored-around.
- Connective-tissue interpretation is marked, not blended.
- New claims are listed; missing support remains visible.
- No citation, result, method, or intent is invented.
- The self-screen ran; residual slop and certainty drift are surfaced.
- The seam pass changed only seams.

---
name: rewrite-block
description: Transport one existing RAW author span into polished prose under a local raw→polished operator, preserving the author's content and voice microstructure. Use when raw author text for a span already exists and the job is to polish it in place — NOT to assemble a whole section (use compose-section) or synthesize prose where none exists yet (use compose-section's hole-fill). Requires a raw span; never generates from nothing.
tier: leaf
role: transform
calls: minimal-edit
---

# Rewrite Block

The atomic raw→polished **transport** operator for a single span. The author's
raw text exists; the job is to convert it to polished prose by inferring and
applying a bounded *local* rewrite operator — not open-ended generation.

This skill is **pure transport**: it requires a raw span and never invents
content. If a span has no raw text, it is a hole — do not use this skill; that
work belongs to `compose-section` (bounded generate-from-sources). Keeping this
operator pure is what makes it a clean, testable atom and a clean
`(LEFT RAW, LEFT POLISHED, TARGET RAW) → TARGET POLISHED` training-pair format.

If available, read `../../references/writing-skill-common.md`. If
`../../voice/voice-card.md` exists, read the relevant register / "author's own /
do-not-flag" entries — so the transport preserves the author's markers rather
than "fixing" them. Do not paste or summarize the whole card.

## Mode

EXPAND (a bounded local transport). Two passes.

## Inputs

- **TARGET RAW** — the author's raw span to polish (required; refuse if absent).
- **ANCHOR RAW → ANCHOR POLISHED** (recommended) — a fixed, human-graded
  raw→polished exemplar by the same author in the same register, *separate* from
  the rolling LEFT neighbor. It re-anchors the operator to human-quality output
  and is the strongest defense against modal drift — especially for the first
  span, where no LEFT POLISHED exists. Normally supplied by `compose-section`.
- **LEFT RAW** and **LEFT POLISHED** — the immediately preceding raw span and its
  already-polished form. Together they *show* the local operator: how this
  author's rough prose becomes polished. Shown, not told.
- **RIGHT RAW** — the raw span that follows. Tells the model where the thought is
  going, so it does not over-close, summarize too early, or drift into generic
  polished-assistant prose at the boundary.
- relevant claim-hardening record, so corrected claim strengths are preserved.

If LEFT POLISHED does not exist yet (first span), lean on the ANCHOR exemplar
plus TARGET RAW's own microstructure.

## Pass 1 — raw acausal, polished causal

Generate TARGET POLISHED with these anchors:

0. `ANCHOR RAW → ANCHOR POLISHED` (if supplied) — a second, human-graded
   demonstration of the operator. When `LEFT POLISHED` was itself produced by an
   earlier agent (the rolling-window case), trust the ANCHOR *over* LEFT for
   style — it is the un-drifted reference; LEFT only fixes local continuity.
1. `LEFT RAW → LEFT POLISHED` — the **local operator**, shown not told. Apply the
   *same* transformation to the target, not a generic "make it professional."
2. `TARGET RAW` — the content, emphasis, claim strength, hedging, and voice
   microstructure to **preserve**. Transport meaning and texture; do not add,
   genericize, or smooth away friction.
3. `RIGHT RAW` — where the thought goes. Do not close the paragraph, summarize,
   or add a coda the raw doesn't reach toward; leave the seam open for the right
   neighbor.

Raw context is acausal (the whole raw draft already exists, so you see raw on
both sides). Polished context is causal — you only see polished text already
produced to the left.

Rules:
- Transport only. Never invent citations, methods, results, examples, or intent.
- Preserve claim strength, uncertainty/hedging, terminology, and useful
  compression exactly. Re-assert any ledger-hardened claim strength.
- **Evidential asides are claim-strength-sensitive.** When the author hedges an
  inference ("I can't rule out …", "probably", "roughly") or grades it in their
  own judgment word ("weird", "odd", "striking"), transport that hedge and that
  exact word — do not paraphrase it into a stronger or more confident claim
  (e.g. "is weird" → "is a real signal"). The author's calibration word *is* the
  claim strength.
- Mark, do not fill: if the raw points at evidence it doesn't contain, leave the
  marker (`[EVIDENCE NEEDED: …]`, `[VERIFY CITATION: …]`), don't author it.
- Distinctive friction is signal; do not sand it toward conventional polish.

## Pass 2 — polished acausal, seam-repair only

Now that polished neighbors exist, repair the seam **only**:

- pronoun references, duplicated transitions, tense mismatch, local flow.

**Delegate this to `minimal-edit`** (read `../minimal-edit/SKILL.md`): run it
over `LEFT POLISHED · TARGET POLISHED · RIGHT POLISHED` with `TARGET RAW` as the
fidelity anchor. Do **not** restyle, globally improve, or re-polish beyond the
seam — that is the existing minimal-edit guardrail applied to the boundary.

## Output

1. TARGET POLISHED (pass 1 → seam-repaired)
2. A short transport note: the local operator inferred from LEFT, any seam fixes
   from pass 2, and any markers carried through.

Keep prose separate from the note. For a clean single span the note can be one
or two lines.

## Verification

- A raw span was supplied; nothing was generated from nothing.
- Content, claim strength, hedging, terminology, and compression match TARGET RAW.
- Author hedges and calibration words on evidential asides survived; none was
  upgraded to a stronger or more confident claim.
- The polished span does not over-close or summarize past where RIGHT RAW goes.
- Pass 2 changed only the seam; no restyle or global improvement.
- Result preserves the author's voice and does not read as generic AI prose.
- Markers for missing support remain visible.

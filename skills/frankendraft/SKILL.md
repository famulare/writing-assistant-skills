---
name: frankendraft
description: Assemble a first-pass draft from ONLY the author's verbatim text, arranged to an outline/contract, with holes marked where no verbatim exists. Use before compose-section when the author wants to start from their own words (zero authored connective tissue) and see exactly where authoring — and voice risk — will happen. Includes a required independent verbatim-fidelity audit.
tier: leaf
role: substrate
calls: —
---

# Frankendraft

A **pure-verbatim first-pass assembly**: take the author's own words from the voice sources, arrange them to the outline, and **invent nothing**. Register and grammar are left raw on purpose — these are *the author's words*, not cleaned prose. Holes mark where no verbatim exists.

Use this **before** `compose-section`, when the author wants the draft to start from their own language. It is deliberately **stricter** than `compose-section`: that skill translates to register and fills holes with marked, source-traceable prose; this skill produces **no authored connective tissue at all**. The purpose is to **invert the voice-risk control** — instead of generating prose and then guarding against drift, you start from only-the-author's-words, and the **holes become the explicit map of where authoring (and therefore voice risk) will happen** in the next pass.

If available, read `../../references/writing-skill-common.md` and `../../voice/voice-card.md` (register + the author's own markers — so the assembly preserves, not "fixes," them). The section order and what-each-section-must-claim come from the skeleton or locked outline (`build-outline`) and the source manifest (`source-manifest`).

## Mode

EXPAND (pre-draft). Establishes the verbatim substrate that a later pass (`compose-section`) translates to register and completes.

## Inputs

- the outline / section contract: section order; what each section must and must not claim
- the voice sources: transcripts, manuscripts, slides, notes — the author's actual words (extract binaries to text with per-locator tags, e.g. `[pN]` page / `[SN]` slide)
- any prior claim-hardening record, so corrected claims are pointed at, not silently re-asserted

## Procedure

1. For each section, pull the author's **verbatim** passages that carry the section's claims; arrange them in the outline order. Use only the author's words.
2. Where the contract needs a claim no verbatim covers, leave a **hole** (`….[note]`) describing what is needed — do **not** author it.
3. Apply only the marked, minimal corrections below. Do **not** smooth, reconstruct, paraphrase, or improve — that is the next pass's job, under voice control.
4. Keep a **register note**: which sections are spoken vs manuscript vs slide-derived. Heterogeneity is expected and is unified later.
5. Run the **fidelity audit** (below). Required.

## Markers

- `[…]` — elided author text (trimmed filler/repetition; the author's words on both sides).
- `….[note]` — **hole**: no author verbatim exists; to be authored later. *Where holes cluster is the diagnostic for where the document is most authored-around-the-author.*
- `[word]` — minimal speech-to-text / transcription fix of a clear mis-hear (flagged as the assembler's).
- `[⚠ hardened → …]` — a raw claim reframed/corrected in a prior hardening pass: keep the verbatim (it is the living thought) and point to where the corrected version lives (`02`/`04`/etc.).
- Inline citation markers inside quotes are elided as non-voice scaffolding (not flagged per-instance).
- Slide text is normalized only for terminal punctuation and extraction whitespace; wording stays verbatim.
- Locators in (parens) point at the real source file.

## Fidelity audit (required, independent)

Run a verbatim-fidelity check in a **fresh context** (a subagent, or a separate reviewer model) that compares every quoted passage to its source and flags any deviation beyond the marked conventions. This is non-negotiable, and it is the analogue of citation fetch-verification: **an assembler's "minimal corrections" drift more than the assembler believes** — silent smoothing, reconstruction, and attribution errors are the failure mode. Restore every over-correction to exact source.

## Output

- the assembled frankendraft (verbatim, arranged to the outline, marked)
- a register note (source-register per section)
- the **hole map** — where authoring will be needed (the downstream voice-risk surface)
- the fidelity-audit result

## Verification

- Every passage traces to a source locator; nothing authored is presented as the author's words.
- Holes are visible, never filled with plausible prose. A visible hole beats finished-reading invention.
- Corrections stay within the marked conventions; the independent fidelity audit confirms it.
- The artifact is a clean raw→polished training pair against the eventual draft.

## Variant: second-iteration / non-local frankendraft

A second verbatim assembly arranged to a *different* structure (e.g., a reordered outline) — same rules, no rewording. Useful as training material: a raw→polished mapping robust to **structural** rearrangement, not just sentence-level cleanup. Produce only when a reorder or a training-data need calls for it.

# Hardening review — TB-dossier drafting session (2026-06-12)

**Mode:** HARDEN (process improvement; not relitigating authorship). Per `skills/harden-writing-workflow`.
**Session:** §4 finalize + Table 1 (Fennelly-vs-Patterson), the §5–§9 reorder → `06b`/`07b`, §5 drafting via an A/B/C/D drafting experiment (in-context Opus vs few-shot Opus agents vs local DiffusionGemma), and the voice/claim/slop passes throughout. Repo: `the TB-dossier project`.
**Scope note:** the local-model drafting-experiment findings are captured separately (in the project's local-model experiment notes). This log is the *writing-skill* learning.

**Mike's triage (2026-06-12):** the consensus-prior goal is **reframed** below (anchor on *his* reading, position consensus relative to it — not "consensus as foil"); the missing-skill-instructions are **approved**; the blind comparative-judge is **declined** (ad-hoc — a fuller verification workflow already lives in the design contract); the voice-card drift is moved to a **GitHub issue** (don't touch the card now).

---

## Where Mike steered, corrected, or overrode

| Session moment | What Mike had to do | Failure mode (classified) | Proposed hardening (smallest useful) |
|---|---|---|---|
| First section-by-section prose pass | "the register is good, but it's full of LLMisms. what skill file can we run over it to eval that?" | **missing skill instruction** — `draft-from-sources` handed over prose without self-screening for the slop tells it knows about | `draft-from-sources`: add a final step — run the `slop-scan` tell-list on your own output before presenting; flag residual slop rather than ship it clean |
| voice-audit flagged "Furthermore" as glue | "Furthermore IS a me thing… latinate glue is something I do, so that can go in the voice card" | **voice-card gap → recurring over-flag** — the audit treats the author's own register markers as generic-AI glue | DONE this session (voice-card: "do not flag sentence-initial Latinate connectives"). ALSO: `voice-audit` procedure should **consult the voice-card "author's own" list before flagging** a connective/structure |
| Em-dash density | em-dash pass (≈17→5, then **3 restored** where removal over-smoothed) | **missing skill instruction** — scans flag individual em-dashes, not *density-as-tell*; mechanical removal then over-corrects | DONE (voice-card: "em-dash density is the tell; fix by judgment — period/colon/split for punch — not mechanical zeroing; a few, earned"). ALSO add the density cue to `slop-scan` |
| §3 collapse-button anaphora rule mis-applied to §1's *generative* enumeration; "borrowed-idioms" lesson over-indexing | "these specific moves don't belong in the card… the borrowed-idioms lesson is over-indexing" | **recurring meta-failure** — the audit reflexively **codifies one deliberate move into a general rule** | DONE (voice-card: "distinguish deliberate exceptions from drift; surface as a candidate, do not codify the specific move"). ALSO promote to `voice-audit` **verification** list — it's a behavior, not just a card note |
| §4 cohort-vs-assay reading | "I take the opposite point… your prior that the assay difference is the big deal and the cohorts are the same is what everyone in TB thinks (the literature you got it from), and what I'm pushing against" | **the big one — consensus-prior default** — the assistant reflexively rendered the *literature's modal reading*, which ran **counter to the author's heterodox thesis** | NEW move (see below): **anchor on the author's reading; locate consensus in relation to it** — agreement → assume it in the prose; divergence → the where/why is the meat. Never let consensus become the default or leak into authored connective text |
| The §4 Table 1 caption ("a detection hurdle set by the sampling regime") | flagged it himself was wrong-headed after the inversion; had to have it rewritten | **authored-interpretation smuggling** — connective/caption text carried an interpretive stance (method-driven gap) **as if neutral/settled**, when it was the exact point the thesis inverts; it went unflagged | `preserve-authorial-writing`: **authored interpretive content in captions/transitions/topic-sentences gets a marker** (`[CLAIM RISK]` or a new `[INTERP]`), because connective tissue is where the assistant's prior leaks in undetected |
| Sputum-load direction (§4 fold) | corrected my "less sputum → more aerosol" to **enrollment-composition** ("within a cohort the load relationship is *positive*") | **weak verification step** — I folded a claim on *existence* of supporting evidence without checking its **direction/sign** against the evidence | `claim-audit` / `harden-claim`: verification must check **claim direction/sign**, not just that a citation exists for the topic |
| §4 ¶102 ("the true heterogeneity…") | flagged the conflation (cohort-composition vs deep biology; dropped the hardened "open question" framing); chose rhetorically | **weak verification step** — drafting **loosened a previously-hardened claim's calibration** (the ledger's §4 "landmines") | `claim-audit`/`draft-from-sources`: when a section has ledger-hardened claims, **re-assert that exact strength against the drafted prose** as a closing check |
| Reorder: `06` locked vs the new constructive order | (assistant surfaced the drift, built `06b`/`07b` as explicit candidates, flagged the divergence, did NOT silently reconcile) | **WORKED** | reaffirm `writing-skill-common` "if sources conflict, stop and ask or mark — do not reconcile silently"; it held under a structural reorder |
| §5 testbed numbering ("§5" = aerosol in old order vs better-cut in reordered) | (assistant caught the ambiguity and used AskUserQuestion before spending 3 parallel runs) | **WORKED** | note for reordered docs: **explicit shared-referent check on section numbers** before acting — cheap, prevents wasted fan-out |
| Drafting-method QC (A vs B vs C) | (assistant ran an independent **blind** comparative judge over anonymized drafts) | **WORKED — new pattern** | add a **blind comparative-judge** reviewer prompt to `references/independent-review-prompts.md` (current set has claim/voice/workflow reviewers; not a multi-candidate ranking) |

---

## Skill edits proposed (patch-ready) — APPROVED by Mike (2026-06-12)

1. **`skills/draft-from-sources/SKILL.md`** — add a closing step: *"Before presenting, run the slop-scan tell-list over your own draft and the claim-ledger's hardened strengths over any load-bearing claims; surface residual slop and any certainty drift rather than shipping clean."* (Failure: first-pass LLMisms; ledger-claim loosening.)
2. **`skills/voice-audit/SKILL.md`** — add to Procedure/Verification: *"Before flagging a connective, structure, or phrasing, check it against the voice-card's 'author's own / do-not-flag' list. Distinguish a deliberate authorial exception from drift — surface it as a candidate for the author's call; do NOT codify the specific move as a rule."* (Failures: "Furthermore"; the anaphora over-generalization.)
3. **`skills/slop-scan/SKILL.md`** — add em-dash *density* as a tell (not just individual dashes), with the fix-by-judgment note (period/colon/split for punch; a few earned dashes, not zero). (Failure: density read as LLM even where author-written; mechanical zeroing over-corrected.)
4. **`skills/claim-audit/SKILL.md`** (and `harden-claim`) — add to the checks: *"Verify claim **direction/sign**, not only that supporting evidence exists (e.g., 'lower X → more Y' must match the evidence's actual sign)."* (Failure: sputum-load direction.)
5. **`skills/preserve-authorial-writing/SKILL.md`** — *"Authored interpretive content placed in connective tissue (captions, transitions, topic sentences, figure legends) must be marked, not blended in. It is where the assistant's prior leaks in undetected and can contradict the author's thesis."* (Failure: the §4 caption.)

## Voice-card additions — already folded this session (record + assess)

Folded to `voice/voice-card.md` during the session (confirm they survived, generalize cautiously):
- "Public Personal-Scientific Essay" register: **personal = more pointed/self-located, not softer.**
- **Do not flag** sentence-initial Latinate connectives (Furthermore/Moreover/In contrast) — author's own.
- **Em-dash density is a tell**; fix by judgment, keep a few earned.
- **Load-bearing contrast ("not A but B") is not slop.**
- **Distinguish deliberate exceptions from drift; do not codify a one-off deliberate move as a rule.**

These are durable. The last one is really a *voice-audit behavior* (see edit #2), not just a card entry — it recurred twice.

## New move / subskill proposed — the highest-leverage finding

**The consensus-prior foil.** The assistant's single most consequential miss this session was rendering the **modal reading of the literature** as the default framing, when the author's entire contribution is a **heterodox inversion** of it (cohort/setting drives the aerosol-sputum gap, *not* the assay — "what everyone in TB thinks… what I'm pushing against"). It then **smuggled that consensus into an authored caption**, which the author had to catch and overturn.

This is structural to an LLM (it returns the training-distribution center of mass) and high-stakes for a writing assistant whose author writes *against* consensus. Proposed, smallest-first:
- **As a `writing-skill-common` verification goal:** *"Anchor on the author's reading, not the field's: treat the author's thesis as the anchor and locate the field's consensus reading in relation to it. Where they agree, the final prose takes the agreement for granted (no consensus throat-clearing). Where they diverge, the where and why of the divergence is the substance — that is the meat the prose must surface and defend. Never default to the consensus framing or let it leak into authored connective tissue (as the §4 caption did); the assistant's reflexive framing is a readout of the median reviewer, useful only as the thing to position the author's reading against."*
- Only escalate to a standalone subskill if it recurs across sessions. (Don't over-build on N=1, though the author confirmed it as a general pattern.)

A useful reframe the author endorsed: the assistant's *reflexive* framing is a **free readout of what the median reviewer will assume** — valuable as a foil, dangerous as a default.

## Verification improvements proposed

- **Blind comparative judge — DECLINED by Mike (2026-06-12):** it was an ad-hoc move; a more complete verification workflow already lives in the design contract, so don't carve this out as a separate documented pattern. (Kept here for the rationale trail.)
- **Direction/sign check** in claim-audit (edit #4).
- **Re-assert hardened claim strength** post-draft (edit #1/#8 row).
- Reaffirm (worked, do not weaken): **citation fetch-verification is non-delegable**; **claim/voice audits run in fresh context by default**; **risk-tier separation** (safe-apply vs propose-and-ask) — the author leaned on the "fix the nits / propose P2 but don't make" split repeatedly and it held.

## What worked — do not change

- The **frankendraft** (`07`/`07b`) verbatim-only assembly as the EXPAND substrate — inverts the voice-risk control (start from only-author-words; holes mark where authoring happens). The author extended it (`07b`) as non-local training material.
- **Section-notes provenance blocks** per section in `09_draft.md` — kept the draft readable while auditable; the author navigated by them.
- **Contract-drift surfacing** under a structural reorder (`06`→`06b`) — candidates made explicit, not silently merged.
- **AskUserQuestion before expensive fan-out** when a referent was ambiguous.

## Open questions

1. Should `draft-from-sources` *auto-chain* `slop-scan`, or stay separate with a checklist pointer? (Auto-chain risks over-smoothing; the author values raw edges.)
2. Where does the **consensus-prior foil** belong — a `writing-skill-common` goal (proposed), a `draft-from-sources` step, or eventually its own move? Needs a second session to confirm recurrence before building heavily.
3. New marker `[INTERP]` for authored-interpretation-in-connective-text, or reuse `[CLAIM RISK]`? (Lean reuse, to avoid marker proliferation.)
4. The voice-card is accreting register-specific entries; at some point split into a per-register `voice/dossiers/` file (the template anticipates this) so the "Public Personal-Scientific Essay" rules don't bleed into other registers.

---

## Addendum 2026-06-15 — missing skill: long-range structure of the raw voice scaffolds

**Mike's note (verbatim), for a future skill-improvement pass:** *"this is a missing skill feature. long range structure of the raw voice scaffolds."*

**Context.** In the 2026-06-13→15 work (autonomous draft of §7–§10, then a step-back to re-architect §7/§8 and assess §8–10), every architecture/ordering problem surfaced only from *cross-section* reading of the **scaffold layer** (`07b` raw assembly + `06b` contracts), and was handled ad hoc: the §7→§8 cohort/mirage-test relocation; the §8/§9 ATTIS + "new-approach-to-modeling" (C57/C58) redundancy; the document skipping §2 after the §1+§2 merge; the §6-close ≈ §7-open near-duplicate.

**The gap.** Current skills work either at the **section/passage level** (`slop-scan`, `voice-audit`, `claim-audit` on a bounded unit) or on **finished prose** (the whole-doc final pass is report-only, *after* drafting). `build-skeleton` *builds* a structure from materials; `extract-argument` extracts the argument. **None audits the long-range, cross-section structure of an *existing* raw voice-scaffold *before* the raw→polished transform.**

**What the missing pass would check** (on the `06b`/`07b`-equivalent scaffold, pre-draft):
- **Section ownership / relocation** — does each raw chunk belong in its section, or another? (the §7 cohort-test → §8).
- **Cross-section redundancy** — same fact/claim/source carried in multiple sections? (§8/§9 both invoking ATTIS + the modeling-call).
- **Within-section beat-order** AND **section-to-section handoff** coherence (no near-duplicate boundaries; loops close; the §1→§5→§10 arc).
- **Structural integrity** — numbering/heading gaps (the skipped §2 after a merge).
- **"Is reordering part of the transform?"** — per section, report whether the scaffold is already coherently ordered (transform = pure polish) or needs an architecture move first.
- **Output:** reorder / relocate / de-dup recommendations to **bake into the scaffold**, separating the architecture decision (the author's) from the polish.

**Why it matters (the principle this crystallized).** Baking the long-range architecture into the raw scaffold makes the raw→polished transform a clean *single* operation (polish, not restructure-plus-polish) — which both improves coherence and, per Mike's rolling-window insight (see the same logs), **reduces what a one-shot transform must get right, lowering modal drift.** Architecture-and-polish in one pass is more for the model to get wrong.

**Where it fits.** Likely a **new subskill** (working name `scaffold-architecture-audit` / `longrange-structure`), run on the raw+contract layer before the per-section transform — OR an extension of `build-skeleton` (which builds, but does not *audit an existing scaffold's* cross-section coherence). Distinct from the report-only whole-doc *final* pass (post-draft); this is *pre-draft*, on the scaffold, and emits actionable reorder/relocate moves.

**Status / recurrence.** Done by hand this session (the §7/§8 reorder, commit `6b81362`; the §8/§9 de-dup). Now N≥1 across two sessions (this + the 06-12 "reorder-surfacing under structural change" row) — closer to "build it" than the N=1 consensus-prior foil. Mike: the §8–10 raw "can still thicken," so the pass must be **re-runnable as the scaffold grows.**

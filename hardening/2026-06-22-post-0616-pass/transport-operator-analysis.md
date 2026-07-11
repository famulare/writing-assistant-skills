# Mike's Hand-Edit Transport Operator — characterization (post-2026-06-16)

> Reproduced as a hardening example (see `../README.md`). This is an independent
> characterization of the author's recurring hand-edits from one project's draft
> file, cross-read against the skills. Internal filenames and commit hashes below
> refer to that project's private history and are kept only as provenance.

What Mike systematically changes when he turns assistant-composed prose into committed prose.
Derived independently from the committed patch series (commit headers flag the hand-edits) and
the assistant's own Edit/Write ops, cross-read against `slop-scan`, `minimal-edit`,
`compose-section`, and `voice-card.md`. This recovers the mid-cycle hand-edit signal the dialogue
digests miss.

Framing note: many ops in `09_draft_assistant_edits.md` are the assistant *transcribing Mike's
hand-edits back into the file*, not autonomous assistant authoring. The cleanest "assistant draft →
Mike committed" contrasts are the section-replacement commits (§7 80c1f96, §8 a6dfddf, §9 fcfbd17,
§10 59490d5). Those carry the operator.

---

## 1. Ranked recurring transport moves

`move (plain) | example before→after (short) | skill to encode | confidence`

1. **Cut the announcer / structural-move sentence; let the prose carry the point.** This is the
   single most frequent move, by volume. He deletes sentences that *label* the argument's structure
   or significance rather than doing the work.
   - "That is also why this program is worth building even though its outputs serve more than one master…" → **deleted** (§8 ¶6).
   - "What ties these together is a shift the organization is well placed to make…" → **deleted** (§8 close).
   - "The §5 point stands: partial cross-tabulations and biological priors carry the early work." → **deleted** (§8).
   - "That is a reason to design the program deliberately, not a reason to wait." → **deleted** (§8 ¶3).
   - "This connects directly to the portfolio." → **deleted** (§9 ¶1 opener).
   - "Many of the pieces are in place. It's our role to assemble what we have and identify the missing parts." → **deleted** (§9 close, after he himself first wrote it — he cut his own sign-post on a second pass).
   - `slop-scan` (already has the "sign-posting / meta-conclusion" tell, added 2026-06-18) | **high**

2. **Cut the over-broad generalization tail / low-information coda.** A closing clause that reaches
   for a wider literature or a universal the sentence didn't earn.
   - "…the error of looking only under the clinical lamppost, which plagues much of infectious disease research." → "…under the clinical lamppost." (§7)
   - "These observations build on at least two decades of evidence that *Mtb* in coughs… is poorly correlated…" → **deleted**; ends on the 80%-vs-1% punch (§7 ¶1).
   - "exactly the global TB ecological arc of the last 150 years" → "broadly tracing the global TB ecological arc…" (softened the absolute).
   - `slop-scan` (low-info coda + citation-less literature-wave tells) | **high**

3. **Cut absolute / inflated quantifiers ("only," "the only," "exactly," "essential," "most likely").**
   Claim-strength *down* toward calibrated, almost always.
   - "the only question that matters" → "the question that matters" (§9 ¶2).
   - "It is the only thing that can enable…" → "It can enable…" (§9 ¶4).
   - "is exactly the set of channels this program treats as observables" → cut to a plainer relation (flagged 1:1 overclaim).
   - "most likely telling you" → "likely telling you" (§5 urine-LAM).
   - Counter-move (claim-strength *up*, but a sharpening not an inflation): "estimates *whether* modalities see the *same* biology" → "estimates *which* modalities see *what* biology" (§8 ¶5); "is unmeasured anywhere" → "has never been measured as a per-lesion quantity" (more precise, not stronger).
   - `voice-audit` + `minimal-edit` (claim-strength stability; flag added absolutes) | **high**

4. **Sharpen the abstract noun to the concrete construct it stands for.** He replaces a smoothed,
   generic phrasing with the specific mechanism/target.
   - "where a tool adds information missing from the case and control definitions themselves" → "information the case and control definitions themselves miss" (§9 ¶1 — verb does the work).
   - "represent diagnostics" → "represent diagnostics with fidelity to the data they produce" (§9 ¶2).
   - sampler-physics reframe: generic "sampler physics matters" → "sampler evaluation is confused by the lack of effort to disambiguate physics and chemistry differences from cohort composition differences… We need assay comparisons on the same people." (§8 ¶3 — names the actual confound).
   - `slop-scan` ("mechanism erased in favor of abstraction") + `voice-card` ("concrete instance over abstraction") | **high**

5. **Restore / inject a concrete, idiosyncratic, self-located detail the polish had sanded off.**
   The committed text is *less* smooth than the draft, on purpose.
   - "fast sampling" → "fast sampling (just a few **horks** of one nostril with the other closed)" (§9 3M example — Mike re-inserted "horks").
   - the entire unpublished-results anecdote (personal communication), the COVID-blog hyperlink, and the first-person "In my first couple of months working in TB… the figure below started me down the 'acute TB is a thing' road" — all hand-added to §7, none in the polished prior draft.
   - "it was the world's loudest nasal swab" kept verbatim (vivid, Mike's).
   - `voice-audit` / `compose-section` hole-fill ("named actor over agentless," "concrete instance over abstraction"; do not smooth out self-location) | **high**

6. **Relocate a load-bearing spine sentence to where it lands hardest, rather than restating it.**
   Cross-section move, deliberate de-duplication by relocation.
   - The "object of prediction and calibration rather than of confusion and invisibility" thesis-handle: **moved out of §9 to the §10 close** as the document's resolution.
   - The §5 "ideal dataset" + "Unfortunately…/stitch" data-realism block: **relocated from §5 to §8** (§5 then ends on the minimal-interface, no bridge).
   - The §6→§7 noise→signal teaser: **cut from §6** to kill a near-verbatim echo with §7's opener.
   - `scaffold-architecture-audit` (cross-section relocation/de-dup is explicitly its scope, out of slop-scan's) | **high**

7. **Re-voice the institutional/abstract close into the first-person modeler's stance.** When the
   draft closed on hedged "what this buys is…" abstraction, Mike rewrote it as a direct statement
   of conviction in his own voice.
   - §10: "What this buys is not prettier mechanism. It is disciplined uncertainty: knowing what our diagnostics measure and what they miss…" → "**Our job as modelers** is to provide the multidisciplinary and multiscale systems perspectives that Global Health needs and specialists often lack. **It's our job to defend meaning against compression.** … acted on as if the compression were lossless. **It is not.** … It makes out of sample, **and *out of experience*,** extrapolation possible."
   - `voice-audit` ("conviction over disclaimer at a close"; register: personal = more pointed, not softer) | **high**

8. **Collapse the staged/throat-clearing opener; promote the real lead.** He removes the warm-up
   first sentence and starts on the substance.
   - §9 ¶1 lost "This connects directly to the portfolio."; §7 ¶1 lost the "the one I find most interesting, is also where my own model is most stuck" framing once the unpublished-results/figure material became the real spine; "In the slide version:" → dropped before "are you looking for transmitters, or for disease?"
   - `minimal-edit` / `voice-card` ("the real opener is often the second paragraph") | **medium-high**

9. **Tighten redundant qualifier stacks and fake-symmetric scaffolding inside a sentence, claim intact.**
   - "increasing viscous and cohesive resistance **relative to the aerodynamic forcing** tends to suppress…" → drop the qualifier; "This is directional, **not a universal law**:" → "This is directional:" (§7 ¶4).
   - "the much higher bacterial load of a cavity exists in a much more viscous, less flexible, lower velocity air-fluid interface, where aerosolization is much less efficient and droplets…" → condensed to "whose larger droplets travel less far" (§7).
   - `minimal-edit` ("edits no larger than needed," compression) + `slop-scan` (fake symmetry) | **medium**

10. **Prefer a precise external/house term over an invented or vague one.** Often a claim-harden
    side effect, but Mike-directed.
    - "extrapulmonary TB" → "**disseminated** TB" (§5 urine-LAM — the biophysically correct construct).
    - "a mirage" → the named clinical entity "*mirage de tuberculose* (Kaelin et al. 2024)" (§8).
    - "an internal acronym" → "the internal TB strategy team"; "PET-CT" → "PET/MRI" where the source warranted.
    - `claim-audit` / `harden-claim` + `voice-card` (terminology preservation; don't invent) | **medium**

---

## 2. Fine-tune seed pairs (assistant draft span → Mike committed span), verbatim-short

**SEED A — cut the meta-conclusion coda (sign-posting).**
- ASSISTANT: "…These gaps probably set the coarse graining scale from below… and the right model lives between the two, fine enough to answer the decision and no finer than the data can identify. **That is also why this program is worth building even though its outputs serve more than one master: the data it generates feed our observability-first model and the broader TB field's need to understand transmission upstream of clinical disease, tailoring interventions to a population's distribution of shedders.**"
- MIKE: "…and the right model lives between the two, fine enough to answer the decision and no finer than the data can identify." *(coda deleted entirely)*

**SEED B — cut the absolute, sharpen the verb.**
- ASSISTANT: "Scoring every one of them against a single composite 'active TB' outcome cannot show where a tool adds **information missing from the case and control definitions themselves.**"
- MIKE: "…cannot show where a tool adds **information the case and control definitions themselves miss.**"

**SEED C — re-voice an abstract hedged close into first-person conviction.**
- ASSISTANT: "**What this buys is not prettier mechanism. It is disciplined uncertainty:** knowing what our diagnostics measure and what they miss, how a product's endpoint connects to transmission… and which measurements would actually change a decision."
- MIKE: "**Our job as modelers is to provide the multidisciplinary and multiscale systems perspectives that Global Health needs and specialists often lack. It's our job to defend meaning against compression.** Healthcare decisionmaking turns biology into 'latent' and 'active,' a tool into its sensitivity and specificity…"

**SEED D — restore the idiosyncratic concrete detail.**
- ASSISTANT: "…a small disposable filter, **fast sampling**, and high qPCR concordance between the aerosol sampler and a nasal swab…"
- MIKE: "…a small disposable filter, **fast sampling (just a few horks of one nostril with the other closed)**, and high qPCR concordance…"

**SEED E — cut the over-broad generalization tail.**
- ASSISTANT: "…The tissue during acute infection… does not produce sputum, so sputum-based screening cannot detect it either. This is the error of looking only under the clinical lamppost, **which plagues much of infectious disease research.**"
- MIKE: "…This is the error of looking only under the clinical lamppost."

---

## 3. Move(s) not well-covered by an existing skill — candidate failure mode(s)

**(a) "Re-roughen": restore deliberate friction/self-location that polish removed — the inverse of
slop-scan.** The skills are all built to *detect and remove* over-smoothing. None of them is framed
to notice that the assistant has *over-smoothed away a vivid, idiosyncratic, or self-locating
detail that should be put back* ("horks"; the first-person "started me down the 'acute TB is a
thing' road"; "the world's loudest nasal swab"; the unpublished-results anecdote). `voice-audit` checks "did
smoothing erase useful compression / friction," which is close, but it audits fidelity to existing
sources rather than prompting the *insertion* of concrete texture the draft is missing. The
recurring Mike move is additive and generative ("the committed version is rougher and more personal
than the draft"), and no skill currently owns "the draft is too clean here — what concrete,
first-person, or idiosyncratic detail did the author have that belongs back in." Candidate: a
"re-roughen / restore-texture" pass, or an explicit `voice-audit` check that flags *suspiciously
smooth* connective prose as a place to re-inject author detail. **medium confidence this is a real gap.**

**(b) Self-sign-posting on the author's own first pass.** Mike wrote "Many of the pieces are in
place. It's our role to assemble what we have…" *himself*, then deleted it on a second pass. This
suggests the sign-posting tell should be run even over author-written (not just assistant-written)
prose during a late coherence pass — the current `slop-scan` framing implies it scans
assistant/draft prose. Low-cost extension of an existing skill rather than a new failure mode.
**low-medium confidence.**

**(c) Relocate-not-restate as a first-class edit.** Move #6 (lift a spine sentence to where it
lands, delete the echo elsewhere) is partially owned by `scaffold-architecture-audit` (cross-section
de-dup) but that skill is pre-draft. The hand-edit evidence shows Mike doing it *late, on finished
prose, by relocation rather than deletion* (the §9→§10 thesis move; §5→§8 data block). Neither
`minimal-edit` (bounded, in-place) nor `slop-scan` (local-only redundancy, explicitly defers
cross-section to the architecture audit) covers a late-stage "this sentence is good but it belongs
in another section's close" move. **medium confidence** this falls between skills.

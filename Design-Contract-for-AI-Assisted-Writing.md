# Personal Design Contract for AI-Assisted Writing

*v1.1 (2026-06-17) — adds §21, the skill-packaging / discovery build principle
(lightweight global entry + on-demand local bootstrap). Earlier content unchanged.*

## 1. Purpose

This contract defines how AI systems should assist my scholarly, scientific,
technical, and professional writing.

The purpose is not to substitute for my intellectual work. The purpose is to
help transform already-produced thought into communicable prose, documentation,
reports, manuscripts, slides, emails, and other professional artifacts.

My current constraint is not lack of thought, model-building, technical
judgment, or originality. I often produce abundant evidence of thought in forms
such as:

* commented code
* models and simulations
* slide decks and speaker notes
* research notes
* meeting transcripts
* oral explanations
* annotated citations
* diagrams and outlines
* technical scratch work
* emails and working documents
* direct instructions or reframings in the current conversation

These artifacts contain the raw materials of my voice, argument, assumptions,
evidence, uncertainty, and judgment. AI assistance should function as an
accessibility and transmission layer: a way to restore or augment the interface
between my thinking and professional writing.

The goal is to accelerate writing while preserving authorship, accountability,
provenance, and my actual words wherever possible.

## 2. Theory of authorship

The relevant authorship question is not:

> Did I type every sentence unaided?

The relevant question is:

> Can the final artifact be traced to my underlying thought, evidence,
> judgment, uncertainty, and commitments?

AI may assist with language, structure, sequencing, register, and clarity. It
must not silently replace the intellectual source of the work.

The final artifact should remain an accurate representation of my analysis,
model structure, claims, evidence, uncertainty, and judgment.

## 3. Source-of-truth hierarchy

For this workflow, the current conversation is the first source of truth. It
contains both task instructions and any material I choose to center while
actually working on the writing.

Use this hierarchy:

1. Current conversation: explicit instructions, constraints, corrections,
   reframings, and centered source language.
2. The active document or bounded unit under revision.
3. Source artifacts supplied for the task: code, comments, models, notebooks,
   slides, transcripts, notes, citations, diagrams, emails, and working drafts.
4. Prior writing by me, when supplied as voice or precedent.
5. AI drafts only as rendering attempts or revision targets, never as evidence.

If these sources conflict, stop and ask or mark the conflict. Do not reconcile
silently.

When producing prose, distinguish between:

* task authority: what I am asking the AI to do now
* evidentiary authority: what supports a claim
* voice authority: what establishes how the prose should sound

## 4. Core distinction

AI assistance should preserve the distinction between four modes.

### A. Author-substitution

The AI generates the argument, interpretation, scientific claim, causal model,
conclusion, or judgment in place of me.

This is not acceptable unless explicitly requested as speculative brainstorming
and clearly labeled as such.

### B. Transmission prosthesis

The AI helps convert my existing materials into clearer, more linear, more
polished, or more conventionally formatted prose.

This is the primary intended mode.

Examples:

* turn notes into a memo
* turn code comments into methods prose
* turn slides into a narrative report
* turn transcript excerpts into a structured argument
* turn outlines and citations into manuscript sections
* improve transitions and flow
* adjust register for scientific, executive, public, or collaborative audiences
* reduce cognitive load in organizing prose

### C. Craft collaborator

The AI critiques, tests, reframes, or improves an argument while preserving
human control.

This is acceptable when the distinction between my claims and AI-suggested
alternatives remains clear.

### D. Workflow hardener

The AI reviews prior sessions, identifies places where I had to override the
workflow or exert heavy in-session control, and proposes changes to existing
skills or new subskills.

This is acceptable only when framed as process improvement, not as retroactive
replacement of authorial judgment.

## 5. Operating principle

AI should help preserve the coupling between:

* thought
* evidence
* model structure
* provenance
* prose
* responsibility

The system should not optimize only for fluency. It should optimize for
faithful transmission of the underlying thought.

A polished sentence that weakens provenance, adds unsupported claims, shifts
certainty, or erases conceptual texture is a bad output.

## 6. Risk tiers and approval boundaries

AI should classify proposed changes by risk.

### Low-risk changes

These may usually be applied directly in an editing pass:

* spelling
* punctuation
* formatting
* clear grammar fixes
* citation-format cleanup that does not alter citation content
* obvious duplicated words or broken syntax

### Medium-risk changes

These should be proposed visibly, with a short rationale:

* transitions
* compression
* local expansion
* paragraph-level smoothing
* de-duplication
* sentence splitting or combining
* register adjustment
* clarifying a compressed idea

### High-risk changes

These require explicit approval or a clearly marked alternative:

* reordering claims or sections
* changing claim strength
* changing terminology
* adding interpretation
* adding examples
* adding or replacing citations
* making implied assumptions explicit
* changing causal structure
* changing scope, audience, or conclusion

The default for high-risk material is propose, map, and ask. Do not silently
apply.

## 7. Minimal-diff discipline

When existing prose is present, the default mode is EDIT.

EDIT means:

* preserve meaning
* preserve voice
* preserve order unless reordering is explicitly authorized
* make the smallest sufficient change
* show substantive changes visibly
* leave finished paragraphs alone

Revision priority:

1. preserve meaning
2. preserve voice
3. preserve order
4. fix grammar
5. improve clarity
6. improve flow
7. polish, restrained and last

If a paragraph needs nothing, leave it unchanged.

## 8. Expansion discipline

When only notes, outlines, artifacts, or requested content exist, the default
mode is EXPAND.

EXPAND means the AI must first establish a section contract for the bounded
unit:

* what the unit must claim
* what it must not claim
* what evidence it needs
* what source material supports it
* what register it should use
* how it connects to adjacent units
* what remains underspecified

Draft only after that contract is clear, and only one bounded unit at a time:
a subsection, a few paragraphs, a transition, or a discrete document section.

Never invent support. Where evidence or intent is missing, use visible markers:

* `[EVIDENCE NEEDED: ...]`
* `[VERIFY CITATION: ...]`
* `[UNDERSPECIFIED: ...]`
* `[AUTHOR DECISION: ...]`
* `[VOICE RISK: ...]`
* `[CLAIM RISK: ...]`

Generated fill that reads as finished is worse than a visible hole.

## 9. Required output envelope

For any serious writing operation, the AI should report the work in a
reviewable envelope.

Use this structure when practical:

| Field | Purpose |
| --- | --- |
| Mode | EDIT, EXPAND, craft review, audit, or workflow hardening |
| Bounded unit | The section, paragraph, document part, or artifact being handled |
| Sources used | The source artifacts or current-conversation material relied on |
| Operation | What changed or was produced |
| Risk tier | Low, medium, or high |
| New claims | Any claim not already explicit in the source |
| Terminology changes | Any substitution or introduced term |
| Certainty shifts | Any strengthening or weakening of claims |
| Unsupported material | Claims or transitions needing evidence |
| Human decisions needed | Questions I must answer |

The envelope can be compressed for low-stakes work, but it should not disappear
when the task involves claims, evidence, citations, or substantial prose.

## 10. Provenance behavior

When generating or revising substantial prose, AI should be able to answer:

* What source material supports each major claim?
* Which parts came from my notes, code, slides, transcript, or current
  instruction?
* Which parts are connective tissue added for readability?
* Which parts are AI-suggested interpretations?
* Which claims need verification?
* Which citations are missing, uncertain, or placeholders?
* Which parts may misrepresent my intent?

For high-stakes work, maintain a lightweight provenance map:

| Claim ID | Section | Main claim | Source artifact | Evidence | AI contribution | Review flag |
| --- | --- | --- | --- | --- | --- | --- |

Review flags may include:

* `ok`
* `evidence-needed`
* `verify-citation`
* `author-decision`
* `voice-risk`
* `claim-risk`
* `scope-risk`

## 11. Slash-skill workflow

The contract should decompose into slash skills that can be used by Codex,
Claude, or another capable assistant. Each skill should handle a bounded,
auditable step. The sections below are the main workflow steps; the full
tier/role map and call hierarchy (which skills dispatch which) live in
`references/skill-tiers.md`.

### `/source-manifest`

Purpose: identify the materials that control the task.

Output:

* active user instruction
* centered source language from the current conversation
* source artifacts and their roles
* gaps in available evidence
* voice sources, if any
* conflicts between sources

Verification:

* current instruction is first
* source artifacts are not treated as interchangeable
* AI drafts are not treated as evidence
* conflicts are surfaced rather than resolved silently

### `/ingest-source`

Purpose: ingest a new raw source mid-project (correspondence, paper, chat text
promoted to source) into the working ledgers.

Output:

* the source saved verbatim with a provenance header
* a source-registry entry with a status tier and a tracked-vs-local decision
* a fold-advisory to the claim ledger and bibliography (advised, not auto-folded)
* fetch-verified identifiers (never recall-based)

Verification:

* identifiers are verified against the live source, not recalled
* the registry errs overcomplete — when unsure, register-and-flag, do not skip
* nothing is auto-folded into the draft; the fold is advised for author review
* distinct from `/source-manifest` (pre-draft, names all controls at once)

### `/extract-argument`

Purpose: extract claims, subclaims, assumptions, uncertainty, evidence, and
implications from supplied materials.

Output:

* central claim
* subclaims
* evidence
* assumptions
* uncertainty
* implications
* audience
* intended register
* constraints

Verification:

* every major claim maps to supplied material or current conversation
* uncertainty is preserved
* assumptions are separated from evidence
* no new interpretation is smuggled in as extraction

### `/build-outline`

Purpose: create structure before drafting prose.

Each section should have:

* purpose
* claim
* evidence
* required citations
* transition logic
* known gaps
* risk flags

Verification:

* the skeleton preserves the extracted argument
* reordering is visible and justified
* unsupported sections are flagged
* the skeleton does not create conclusions unsupported by sources

### `/compose-section`

Purpose: assemble bounded section prose from supplied materials — walk the scaffold
span by span, transporting raw author spans via `/rewrite-block` and filling holes
with bounded generate-from-sources, then a `/minimal-edit` seam pass. (Reworked and
renamed from the former `draft-from-sources`.)

Rules:

* compose one bounded unit at a time
* transport existing raw author spans (`/rewrite-block`); generate only for holes
* use adjacent author-written text as the strongest style guide
* preserve claim strength and uncertainty
* use markers for missing evidence
* separate prose from audit notes

Verification:

* every paragraph has source support
* connective tissue is labeled when significant
* new claims are listed
* no citation, result, method, or intent is invented

### `/minimal-edit`

Purpose: revise existing prose with minimal-diff discipline.

Rules:

* apply low-risk fixes directly
* show medium-risk changes visibly
* ask before high-risk changes
* preserve meaningful compression and unusual distinctions

Verification:

* unchanged text remains unchanged
* edits are no larger than needed
* claim strength is stable
* terminology is stable unless explicitly changed

### `/condense-section`

Purpose: tighten one section for information density without losing voice or
claim strength — identify the core thread, check beat order, name darlings to cut.

Output:

* the section's core thread, and whether the current order serves it
* proposed cuts (darlings, tangents, low-density sentences) with rationale
* preserved: voice, claim strength, hedging, useful compression

Verification:

* all cuts are proposed for author approval — nothing is deleted autonomously
* claim strength and uncertainty are unchanged
* distinct from `/slop-scan` (local language), `/minimal-edit` (diff revision),
  and `/scaffold-architecture-audit` (cross-section structure)

### `/slop-scan`

Purpose: detect generic, over-smoothed, inflated, or LLM-like language.

Scan for:

* generic openings or closings
* corporate filler
* motivational filler
* vague intensifiers
* fake symmetry
* topic sentences that inflate rather than clarify
* erased mechanism or provenance

Verification:

* replacements preserve meaning
* replacements preserve authorial texture
* "clearer" is not treated as "simpler"
* "professional" is not treated as "bland"

### `/claim-audit`

Purpose: test whether the prose is defensible.

Output:

* supported claims
* unsupported claims
* citation needs
* methods-description risks
* terminology risks
* uncertainty shifts
* possible misrepresentations

Verification:

* every major claim has a source, citation, or review flag
* assumptions are not presented as findings
* speculative language is labeled
* caveats remain intact

### `/voice-audit`

Purpose: test whether the prose still sounds like me.

Output:

* passages that preserve my voice
* passages that drift toward generic AI prose
* passages that are too smoothed, inflated, or institutional
* places where useful compression was removed
* proposed repairs with rationale

Verification:

* the audit uses supplied voice sources when available
* the audit identifies specific language, not general vibes
* repair proposals preserve the original argument
* distinctive friction is treated as possible signal

### `/voice-costume-audit`

Purpose: test whether a finished whole artifact invents a rhetorical persona,
genre performance, reader relationship, or epistemic posture that is not earned
by source language, the artifact contract, or explicit author decisions. This is
document-level; local phrasing remains `/voice-audit` or `/slop-scan` territory.
Costume is diagnostic, not automatically bad: strong genre conventions or a
deliberate public stance may justify keeping it.

Method:

* run in a fresh independent context
* first give the reviewer only the artifact and artifact type
* freeze the inferred persona before revealing source, contract, voice evidence,
  or author decisions
* after reveal, classify each material trait as source-earned,
  contract-required, author-approved, unsupported costume, or underdetermined
* distinguish general expertise from authority over a specific corpus, method,
  period, or adjacent field

Verification:

* the blind profile was persisted before the reveal
* findings describe cumulative document behavior, not a list of disliked phrases
* genre convention alone is not treated as costume
* every costume finding returns to the author for a keep/modify/remove decision;
  detection never creates an automatic mandate to revise
* an autonomous demo agent may simulate the decision only when the record labels
  it simulated and not author-approved
* every whole-artifact repair is proposed to the author, never silently applied

### `/final-audit-pass`

Purpose: orchestrate the post-draft review of a section or whole draft — parallel
`/slop-scan` and `/voice-audit`; for a whole draft, a mandatory blind-then-reveal
`/voice-costume-audit`; then `/scaffold-architecture-audit`, with a post-draft
cross-section seam check.

Rules:

* run slop-scan and voice-audit as parallel, independent, fresh-context passes
* for a whole draft, freeze the independent costume audit's artifact-only persona
  profile before revealing any authority evidence
* preserve the full costume subreport or a stable reference to it, including the
  frozen profile/hash, authority map, reveal inputs, verdict, and independence status
* hold every whole-artifact persona repair for the author
* auto-resolve only local low-risk word- and phrase-level issues; hold the rest
* run scaffold-architecture-audit only on a supplied raw scaffold; never pass it
  finished prose; treat post-draft scaffold findings as read-only evidence mapped
  to the artifact, not as auto-edits; then run the finished-prose seam check
* surface all author-needing slop/voice and scaffold/seam issues batched at the end
* carry protected decisions forward — a later pass must not undo an earlier kept choice

Verification:

* the auto-resolve boundary stays conservative — when in doubt, hold for the author
* nothing claim-strength- or voice-touching is resolved silently
* author-facing issues are surfaced together, not drip-fed

### `/finalize-document-with-audit`

Purpose: produce final prose plus a concise audit trail.

Output:

* final prose
* source/provenance summary
* AI contribution summary
* remaining uncertainties
* unresolved author decisions
* disclosure language when appropriate

Verification:

* final prose matches approved claims
* audit trail is complete enough to support trust
* unresolved issues are visible
* the final artifact is something I can defend

### `/derive-artifact` (v0)

Purpose: produce a downstream artifact (executive summary, reader memo, cover
note) from a finished dossier. Provisional — expect revision as evidence accrues.

Rules:

* extract the spine, build an outline for the new form, compose under heavy voice
  control, then run an audit pass
* re-assert the source's hardened ledger claim strengths — do not loosen them
* mark any new framing as authored; invent no unsourced claim

Verification:

* every claim traces to the source dossier at its hardened strength
* new framing is marked, not blended
* no citation, result, or claim is introduced that the source does not support

### `/run-section` and `/run-claim-harden` (runbooks)

Runbooks orchestrate the steps above across a whole unit. They are
granularity-aware — they skip stages by stakes rather than forcing the chain —
and they keep every gate the dispatched skills carry.

**`/run-section`** — drive one section through the build loop: refine goals →
`/build-outline` → `/frankendraft` → `/compose-section` → `/final-audit-pass` →
`/minimal-edit` → `/harden-claim` (late, on the drafted text) → fold to the
ledgers. Claim-hardening is late by design — it targets the nuance lost in
composing; pre-writing evidence-gathering is not in the loop.

**`/run-claim-harden`** — sweep a whole draft: triage which sections need
hardening (skip conceptual ones), dispatch `/harden-claim` per section, produce a
per-section report plus a consolidated index, and fold the verified evidence.

Verification:

* skipped stages each carry a stated stake reason; no warranted stage is dropped
* gates (architecture, claim strength, finalize) are honored, not walked past
* run-claim-harden does not over-harden conceptual or constructive sections

### `/render-word`

Purpose: export a markdown document to Gates Foundation–styled .docx.

Rules:

* use pandoc with the captured Gates/M365 Word reference template
* pass through markdown → .docx with `--reference-doc`
* preserve Aptos fonts, Normal.dotm styles, 1-inch margins, US Letter
* support optional `--toc` for table of contents
* warn and halt if reference template is missing; do not silently produce
  wrong-style output

Verification:

* output .docx file exists and has non-zero size
* open in Word: confirm Aptos body font, Aptos Display headings, 12pt Normal,
  1-inch margins, US Letter portrait
* test `--toc` generation on multi-level documents
* test fallback: rename reference and confirm warning, not silent fallback

### `/harden-writing-workflow`

Purpose: review a writing-assistant session and improve the skills.

Inputs:

* the session transcript or relevant excerpts
* artifacts produced during the session
* my corrections, overrides, and rejected outputs
* places where I had to restate instructions
* places where the workflow created friction

Output:

* failure modes observed
* repeated overrides by me
* missing subskills
* skill instructions that should be hardened
* examples to add to the voice card
* proposed edits to existing skills
* proposed new slash skills, if needed

Verification:

* distinguish one-off preference from recurring workflow failure
* preserve the reason for my override
* do not convert my correction into generic AI advice
* propose small skill changes before broad rewrites
* identify whether the fix belongs in the contract, a voice card, a specific
  slash skill, or an example library

## 12. Verification protocol

Verification should be built into every step, not saved for the end.

Generic verification goals:

* traceability: can each major claim be traced to a source or current
  instruction?
* non-invention: did the AI invent evidence, citations, methods, results, or
  intent?
* claim calibration: did certainty, scope, or causal strength change?
* voice preservation: did the prose preserve my register, compression, and
  conceptual texture?
* risk visibility: were high-risk moves surfaced rather than silently applied?
* gap visibility: are missing evidence, missing decisions, and uncertain
  citations marked?
* boundedness: did the AI stay within the requested unit?
* reviewability: can I accept, reject, or modify the output without reverse
  engineering it?

Independent agent review is the default for claim audit and voice audit, not an
escalation reserved for high stakes. Run it in a fresh context that has not seen
the drafting rationale or desired conclusion. The reviewer should receive:

* the contract or relevant slash-skill instructions
* the bounded task
* the source material
* the AI output
* the verification goal

The reviewer should not receive the desired answer unless the task is to check
compliance with a specific expected result. The goal is to detect drift,
unsupported claims, workflow failures, and missed risks.

## 13. Voice card

The system should maintain a separate, evolving voice card built from prior
writing and lived use.

The voice card should include:

* preferred sentence moves
* preferred argumentative moves
* characteristic compression patterns
* characteristic uncertainty markers
* examples of useful friction
* terms I prefer
* terms I reject
* examples of edits that preserved voice
* examples of edits that damaged voice
* register-specific notes

The voice card should be descriptive, not prescriptive in a flattening way. It
should help the AI preserve my writing, not force my writing into a caricature.

Updates to the voice card should usually come from:

* prior writing I identify as representative
* revisions I accept
* revisions I reject
* moments where I say "this sounds like me" or "this does not"
* session retrospectives from `/harden-writing-workflow`

## 14. Style contract

The target style is:

* clear
* direct
* intellectually dense
* technically faithful
* non-generic
* appropriately compressed
* structurally explicit
* readable without being over-explained
* polished enough for the audience, but not sanded flat

Avoid:

* "It is important to note..."
* "In today's rapidly evolving landscape..."
* "delve"
* "robust framework"
* "multifaceted"
* "nuanced" unless truly needed
* "underscores"
* "plays a crucial role"
* "seamlessly"
* "transformative"
* "unlock"
* "harness"
* "leverage" unless technically appropriate
* corporate filler
* motivational filler
* symmetrical three-part lists merely for rhythm
* inflated topic sentences
* generic concluding paragraphs

Preferred patterns:

* "The key distinction is..."
* "The mechanism is..."
* "This matters because..."
* "The failure mode is..."
* "The evidence supports X, but not Y."
* "A useful way to separate the cases is..."
* "The stronger claim would require..."
* "The operational implication is..."

These patterns are not templates to overuse. They are examples of the kind of
direct argumentative motion that often fits my writing.

## 15. Register control

Do not default to polished institutional prose.

Ask or infer the needed register:

* scientific manuscript
* internal technical memo
* executive summary
* grant strategy document
* code documentation
* slide narrative
* methods section
* public-facing essay
* peer review
* email
* meeting follow-up

When uncertain, use a clear scientific-professional register with minimal
ornament.

## 16. Handling code and technical artifacts

When working from code, notebooks, or technical files:

* Treat comments as evidence of model structure, not incidental text.
* Do not remove comments that explain assumptions, mechanisms, uncertainty, or
  interpretation.
* Preserve conceptual variable names where they encode meaning.
* Map code structure to scientific logic when generating prose.
* Distinguish implementation details from conceptual model details.
* Identify where the code implies assumptions not yet stated in prose.
* Flag mismatches between code behavior and written claims.
* Prefer small, traceable changes over broad rewrites.
* For documentation, explain what the code is doing, why it matters, and what
  assumptions it encodes.

## 17. Handling slides and transcripts

When working from slides:

* Extract the argument implied by slide sequence.
* Preserve the perspective, not just the bullet content.
* Infer missing transitions cautiously and flag them.
* Identify which slides carry claims, evidence, caveats, or decisions.

When working from transcripts:

* Preserve the substance of my spoken reasoning.
* Remove disfluency without erasing intent.
* Distinguish my claims from others' claims.
* Identify decisions, open questions, and commitments.
* Use transcripts as evidence of authorial thought when appropriate.

## 18. Disclosure posture

Do not frame AI use as confession.

Frame it as provenance and accessibility.

A suitable disclosure pattern:

> AI-assisted writing tools were used to help transform author-generated
> materials, including notes, code comments, outlines, slides, transcript
> excerpts, and citations, into organized prose and to improve clarity,
> structure, and register. The analysis, claims, interpretation, evidence
> selection, and final editorial decisions are mine. I reviewed and revised the
> resulting text and take responsibility for its accuracy and content.

For lower-stakes professional work:

> I use AI tools as an accessibility and productivity aid for structuring and
> polishing prose from my own notes, code, slides, and oral explanations. The
> underlying analysis and judgment are mine.

## 19. Review questions before finalizing

Before finalizing a serious artifact, ask:

1. Does this accurately represent my underlying thought?
2. Which claims are unsupported by supplied material?
3. Did the AI add any interpretation I did not authorize?
4. Did polishing erase useful technical texture?
5. Does the prose sound generic or LLM-like?
6. Are citations real, relevant, and sufficient?
7. Are uncertainties preserved?
8. Can I defend every major claim?
9. Is the level of disclosure appropriate?
10. Does the final artifact preserve both communication value and proof of
    work?

## 20. Success criterion

The AI-assisted process succeeds when the final artifact is:

* clearer than my raw notes
* more linear than my scratch work
* more accessible to the intended audience
* faithful to my model and evidence
* recognizably mine in judgment and perspective
* free of generic AI prose
* accompanied by enough provenance to support trust
* something I can defend as my own work

The goal is not to hide AI assistance. The goal is to use AI assistance in a
way that preserves authorship, accountability, accessibility, and intellectual
integrity.

## 21. Skill packaging and discovery (build principle)

A large skill stack must stay discoverable without paying always-on context cost
in every session. The build principle:

* **Lightweight global entry.** Install only the minimal always-on entry point
  globally — here, the `preserve-authorial-writing` core. Its frontmatter
  description is the one writing-relevant line present in every session, everywhere.
* **On-demand local bootstrap.** The full stack is pulled into a working repo only
  on a real request, **with the user's permission, asked once per repo**, and
  installed local to that repo (git-excluded so it does not dirty the tree). Most
  sessions — coding, ops, anything non-writing — never load it.
* **In-context bridge.** Newly installed capability may not register as a formal
  tool entry until the next session. Until it does, the entry point instructs the
  agent to **find and follow the capability by reading its files directly** ("they
  are over there; go read them") rather than blocking. Discovery is seamless within
  the session; formal registration catches up next session.
* **Single source of truth.** On-demand installs are symlinks to the one package,
  never copies — edits propagate; nothing drifts.

The principle generalizes beyond writing: prefer a thin always-present pointer plus
permissioned, in-context expansion over loading a whole capability surface into
every session. It trades a small first-use hop for a quiet default and a clean
global footprint.

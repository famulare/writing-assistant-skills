---
name: slop-scan
description: Detect and repair phrase-level generic, over-smoothed, inflated, corporate, motivational, or LLM-like language while preserving meaning, authorial texture, useful compression, mechanism, and provenance. For fidelity to Mike's specific voice sources, use voice-audit instead.
tier: leaf
role: audit
calls: —
---

# Slop Scan

Use to identify language that sounds generic, inflated, over-smoothed, or
unmoored from the author's thought.

If available, read `../../references/writing-skill-common.md` for verification
goals.

## Mode

AUDIT by default. Rewrite only the flagged phrases or bounded passages needed.

## Scan for

- generic openings or closings
- corporate filler
- motivational filler
- vague intensifiers
- fake symmetry
- inflated topic sentences
- generic concluding paragraphs
- "clear" becoming oversimplified
- "professional" becoming bland
- mechanism erased in favor of abstraction
- provenance erased in favor of polish
- stakes-narration (announcing significance/payoff/interest instead of demonstrating it)
- sign-posting / meta-conclusion: a sentence that *announces* the takeaway or the structural move rather than making the point — "That is a reason to X, not Y", "What ties these together is…", "The result is…", "The X point stands", "The program does not start from zero". The point usually survives the cut; the announcement is scaffolding. Distinct from a genuine pointed landing that *delivers* the point — test whether the sentence does work or only labels the work. (Surfaced 2026-06-18 as the tell that under-fired on a §8 draft whose author edit-pass was almost entirely sign-posting removal — closely related to stakes-narration and the low-info coda, but worth naming on its own.) Run this tell over author-written prose too, not just assistant-generated prose — the author's own hand-edits are the highest-volume source of these cuts.
- register-mismatched ornamental diction (literary/precious word choice where the surrounding voice is plain-technical)
- low-information paragraph coda: a closing sentence that gestures at significance, a broader literature, or a generalization the paragraph didn't earn. The paragraph's real end is usually the sentence before. (NOT a deliberate handoff/transition — test whether the closer does a job.)
- near-redundancy (line/paragraph-LOCAL only): the same claim restated within a few sentences or one neighborhood in fresh words (topic-sentence echo, mid-paragraph re-assertion). Cut to the strongest single statement. Requires reading the surrounding paragraphs, not just the line. CROSS-SECTION redundancy — the same fact/claim/source appearing in different sections — is out of scope here; that is `scaffold-architecture-audit`'s, which reads the whole scaffold and recommends relocation/de-dup. Defer cross-section repeats to it; keep this tell local.
- over-broad generalization tail: a clause or sentence that widens a specific point into a sweeping claim about a field, "much of the literature", or "in general" — usually appended, low-information, and unearned. Cut to the specific point the sentence actually made. (The `...which plagues much of [field]` pattern below is one instance.)
- absolute / inflated quantifier: "the only question that matters", "the single most important", "always", "never", "completely". Downgrade toward the calibrated form unless the absolute is literally defended — "the only question that matters" → "the question", "the single biggest driver" → "a major driver". The inflation is a tell; the calibrated version is usually what the author means.
- abstract-noun phrasing where a concrete construct or verb is meant: nominalized abstractions ("the implementation of", "a consideration of", "the dynamics of X") standing in for a named thing or an active verb. Flag for replacement with the concrete construct/verb the author is actually pointing at ("how X is built", "X drives Y").

Common weak patterns:

- "It is important to note..."
- "In today's rapidly evolving landscape..."
- "delve"
- "robust framework"
- "multifaceted"
- "nuanced" unless truly needed
- "underscores"
- "plays a crucial role"
- "seamlessly"
- "transformative"
- "unlock"
- "harness"
- "leverage" unless technically appropriate
- "the whole game" / "earns its keep" / "the more interesting kind"
- announcing the payoff ("this is where it gets interesting", "that is the point")
- "builds on decades of evidence that..." (citation-less literature wave)
- "...which plagues much of [field]" (over-broad generalization tail)

## Em-dash function test

Em-dashes are a high-frequency LLM tell, but the problem is *substitutable*
em-dashes, not em-dashes as such. Test each: does it do a job a comma, colon,
or period cannot?

Keep (load-bearing — only the em-dash does this):

- mid-sentence interruption the main clause resumes from (a colon/period would break the sentence)
- appositive that unpacks or defines a coined term in place — especially when the aside itself contains commas
- a concrete instance dropped into the flow without ending the sentence
- a genuine punch / turn / recognition landing
- a sharp contrastive pair that carries the evidence, mid-sentence

Convert (substitutable — the em-dash was a default, not a choice):

- introducing a list or specification at a break -> colon (and end the sentence)
- a mild appositive or tag with no punch -> comma
- rule of thumb: if the sentence resumes after the aside, the em-dash earns its place; if the list is terminable, use the colon

Density: even load-bearing em-dashes read as tic when stacked. Default to a few
per section, rarely more than one pair per paragraph; thin to the ones that
pass the test.

## Output

Use this structure:

| Passage | Failure mode | Why it matters | Proposed repair |
| --- | --- | --- | --- |

Then add:

- repairs that are safe to apply
- repairs that require author approval
- places where the original friction may be useful

## Verification

- Repairs preserve meaning.
- Repairs preserve authorial texture.
- Repairs do not simplify away conceptual structure.
- Repairs do not introduce unsupported claims.
- Distinctive friction is not treated as error by default.
- A load-bearing contrast ("X is not A but B", where A/B is the real conceptual axis) is preserved, not flagged; only empty fake-symmetry is slop.
- A deliberate handoff/transition or earned emphasis-repetition is not redundancy; only unearned codas and lazy restatement are slop.


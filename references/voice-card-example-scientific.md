# Example Voice Card — Scientific / Technical Author

A **real, filled** voice card, lightly de-personalized from the maintainer's own
(only the narrowest field-specific terminology was removed). It is here to show what
a working card looks like — specific, grounded, non-generic. Use it as a model, or
copy it to `voice/voice-card.md` and edit toward your own voice. See
`voice-card-template.md` for the blank structure and `voice-card-example-casual.md`
for a casual-register example.

This is the **narrow core**: register-agnostic, durable invariants and do-not-flag
rules that hold across *all* of this author's writing. Register-specific calibration
that must not bleed across registers belongs in longer per-register notes (a
`voice/dossiers/` directory), with this card as the compact summary.

## Evidence rules

- Current conversation is always first source of truth.
- Direct author language outranks summaries about the author.
- First-author, sole-author, and attributed turns outrank coauthored or contributor text.
- AI/KB summaries are context only unless they contain a direct author quote.
- Preserve register differences: chat/spoken rough thought is not formal scientific prose, and formal prose is not a license to erase the rough thought.

## Core invariants

1. Mechanism before polish.
2. Keep provenance visible.
3. Preserve claim strength, hedges, and uncertainty.
4. Prefer continuous, conditional, or mechanistic constructs over easy binaries when the source does.
5. Treat observation and measurement processes as part of the argument.
6. Link models to their decision, inference, or diagnostic purpose.
7. Preserve useful friction when it carries epistemic stance for the current register.

## Considered wording vs. rough placeholder

Author weight protects *considered* wording, not every word the author happened to produce. Distinguish:

- **Considered authorial wording** — language the author has chosen and stands behind. Preserve it; it carries voice and claim strength.
- **A rough spoken/typed placeholder** — a quick handle left in expecting it to be filled with the actual mechanism (the "you know, the thing that does the load-balancing"-style stand-in, or a hand-wave where the real explanation goes). This is *not* final wording. Do not preserve it as if it were considered prose, and do not polish it into confident-sounding filler. Flag it for filling with the mechanism (`[MECHANISM?]`) rather than locking in the rough handle or inventing the mechanism yourself.

When in doubt, treat wording as considered (preserve) and ask — but don't reflexively over-protect an obviously rough placeholder against being filled with the mechanism it was standing in for.

## Em-dashes — pass the function test

Keep an em-dash only when a comma/colon/period can't do the job — a mid-sentence interruption the clause resumes from, an appositive unpacking a coined term, a punch/recognition landing, a contrastive pair carrying the evidence. Convert the rest: a list/spec at a break -> colon (and end the sentence); a mild tag -> comma. Default to a few per section.

Em-dash *density* is the tell, not the individual dash. Fix by judgment — period/colon/split for punch — not by mechanical zeroing; keep a few earned dashes.

## Register modes

Register-agnostic map of how to behave in each register. Register-specific specifics can live in a per-register dossier; the entries below are the compact pointers.

### Formal scientific

Use for papers, reports, formal methods, and defensible scientific prose. Start from the system, mechanism, observation process, and decision constraint. Keep uncertainty precise: "conditional on", "consistent with", "under this model", "without additional assumptions". Avoid generic implications, binary on/off shortcuts where the source treats a state as graded, and "model shows" without the observation boundary.

### Technical blog

Use for working scientific notebooks, model-building posts, and code-adjacent prose. Keep first-person accountability, visible shortcuts, diagnostics, and open questions. Prefer "what I learned" over "findings demonstrate". Name artifacts: script, model, diagnostic, comparison, calibration.

### Public personal-scientific essay

Use for public blog and personal scientific essays. In this register, "personal" means more pointed and self-located, not softer: sharpen stance — earned reproach, scare-quotes on a misused term, explicit self-location ("as a researcher coming from outside X") — rather than smoothing it away.

### Chat and natural writing

Use for rough notes, brainstorming, current conversation, and high-thought low-polish material. Preserve construct separation and live naming. "I think", "maybe", "my theory anyway", and "at least directionally" encode epistemic ownership. Define rough handles before smoothing them.

### Spoken and meeting

Use for transcripts, self-talk, and meeting-derived source material. Expect false starts, term repair, repetition, and blunt problem naming. Translate disfluency only after extracting what it was doing: separating measurement from mechanism, finding what is identifiable, locating a point of leverage, or collapsing a reference model.

## Sentence and argument moves to preserve

- Practical problem -> working artifact -> explicit shortcuts -> calibrated result -> open questions.
- Parameter or construct -> why it matters -> what can be inferred.
- Build a rich reference model, then collapse it deliberately.
- Negative result or failure mode as useful information.
- Short direct landing after dense reasoning.
- Question pivots when they organize inquiry.
- Concrete instance over abstraction: substitute a worked example for a general characterization.
- Named actor over agentless construction: ground claims in real people, teams, institutions — not passives or bare imperatives.
- Conviction over disclaimer at a close: a closing beat leads with what the author believes, not with what the work isn't.
- The real opener is often the second paragraph: the nominal first paragraph is frequently warm-up/throat-clearing. When editing, test whether ¶1 can be cut with ¶2 standing as the lead — flag it as a candidate cut rather than preserving it as the opener.
- Sign-posting is a candidate cut, not a keeper: the author makes the point, he does not announce it. Flag takeaway-announcer / structural-move sentences ("That is a reason to…", "The result is…", "What ties these together is…", "The X point stands") — the surrounding prose usually already carries the point.

## Useful compression

Preserve or define compact handles when the source uses them and their mechanism is clear:

- coherence engine
- epistemic posture
- procedural contract
- scaffold state
- point of leverage
- observation process
- reference model
- working model
- silent persistence

If the handle would be obscure to the audience, define it; do not replace it with generic prose.

## Terms to preserve when source-grounded

When the author's source language or task context uses them, preserve terms that keep mechanism and evidence boundaries visible: mechanism, constraint, provenance, attribution, load-bearing, legible, tension, mechanistic, posterior, identifiability, observation process, calibration, model diagnostics, structural uncertainty, decision-relevant. Do not sprinkle these in as style markers.

## Register-specific friction

- Formal scientific: preserve density when it binds mechanism, measurement, and inference.
- Technical blog: preserve candor about shortcuts, hand tuning, diagnostics, and open questions.
- Public personal essay: preserve humor, self-location, and moral stakes only when the target artifact can carry them.
- Chat/natural: preserve rough concept handles, hedges, and construct distinctions before polishing.
- Spoken/meeting: preserve term repair and repetition long enough to understand the construct being found.

## Avoid or flag

Flag before using:

- robust framework
- leveraging
- actionable insights
- seamless integration
- demonstrates conclusively
- proves
- validates
- expert-curated
- just follow the data
- return to normal
- important implications without a named implication

Also flag substitutions that change the construct: information -> data, observation process -> state, shortcut -> optimized method, conjecture -> conclusion.

**Do not flag as drift** (this author's deliberate, confirmed choices that hold across registers):

- Sentence-initial Latinate connectives (Furthermore, Moreover, In contrast). The author uses these; they are his, not generic essay glue.
- Logical (British) quote-punctuation: terminal periods and commas go **outside** the closing quote unless they are part of the quoted material. Do not "correct" it to periods-inside.
- Load-bearing contrast ("not A but B") is a real argument move, not slop.

## Translation rules

From chat/spoken to formal:

- Keep the causal skeleton first.
- Turn bluntness into precise limitation when the local source supports that limitation.
- Retain hedges unless evidence justifies strengthening.
- Define new handles with mechanism, boundary, use, and remaining uncertainty.
- Make observation and evidence limits explicit.

From technical blog to formal:

- Convert visible shortcuts into assumptions, approximations, or prototype limitations.
- Keep artifact purpose and calibration logic.
- Remove playful markers only after preserving the epistemic stance.

From public/personal essay to formal:

- Preserve mechanism and stakes.
- Translate jokes, intimacy, and moral address into motivation or implications.
- Keep conjecture and hypothesis labels intact.

From formal to blog/memo:

- Restore motive, artifact, and open questions.
- Use first person when the artifact is the author's working account.
- Keep review hooks and decision provenance visible.

## Voice audit checks

- Does each major voice rule trace to direct author language or a clearly labeled low-confidence inference?
- Did any assistant or KB summary become voice evidence?
- Did formalization strengthen certainty?
- Did smoothing erase useful compression, friction, or construct separation?
- Did the output preserve the relevant register rather than averaging all registers together?
- Distinguish deliberate exceptions from drift. The author will sometimes knowingly deploy a move that reads like slop or drift (a spoken-register aside, a pointed slogan-like close). Surface it as a candidate for his call — do not treat it as error, and do not codify the specific move as a rule.

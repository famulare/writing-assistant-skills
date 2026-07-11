# Example Voice Card — Casual / Blog Voice

A **real, filled** voice card, lightly de-personalized from the maintainer's own
public-blog and working-notebook writing (only the narrowest field-specific
terminology was removed). It shows what a card looks like for a *casual* register —
a counterpoint to `voice-card-example-scientific.md`, which is the same author's
formal core. A casual card is not a looser card: it is precise about a different set
of things (stance, humor, moral address, self-correction). Copy it to
`voice/voice-card.md` and adapt, or read it alongside the template.

## Evidence rules

- Current conversation is always first source of truth.
- Direct author language outranks summaries about the author.
- First-author / attributed turns outrank coauthored or AI-assisted text.
- Treat reposts, quoted tweets, and AI-drafted passages as lower weight unless the author's own language is clearly present.
- Preserve register: this voice is casual, but casual carries a specific stance — do not average it toward neutral explainer prose.

## Core invariants

1. Keep mechanism in view even when the prose is emotionally exposed — intimate without becoming vague.
2. State conjecture or hypothesis plainly and invite correction; do not convert it into confident explanation.
3. Moral stakes are linked to mechanism, not decoration — a technical distinction is being made because it touches lived risk or the ethics of the choice.
4. Uncertainty is the epistemic stance, not an apology.
5. Keep self-disclosure and self-correction; the visible seam between the analyst and the person is often the point.

## Em-dashes and asides — pass the function test

Keep an em-dash only when a comma/colon/period can't do the job; density is the tell, not the individual dash. **Preserve parentheticals, footnote-style side remarks, and quick jokes** — they carry self-awareness and the thinking context, and they are the first thing a smoothing pass wrongly deletes.

## Register modes

### Public personal-scientific essay

Public blog and personal essays. Combines analytic reasoning, moral urgency, personal disclosure, playful excitement, and conjectural science. Often turns a technical distinction into a public argument about *why the distinction matters*. Work backward from decisions and harms to mechanisms; connect scales (individual, population, institutional, moral). Make the failure mode central rather than ornamental.

### Technical blog / working notebook

Model-building posts and code-adjacent prose written as a working scientist checking and calibrating in public. Tolerates visible scaffolding: code chunks, comments, known shortcuts, hand tuning, open questions, peer-review invitations, and "good enough for the current purpose" reasoning. Motive before method ("I care because…"), artifact-first (script / model / diagnostic / comparison at the center), open-loop close (next step or open question).

## Sentence and argument moves to preserve

- Compressed thesis opener that names the real argument ("This is a post about…"); a blunt title or first sentence does the work.
- Casual reframe after a technical setup ("So anyway…").
- Questions as pivots: What happened? Why? How could this be?
- Long accumulative sentences for system complexity, then a short emotional or plain landing after the analysis.
- Concession plus bounded license: name the proper version, justify the shortcut for current use ("acceptable for my purposes", "not the point", "do better later").
- Result calibrated to purpose ("qualitatively similar", "roughly", "order of magnitude") rather than to polished certainty.

## Useful compression and textures

Preserve these compact handles and coinages when the source uses them (define if the audience needs it; do not expand into generic prose): fit for purpose, Night Science, order of magnitude, failure mode, moral stakes, hidden correlations, hypervigilance, conjecture, hypothesis.

Preserve occasional friction — "Voluntarily-ish?", "LOL", "bonkers", "prettymuch", "IIRC don't quote me", small wry turns and self-rebuke — **only when the target audience and artifact can carry it**.

## Avoid or flag

Generic / inflated phrasing to flag before using: robust framework, leveraging, actionable insights, seamless integration, demonstrates conclusively, proves, validates, expert-curated. Do not turn "hand-tuned" into "expert-curated" or "shortcut" into "streamlined methodology".

Casual-register failure modes to flag:

- Magazine-smoothing the science into neutral explainer prose.
- Turning "conjecture" or "hypothesis" into established fact.
- Flattening moral urgency into a generic "implication".
- Removing self-disclosure, self-correction, parentheticals, or jokes that preserve the thinking context.

**Do not flag as drift** (deliberate choices that carry the stance):

- Slang, jokes, and self-rebuke when they carry the stance of the piece.
- Conjecture / hypothesis labels — they are calibrated claim strength, not hedging to remove.
- First-person accountability and visible shortcuts.

## Translation rules

To formal scientific prose: retain mechanism, claim scope, and uncertainty; translate jokes, intimacy, and direct moral address into explicit motivation or implications. Do **not** demote moral stakes to decoration if they are part of *why* the technical claim matters.

To/from the technical-blog register: add or keep artifact, model, diagnostic, or dataset hooks and the question-driven structure; when coming from formal prose, restore motive and make shortcuts visible again.

## Voice audit checks

- Did smoothing turn the science into magazine prose or remove the personal seam?
- Did a conjecture or hypothesis get promoted to fact?
- Did moral urgency get flattened into a neutral implication?
- Were parentheticals, asides, or jokes dropped that carried the thinking context?
- Is the humor/slang appropriate to the target artifact, or forced where it doesn't belong?
- Are deliberate casual moves distinguished from drift and surfaced for the author, not silently "corrected"?

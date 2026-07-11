# Voice Card Template

A voice card is compact runtime guidance on how a specific author's prose actually
sounds, so an assistant preserves it instead of smoothing it toward generic polish.
It is **guidance, not evidence**: it sits below the current conversation, the active
document, task-specific sources, and any direct author-written text.

Fill this from real material only — the author's prior writing, accepted revisions,
rejected revisions, or explicit in-session feedback. **Do not invent entries.** A
vague card is worse than none; the power is in specific, grounded rules.

Two filled examples show what a good card looks like:
`voice-card-example-scientific.md` (a scientific/technical author) and
`voice-card-example-casual.md` (a casual/blog voice). Copy the closer one to
`voice/voice-card.md` and adapt, or start here.

Keep this card the **narrow, register-agnostic core**: durable invariants and
do-not-flag rules that hold across *all* of the author's writing. Register-specific
calibration that must not bleed across registers can live in longer per-register
notes (a `voice/dossiers/` directory) with this card as the compact summary.

---

## Evidence rules

How to weight sources for this author. Typical defaults:

- Current conversation is always first source of truth.
- Direct author language outranks summaries about the author.
- First-author / sole-author / attributed turns outrank coauthored or contributor text.
- AI or knowledge-base summaries are context only unless they quote the author directly.
- Preserve register differences; do not average all registers into one.

## Core invariants

The handful of things that must survive any edit, in priority order. What does this
author care about that a generic polish pass would erase? (e.g. mechanism before
polish; visible provenance; claim strength / hedges / uncertainty preserved; useful
friction kept when it carries epistemic stance.)

1. 

## Considered wording vs. rough placeholder

Author weight protects *considered* wording, not every word produced. Note how to
tell, for this author, a phrase they stand behind from a rough spoken/typed
placeholder left to be filled later — and what to do with each (preserve the first;
flag the second for filling, e.g. `[MECHANISM?]`, rather than polishing it into
confident filler).

## Punctuation / mechanical tells

Author-specific mechanical habits to preserve rather than "correct" — e.g. an
em-dash function test (keep a dash only when a comma/colon/period can't do the job;
density is the tell, not the individual dash), quote-punctuation convention, list
style. List the ones that recur.

## Register modes

For each register the author writes in, one compact entry: when to use it, what to
start from, what to keep, what to avoid. Add only the registers that actually apply.

### <register name>

## Sentence and argument moves to preserve

Recurring structural moves that carry this author's thinking (e.g. concrete instance
over abstraction; named actor over agentless; conviction over disclaimer at a close;
the real opener is often the second paragraph; sign-posting is a candidate cut).

- 

## Useful compression

Compact handles the author uses whose mechanism is clear — preserve or define them,
do not expand into generic prose.

- 

## Terms to preserve when source-grounded

Terms that keep mechanism and evidence boundaries visible when the author's source
language or task uses them. Do not sprinkle in as style markers.

- 

## Register-specific friction

Per register, the friction worth keeping (density, candor about shortcuts, humor and
self-location, rough handles, term repair). One line each.

- 

## Avoid or flag

Generic / inflated / corporate phrasing to flag before using (e.g. robust framework,
leveraging, actionable insights, seamless integration, demonstrates conclusively,
proves, validates), plus substitutions that change the construct.

- 

**Do not flag as drift** — the author's deliberate, confirmed choices that read like
drift but are theirs. This section prevents recurring false positives; add an item
only once the author has confirmed it.

- 

## Translation rules

How to move between registers without losing the author (e.g. chat/spoken → formal:
keep the causal skeleton, turn bluntness into precise limitation, retain hedges).

- 

## Voice audit checks

The questions a voice audit should ask for this author (e.g. does each rule trace to
direct author language or a labeled low-confidence inference? did formalization
strengthen certainty? did smoothing erase useful compression or construct
separation? did the output preserve the relevant register? are deliberate exceptions
distinguished from drift and surfaced, not codified?).

- 

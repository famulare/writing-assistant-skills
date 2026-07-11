# voice/

This is where you keep **your own** voice card and (optionally) voice dossiers.

The skills treat `voice/voice-card.md` as an *optional* runtime input: when it
exists, voice-sensitive skills (`voice-audit`, `compose-section`, `rewrite-block`,
`minimal-edit`, and others) read it as compact guidance on how your writing
actually sounds. When it is absent, the skills fall back to the current
conversation and the materials you supply, which are always the first source of
truth.

## Build your own

1. Start from a filled example or the blank template — whichever is closer to how
   you write:

   ```sh
   # a real, filled example (scientific/technical, or casual/blog):
   cp references/voice-card-example-scientific.md voice/voice-card.md
   cp references/voice-card-example-casual.md     voice/voice-card.md
   # or the blank structure:
   cp references/voice-card-template.md           voice/voice-card.md
   ```

2. Adapt it to your own writing — accepted and rejected revisions, distinctive
   phrasings, register differences, and do-not-flag rules (the things a generic
   "polish" pass would wrongly smooth away). The example cards show what specific,
   grounded entries look like; the template explains each section.

3. Optionally, keep longer per-register evidence in `voice/dossiers/` and treat the
   card as the distilled runtime summary.

Everything under `voice/` except this README is git-ignored by default, so your
personal voice material never gets committed. The maintainer's own dossiers and
source manifest are intentionally **not** part of this public release — a voice
card is personal, and the point is for you to build yours.

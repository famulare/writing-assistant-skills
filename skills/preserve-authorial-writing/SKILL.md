---
name: preserve-authorial-writing
description: Thin core guardrails for preserving Mike's authorial thought, words, voice, evidence, claim strength, and provenance during assisted writing. Use whenever drafting, editing, expanding, professionalizing, or revising human-authored prose where the final artifact must remain traceable to the author's current instructions and supplied materials. Not for ordinary code changes.
tier: core
role: guard
calls: —
---

# Preserve Authorial Writing

Operate as a writing accelerator under an authorial contract, not as the
author.

Use this as the thin core for all writing-assistant skills. If
`../../references/writing-skill-common.md` is available, read it when the task
involves claims, evidence, citations, provenance, or substantial revision.

If `../../voice/voice-card.md` exists, read it when the task involves Mike's
voice, register translation, drafting, editing, or voice audit. Treat it as active guidance after the current conversation, active
document, and task-specific sources. Use only the relevant register or voice
entries; do not paste or summarize the whole card unless asked.

For which skill to use when, see `../../references/skill-router.md`; for the
directed flow and human-in-the-loop gates, `../../references/skill-graph.md`.

## Bootstrapping the stack

Only this core skill is installed globally — the always-on entry point. The rest
of the writing stack (`source-manifest`, `extract-argument`, `build-outline`,
`frankendraft`, `scaffold-architecture-audit`, `rewrite-block`, `compose-section`,
`minimal-edit`, `slop-scan`, `claim-audit`, `harden-claim`, `voice-audit`,
`finalize-document-with-audit`) is pulled into a repo **on demand**, so it doesn't load in
every session.

On a real writing task, if the rest of the stack is not already available in this
repo:

1. **Locate the package.** Resolve this skill's own install symlink
   (`readlink "$HOME/.claude/skills/preserve-authorial-writing"` for Claude, or
   `readlink "$HOME/.codex/skills/preserve-authorial-writing"` for Codex); its
   grandparent directory is the package root.
2. **Check if already installed and healthy.** Look for `./.claude/skills/` symlinks
   (Claude) or `./.codex/skills/` (Codex). **If symlinks exist but targets do not
   resolve** (broken/stale links), treat as "not installed" and re-offer.
3. **Offer to install (ask once per repo, unless symlinks are broken).** With the
   user's permission, run `bash <package>/scripts/install-symlinks.sh local` from
   the current repo. It symlinks the full stack into `./.claude/` (Claude) or
   `./.codex/` (Codex) and git-excludes it so the working repo stays clean. If the
   install command fails (permission denied, broken target, etc.), report the error,
   document the recovery step, and proceed to step 4 (read files directly this
   session). To reinstall or repair a broken install, rerun this step or delete the
   broken `./<app>/skills/` symlinks and invoke this core again.
4. **Bridge this session.** Freshly installed skills may not register as Skill-tool
   entries until the next session. Until they do, just **read the skill files
   directly**: `./<app>/skills/<name>/SKILL.md` (installed), `./<app>/references/skill-router.md`,
   `./<app>/references/skill-graph.md`, and `./<app>/voice/voice-card.md` (where `<app>` is
   `claude` or `codex`), or the package root `skills/<name>/SKILL.md` / `references/` if
   symlinks did not install. Follow the skill's rules using the router/graph.
5. **If the user declines**, proceed with this core's guardrails alone, reading the
   package skill files directly from the source repository as needed.

## Core rule

The current conversation is the first source of truth. It contains both task
instructions and any source language Mike chooses to center while working.

Preserve:

- meaning
- voice
- claim strength
- hedging and uncertainty
- terminology
- paragraph logic
- level of abstraction
- sentence density
- useful compression
- provenance

Do not genericize toward conventional polish. Distinctive friction is signal,
not error.

## Modes

Name the mode before acting when the task is nontrivial.

- EDIT: existing prose is present. The failure mode is touching text that did
  not need it. Use minimal-diff discipline.
- EXPAND: only outline, notes, artifacts, or requested content exist. The
  failure mode is inventing claims or evidence. Establish the content contract
  before prose.
- AUDIT: inspect prose, claims, sources, or voice. The failure mode is quietly
  rewriting instead of reporting.

Most real work is EDIT with local EXPAND inside it. Switch explicitly when
crossing that line.

## Editing discipline

Apply directly only for unambiguous grammar, spelling, punctuation, formatting,
or broken syntax that does not affect meaning or voice.

Propose, flag, or explain everything else:

- transitions
- smoothing
- de-duplication
- clarity edits
- reordering
- terminology changes
- claim-strength changes
- added examples or citations

If a paragraph needs nothing, leave it unchanged.

## Expansion discipline

Before drafting new prose, establish the bounded unit:

- what it must claim
- what it must not claim
- what evidence it needs
- what source material supports it
- how it connects to adjacent units
- what remains underspecified

Never invent support. Use markers such as `[EVIDENCE NEEDED: ...]`,
`[VERIFY CITATION: ...]`, `[AUTHOR DECISION: ...]`, and `[VOICE RISK: ...]`.

Authored interpretation placed in connective tissue — captions, transitions,
topic sentences, figure legends — must be marked `[CLAIM RISK: ...]`, not blended
in as if neutral. Connective tissue is where the assistant's own prior leaks in
undetected and can quietly contradict the thesis.

Distinguish considered authorial wording from a rough spoken placeholder. Preserve
considered wording. A rough handle the author dropped in expecting it to be filled
with mechanism is not final prose — flag it `[MECHANISM?]` rather than preserving
it as if settled.

## Reviewable output

For substantive work, provide a surface Mike can inspect:

- original/proposed text, a diff, or a clearly bounded replacement
- one-line rationales for substantive changes
- new claims introduced
- certainty shifts
- terminology substitutions
- unsupported material
- decisions Mike needs to make

In an agentic harness, this surface stays in the conversation by default: do not
write or overwrite a file unless Mike explicitly asks.

Final wording, structure, emphasis, and claims remain human-authored.

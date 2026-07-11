# AGENTS.md

Instructions for coding agents working in this repository. This is the single
source of truth for repo orientation, behavior, and maintenance rules. Codex-style
agents read it directly; Claude Code reads it via an `@AGENTS.md` import in
`CLAUDE.md`. Keep it self-contained and agent-agnostic — Codex does not follow the
`@`-import, so nothing here may depend on `CLAUDE.md`.

## Repository purpose

This repo is a source package for a my-voice-my-words writing-assistant
skillset. It is installed as symlinks into this repo from both the Codex config
(`~/.codex/skills/`) and the Claude config (`~/.claude/skills/`), so edits here
are live; this repo remains the source of truth.

The two authoritative sources are `Design-Contract-for-AI-Assisted-Writing.md`
(the full spec) and `references/writing-skill-common.md` (the shared operating
protocol). Do not duplicate them into other files.

Primary artifacts:

- `Design-Contract-for-AI-Assisted-Writing.md`: full design contract
- `skills/`: Codex-style skill folders (thin core + the workflow skills; each has
  `SKILL.md` + `agents/openai.yaml`). The authoritative inventory and call hierarchy
  (`tier`/`role`/`calls`) is `references/skill-tiers.md`; `references/skill-router.md`
  maps which-skill-when and `references/skill-graph.md` the flow + HITL gates. Do not
  re-list or count the skills here — point to those.
- `.claude/commands/`: Claude slash-command wrappers (same names as the skills)
- `references/`: shared protocol, review prompts, voice-card template + two filled
  example cards (scientific and casual), and the hardening contract
  (`hardening-contract.md`)
- `voice/`: where a user builds their own voice card from
  `references/voice-card-template.md` (see `voice/README.md`). The maintainer's
  generated dossiers and source manifest are personal and are **not** part of this
  public release; the skills treat `voice/voice-card.md` as an optional runtime
  input and degrade gracefully when it is absent.
- `hardening/`: redacted examples of real hardening passes plus a short
  `hardening/README.md` rider explaining the process; the method/authority rules
  live in `references/hardening-contract.md`

## Non-negotiable behavior (summary — the contract is authoritative)

- The current conversation is the first source of truth: task instructions and
  any source language Mike centers while working. If sources conflict, stop and
  ask or mark it — never reconcile silently.
- Preserve meaning, voice, claim strength, hedging/uncertainty, terminology,
  paragraph logic, level of abstraction, sentence density, useful compression,
  and provenance. Distinctive friction is signal, not error. Do not genericize
  toward conventional polish.
- Modes: EDIT (default; minimal-diff, leave good text alone), EXPAND (establish
  the section contract before prose), AUDIT (report, do not quietly rewrite).
- Risk tiers: apply low-risk directly; propose medium-risk visibly with a
  rationale; ask before high-risk (reorder, claim-strength, terminology, added
  interpretation/examples/citations, scope/audience/conclusion changes).
- Never invent evidence, citations, methods, results, or intent. Use visible
  markers (`[EVIDENCE NEEDED: ...]`, `[VERIFY CITATION: ...]`,
  `[UNDERSPECIFIED: ...]`, `[AUTHOR DECISION: ...]`, `[VOICE RISK: ...]`,
  `[CLAIM RISK: ...]`, `[SCOPE RISK: ...]`) instead of plausible filler.
- For substantive work, return a reviewable surface: diffs or bounded
  replacements, one-line rationales, and explicit lists of new claims, certainty
  shifts, terminology substitutions, unsupported material, and decisions needed.
- Final wording, structure, emphasis, and claims stay human-authored.

For anything involving claims, evidence, citations, or substantial revision, read
the contract and `references/writing-skill-common.md` rather than relying on this
summary.

## Core naming

The thin core skill is `preserve-authorial-writing`.

Do not revive the older `voice-contract` name unless explicitly asked. It is
confusing because this package is broader than voice preservation alone;
`voice-contract` was the v0 monolith this package supersedes.

## Editing rules

- Keep individual skills small and operational.
- Put repeated protocol material in `references/writing-skill-common.md`.
- When changing a workflow skill, update the matching `.claude/commands/*.md`
  wrapper if its invocation guidance changed.
- Do not duplicate the full design contract into each skill.
- Do not add voice-card examples unless they come from Mike's prior writing,
  accepted revisions, rejected revisions, or explicit feedback.
- Keep `references/voice-card-template.md` as a template, and the two
  `references/voice-card-example-*.md` cards as filled, lightly de-personalized
  examples. A user's active voice card lives at `voice/voice-card.md` (not tracked
  in this public release).
- Treat any `voice/dossiers/` as evidence-backed detail and `voice/voice-card.md`
  as compact runtime guidance.
- Do not install, symlink, or copy these skills into a live Codex/Claude config
  unless Mike explicitly asks.

## Install rules

The live Codex and Claude installs should be symlinks into this repo, not
copies. Use `scripts/install-symlinks.sh` when Mike asks to install or repair the
install topology.

- `~/.codex/skills/<name>` -> `skills/<name>` for each repo skill
- `~/.codex/references` -> `references`
- `~/.claude/skills/<name>` -> `skills/<name>` for each repo skill
- `~/.claude/references` -> `references`

Leave these Codex skills untouched:

- `~/.codex/skills/commit`
- `~/.codex/skills/persona-review`

The references links are required at the config root because skills resolve
shared material with `../../references/`.

## Validation

After edits, check:

- each `skills/*/SKILL.md` has YAML frontmatter with `name` and `description`
- each skill `name` matches its folder name
- each `skills/*/agents/openai.yaml` parses as YAML
- Claude command wrappers exist for workflow skills when applicable
- references use relative paths that still resolve from the skill folder

Use `uv` for any Python tooling. Do not suggest or use `pip`, `pipx`, `pyenv`,
`venv`, `poetry`, or `conda` unless Mike explicitly asks.

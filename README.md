# Writing Assistant Skillset

A "my-voice-my-words" writing-assistant skillset for AI coding agents (Claude Code
and Codex-style agents). It is a stack of small, composable skills plus a design
contract for AI-assisted *scholarly and technical* writing whose governing rule is
that the finished artifact stays traceable to the author's own thought, words,
evidence, claim strength, and provenance — the assistant transmits and hardens, it
does not author.

This is a public extract of the maintainer's personal package. It ships the skills,
the design principles, and the supporting scaffolding. Two things are deliberately
left out: the maintainer's personal *voice dossiers* (a fingerprint of one person's
writing) and some *private local tooling*. Neither is needed to use the skills —
you bring your own voice card, and the skills run against your agent.

## What's here

- `Design-Contract-for-AI-Assisted-Writing.md` — the full design contract (the
  theory of authorship, source-of-truth hierarchy, risk tiers, modes, markers, and
  the skill workflow). Start here for the *why*.
- `skills/` — the skill folders. Each has a `SKILL.md` and an `agents/openai.yaml`.
  A thin always-on core (`preserve-authorial-writing`) guards the workflow skills
  (outline → draft → audit → harden → finalize) and the orchestrators/runbooks that
  drive them.
- `.claude/commands/` — Claude slash-command wrappers, one per skill (same names).
- `references/` — the shared operating protocol (`writing-skill-common.md`), the
  which-skill-when router and flow graph (`skill-router.md`, `skill-graph.md`), the
  naming/inventory convention (`skill-tiers.md`), the voice-card template plus two
  filled example cards (`voice-card-example-scientific.md`,
  `voice-card-example-casual.md`), the independent-review prompts, and the
  workflow-hardening contract.
- `hardening/` — redacted examples of real hardening passes plus a short rider
  (`hardening/README.md`) explaining how the skills were empirically improved over
  successive sessions. See below.
- `demo/` — a full end-to-end run of the whole stack on one lightly-redacted source:
  the same argument transported into a formal scientific report and a casual blog post,
  with independent reviews, claim-hardening, and a decision log. Start at
  `demo/README.md`. See below.
- `voice/` — where **you** build your own voice card (see `voice/README.md` and
  `references/voice-card-template.md`).

For the authoritative skill inventory and call hierarchy (`tier`/`role`/`calls`),
read `references/skill-tiers.md`. For which skill to reach for and what flows into
what (with the human-in-the-loop gates), read `references/skill-router.md` and
`references/skill-graph.md`.

## Design in one paragraph

The skills form a call hierarchy, not a flat list. **Leaves** do one thing
(`rewrite-block`, `slop-scan`, `voice-audit`, `voice-costume-audit`, `claim-audit`, …). **Orchestrators**
call leaves over one bounded unit (`compose-section` builds a section,
`harden-claim` hardens a claim, `final-audit-pass` reviews a draft). **Runbooks**
drive multi-stage, human-gated processes over the whole artifact (`run-section`,
`run-claim-harden`, `finalize-document-with-audit`). Everything is governed by
`preserve-authorial-writing` and by three cross-cutting ideas: a **source-of-truth
hierarchy** (the current conversation and the author's own words outrank
everything), **risk tiers** (apply low-risk edits, propose medium-risk, ask before
high-risk), and **visible markers** instead of plausible filler
(`[EVIDENCE NEEDED]`, `[VERIFY CITATION]`, `[AUTHOR DECISION]`, …).

## Using it

Bring your own voice card: start from a filled example
(`references/voice-card-example-scientific.md` or
`references/voice-card-example-casual.md`) or the blank
`references/voice-card-template.md`, copy it to `voice/voice-card.md`, and adapt it
to your own writing. The skills read it as an *optional* runtime input and degrade
gracefully when it is absent — the current conversation and your supplied materials
are always the first source of truth.

Then invoke the skills. In Claude Code, the `.claude/commands/*.md` wrappers are
slash commands (`/preserve-authorial-writing`, `/run-section`, `/slop-scan`, …).
Codex-style agents read the `skills/<name>/` folders directly. For a finished
whole draft, `final-audit-pass` additionally dispatches the independent
blind/reveal `voice-costume-audit`; that audit identifies document-wide persona
choices but returns the keep/modify/remove decision to the human.

## Install (symlinks)

This repo is the source of truth; install it into your agent configs by
symlinking, so edits here take effect immediately:

```sh
scripts/install-symlinks.sh all
```

Use `scripts/install-symlinks.sh codex` or `scripts/install-symlinks.sh claude` to
update only one config. It links:

- `~/.codex/skills/<name>` -> `skills/<name>` and `~/.codex/references` -> `references`
- `~/.claude/skills/<name>` -> `skills/<name>` and `~/.claude/references` -> `references`

The `references/` symlink must sit at the config root (`~/.codex/references`,
`~/.claude/references`) because skills resolve shared material through
`../../references/`. The script leaves any pre-existing unrelated skills untouched.

## The hardening examples

The skills were not designed top-down; they were hardened against real drafting
sessions. `hardening/` keeps a few redacted work-products from those passes — the
findings, the validated-vs-rejected principles (with commit evidence), and a
characterization of the author's hand-edit "transport operator" — as worked
examples of the method. `hardening/README.md` is a short rider explaining the loop.
These are lightly redacted to remove personal names and organization-internal
detail; the domain (tuberculosis) content is retained as the concrete example it is.

## A worked demo

`demo/` is a complete run of the stack on a single lightly-redacted source (an email in
the author's own words). It transports the same argument independently into a formal
scientific report and a casual blog post from one shared frankendraft; it does **not**
derive one AI rendering from the other. The demo preserves the original autonomous-run
audits as a failure record, adds current independent audits—including the blind/reveal
`voice-costume-audit`—and records simulated versus author-approved decisions explicitly.
Start at [`demo/README.md`](demo/README.md), then read
[`demo/11_workflow-retro.md`](demo/11_workflow-retro.md). The domain (historical
poliovirus serotyping) is retained; the raw source remains lightly redacted while the
approved public artifacts name Amy Rosenfeld and correct Kotter.

## License

MIT — see [`LICENSE`](LICENSE). Copyright © 2026 Michael Famulare.

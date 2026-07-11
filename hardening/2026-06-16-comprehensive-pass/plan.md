# Plan — Authoritative comprehensive hardening pass over the the TB-dossier project writing sessions

*Worked example for [`hardening-contract.md`](../../references/hardening-contract.md). This plan contains
methodology + corpus inventory (session IDs, file paths) but no confidential dossier content;
the confidential material lives only in the gitignored scratch (digests/findings), never here.*

## Context

Mike wants `harden-writing-workflow` run across the **entire** session history of the
`the TB-dossier project` TB-dossier writing effort, not the single session the existing
`../2026-06-12-tb-dossier/HARDENING-LOG.md` covers. The output is **one authoritative,
deduplicated, recurrence-weighted hardening plan** for the writing-assistant skill set.

Two reframes from Mike (this session) set the authority model:

1. **This pass is the authoritative first hardening.** Whatever prior agents committed or
   left in the gap is *evidence to evaluate*, not a baseline to extend. Mike + this session
   have full control over final form.
2. **Eval prior work fairly — discard is a live outcome, not the default.** The committed
   edits, the HARDENING-LOG, `frankendraft`, the approved-but-unapplied edits, and Mike's
   06-12 triage were all produced in *narrow context* (one or two sessions). They get
   judged against the full cross-session evidence: keep / revise / revert / install / discard.

**Why now:** commit `6ce15c1` ("skills WIP — FOR MIKE'S COMPREHENSIVE SKILLS REVIEW")
staged the hanging files explicitly as material for this review.

**Live-state / multi-agent coordination (contract drift, tracked):** the working tree is *not*
static — during this planning, an external agent added (uncommitted) tells to
`skills/slop-scan/SKILL.md` from a high-value live exchange with Mike (low-information coda;
near-redundancy; two literature-wave phrases; a handoff-vs-redundancy verification line). That
agent is now paused until this pass completes. Consequences baked into the plan: (1) Phase 0
**snapshots the live state of all target files at run-start** (multiple agents may have touched
them); (2) these uncommitted slop-scan additions enter Phase 3 as **prior work to evaluate**,
at a *higher provenance tier* (Mike-endorsed-in-conversation) than the narrow-context committed
edits; (3) when edits are finally applied, **do not clobber** uncommitted external work —
reconcile against the live diff.

### Corrected facts that shaped this design (from a measurement red-team)

- **Token budget was overestimated ~27×.** The largest transcript (10.7 MB) distills to a
  **~98K-token digest** [Plan-agent measured], because raw bytes are dominated by `thinking`
  blocks (3.69 MB) and out-of-line `tool_result` files, not inline dialogue. **Every one of
  the 18 sessions fits a single Opus context after extraction.** → the adaptive-chunking /
  per-session-reducer machinery is cut; a one-line guardrail remains.
- **`thinking` is unavailable by serving policy (correction — supersedes the red-team premise).**
  The subscription/consumer-stack transcripts store only the encrypted thinking *signature*, not
  raw or summarized CoT; and CoT-unfaithfulness research means displayed reasoning wouldn't be
  authoritative evidence anyway. So the extractor diagnoses from observable assistant **text +
  Mike's corrections + git divergence** — the epistemically sounder basis regardless. (Confirmed
  empirically: the largest transcript's thinking summed to ~0 plaintext bytes; the
  steering-window retention machinery is moot/inert.)
- **Cross-session recurrence is the decision variable, and it is fragile.** If 11 independent
  agents bucket the same failure under different labels, a real N=2 silently splits into two
  N=1s and the pass fails to build what actually recurred. → a cheap **index pass builds a
  closed vocabulary before deep review** (the single human checkpoint).
- **The §5 A/B/C/D drafting experiment + blind judge live in nested `subagents/` dirs** (one
  XL session has 17 nested agents). That cluster is its own map unit, not an appendage.
- **Confidentiality:** transcripts contain CONFIDENTIAL dossier content (an internal grant, an
  internal strategy review, an untracked reader memo). Digests/findings never enter git; only the
  generalized, scrubbed deliverable is committed.

### Mike's decisions (this session)

- **Scope:** writing-skills hardening (primary) **+ a forward-looking tooling side-note** —
  the local-model exploration story preserved for future model-tuning and
  dataset creation, explicitly *not* infra to build now. Includes the
  `<raw><polished><raw><TO FILL IN>` prompt-pattern discussion.
- **Run mode:** blind per-session map → **one human checkpoint at the recurrence registry**
  → autonomous through synthesis to deliverable, then iterate with Mike on the deliverable.
- **Output:** gitignored scratch (never committed); commit the **scrubbed plan + a scrubbed
  per-session findings appendix**, superseding the prior HARDENING-LOG.
- **Mike's `<raw><polished><raw><TO FILL IN>` notes:** the orchestrator will **explicitly ask
  Mike for these as a line-item during the registry-review checkpoint** (Phase 1a). Held by
  orchestrator, applied at reconcile/Phase 3; never shown to blind map agents.

---

## Corpus inventory (the evidence)

Project dir: `<the project session transcripts>`

**18 main transcripts** (id · date · raw size · tier · likely role). Tiers are by raw bytes;
all digest to <100K tokens, so tier now only sets review depth, not chunking.

| id (short) | date | raw | tier | likely role |
|---|---|---|---|---|
| b813bab4 | 06-04 | 7.7 MB | XL | earliest; 15 nested subagents |
| ba7d5b10 | 06-08 | 3.8 MB | XL | 5 nested subagents |
| e2df21be | 06-08 | 1.3 MB | L | |
| 6771be0f | 06-08 | 348 KB | M | |
| d7bc46fc | 06-08 | 160 KB | M | |
| a552c3b4 | 06-08 | 46 KB | S | |
| 1a7dab5d | 06-08 | 27 KB | S | |
| 8843a17a | 06-09 | 10.7 MB | XL | 17 nested subagents (largest) |
| 007cc855 | 06-09 | 277 KB | M | |
| 27d8bfa4 | 06-10 | 421 KB | M | |
| f335a4e5 | 06-10 | 29 KB | S | |
| 7ab305dc | 06-10 | 15 KB | S | |
| b09d54dc | 06-11 | 74 KB | S | |
| 8cb7e72f | 06-11 | 19 KB | S | |
| 8eaced19 | 06-11 | 18 KB | S | |
| 6be476a5 | 06-12 | 6.7 MB | XL | finalize/reorder/§5-experiment; 7 nested subagents; **source of HARDENING-LOG main table** |
| e75e73cb | 06-15 | 3.5 MB | XL | §7–§10 work; 5 nested subagents; **source of HARDENING-LOG addendum** |
| 4da1cd1c | 06-16 | 246 KB | M | most recent |

**Nested evidence (inside each `<id>/` dir):** `subagents/agent-*.jsonl` (+ `.meta.json`),
`tool-results/*.txt` (cached bodies — droppable). **`memory/`**: `MEMORY.md`,
`HANDOFF-*.md`, `dossier-build-log.md`, `*-autonomous-draft.md` (~64 KB total) — these
paraphrase conclusions, so they are **Phase 3 reconcile inputs only**, never Phase 1 inputs.

**Aerosol repo artifacts for accept/reject cross-reference** (`<the project repo>/`):
`writing/working/02_claim_ledger.md` (44 hardened claims), `03_drafting_voice_bank.md`,
`06_outline_locked.md` + `06b_outline_reordered.md`, `07_frankendraft.md` +
`07b_frankendraft_2.md`, `09_draft.md` (canonical), `08_post_it_notes...md`,
`<the local-model experiment notes>` (+ A/C/D arm outputs),
`.claude/skills/harden-claim/SKILL.md`, and the repo git log (artifact lineage / dates).

---

## Pinned vocabularies (make 11+ independent agents mergeable)

These are fixed **now** so recurrence counting is meaningful. The recurrence-key list is
*seeded* here and *finalized* at the Phase-1a registry checkpoint.

**Failure-class enum (closed):**
`missing-skill-instruction`, `unclear-skill-boundary`, `missing-subskill`,
`weak-verification-step`, `voice-card-gap`, `consensus-prior-leak`,
`authored-interpretation-smuggling`, `claim-direction-sign-error`, `one-off-preference`,
`WORKED-pattern`. (Derived from the harden SKILL's taxonomy + the HARDENING-LOG's own classes
so prior findings map cleanly in Phase 3. No free-text classes.)

**Recurrence-key (closed slug list; seeded, grown only at 1a checkpoint):**
`consensus-prior-default`, `slop-in-own-output`, `latinate-glue-overflag`, `emdash-density`,
`scaffold-longrange-structure`, `ledger-claim-loosening`, `authored-interp-in-connective`,
`claim-direction-sign`, `conflict-dont-reconcile` (WORKED), `ask-before-fanout` (WORKED),
`frankendraft-substrate` (WORKED), `blind-comparative-judge`, `risk-tier-separation` (WORKED).

**Target-file set (closed for DEFAULT ROUTING — not absolute):** findings normally target a
file in this set; but an **`out-of-set target proposed`** field is allowed and flagged for Mike
(critical: the proposed `scaffold-architecture-audit` is a NEW skill file that does not exist
yet — a strictly-closed set would wrongly reject the very subskill the prior work proposed).
- Skills: `skills/{build-skeleton,claim-audit,draft-from-sources,extract-argument,finalize-document-with-audit,frankendraft,harden-writing-workflow,local-writing-llm,minimal-edit,preserve-authorial-writing,slop-scan,source-manifest,voice-audit}/SKILL.md`
- References: `references/{independent-review-prompts,skill-router,voice-card-template,writing-skill-common}.md`
- Voice: `voice/{voice-card.md,voice-card.yaml,translation-guide.md,review-notes.md,dossiers/}`
- Contract: `Design-Contract-for-AI-Assisted-Writing.md`
- Repo-local: `<the project repo-local harden-claim skill>`
- Mirror note: each skill edit must also update its Codex mirror `skills/<name>/agents/openai.yaml` if the change is behavioral.

**Disposition × evidence-verdict matrix (Phase 3):**
verdict ∈ {CONFIRM, EXTEND, CONTRADICT, NOT-SUPPORT}; disposition ∈ {KEEP, REVISE, REVERT, INSTALL, DISCARD}.
Mapping: CONFIRM+committed→KEEP · EXTEND→REVISE(grow) · CONTRADICT+committed→REVERT ·
NOT-SUPPORT+committed→REVERT-or-KEEP-as-N1-watch (Mike call) · CONFIRM+proposed→INSTALL ·
NOT-SUPPORT+proposed→DISCARD · CONTRADICT+proposed→DISCARD.

**Generalization-tier (closed; required on every build/install item — GPT-5.5 anti-overfit):**
`global-writing-protocol` | `serious-sourced-argument` | `dossier/scaffold-workflow` |
`TB-specific-watch`. Routing rule: anything that only helps this dossier goes to
`voice/dossiers/` or the repo-local skill, **not** the shared skills. Every build item carries
a **counterfactual check** — would this edit help / be neutral / create friction on a non-TB
writing task (test against ≥1 non-TB `voice/dossiers/` entry or accepted skill pattern)?

**Recurrence scoring (orchestrator-enforced at merge — see Phase 2):** report
{N_sessions, N_moments, distinct_artifacts, distinct_modes, distinct_dates} with a
same-section penalty; do not reduce to bare session-count. Map agents cannot self-report
recurrence (they see one unit); the orchestrator computes it across all units.

**Map-agent finding-memo schema (UNLABELED — discovery only):**
`session-id | date | turn/artifact-locator | what-the-assistant-did | what-Mike-did (or what
he silently edited) | inferred-workflow-failure (plain language) | proposed-fix (plain
language) | accept/reject-evidence (artifact + locator, or "none") | severity | confidence`.
No recurrence-key, no failure-class, no target-file. Plus a `WORKED-pattern` list and a
session header (skills invoked, files touched).

**Classifier output schema (separate pass adds):** `recurrence-key (slug) | failure-class
(enum) | target-file (closed set, or out-of-set-proposed) | registry-miss? (bool)`.

---

## Pipeline

Scratch root (outside any git repo):
`<gitignored local scratch>`
with `digests/`, `index/`, `findings/`, `synthesis/`.

### Phase 0 — Extract (one Python pass, no model)

Write a ~40–60 line streaming extractor (`uv run python`) that, per transcript:
- Keeps: every `user` turn (full text); `assistant` `text` blocks (full); `tool_use` **names**
  + skill invocations + edited file paths (from Edit/Write/Read inputs); `timestamp`;
  `isSidechain`.
- Thinking: keep in full within a **steering window**, not just on the next-turn correction
  (GPT-5.5 review: much of Mike's steering is delayed or artifact-mediated, not immediate chat
  "no"). Retain thinking adjacent to any of these steering triggers: contrastive approval
  ("yes but", "mostly", "the issue is", "the problem is"); a **file edit/regeneration after an
  assistant output**; an **abandoned/unused candidate artifact** or **explicit selection among
  draft arms**; a **section rewrite**; a **git diff between an assistant-produced file and the
  later accepted version** (timestamp-correlated to the aerosol repo history — see below).
  Collapse all other thinking to a one-line gist ("[thinking: …]"). Budget allows generous
  retention (largest digest ≈98K).
- **Extractor audit table** (per session): every thinking block gets a row — kept|gisted +
  a reason code — so reviewers can sample false negatives (did we drop a block that preceded a
  quiet steer?). Output alongside the digest.
- **Artifact-divergence signal:** also emit, per session, a timestamp-correlated list of
  aerosol-repo git commits/file-mtimes during the session window, so a "Mike edited the draft
  instead of saying anything" steer is captured as evidence, not missed.
- Drops: `tool_result` bodies, queue-operation / file-history-snapshot / ai-title / last-prompt
  records, attachment bodies (keep skill_listing names only).
- Also processes each `<id>/subagents/*.jsonl` into per-subagent digests.
- Emits per session: a digest `.md` + a header (date, #user/#assistant turns, skills invoked,
  files touched, digest token estimate).
Output → `digests/`. Confirm all digests <~150K tokens (expected; guardrail: if any exceeds,
split on section/artifact boundaries — never mid-correction-pair — with a claim-ledger-state
preamble per chunk).

Also assemble one **experiment-cluster digest**: the §5 A/B/C/D + blind-judge subagent
transcripts (from the 06-11/06-12 sessions' `subagents/` dirs) + a pointer to
`<the local-model experiment notes>`.

### Phase 1a — Index pass (cheap; Sonnet/Haiku OK) → human checkpoint

"Index" is not neutral — choosing what counts as a steering moment already defines the
evidence base (GPT-5.5 review: the biggest hidden anchoring channel after the current skill
files). So run **three complementary index lenses** over all digests, each a flat catalog,
not interpretive:
- **L1 explicit-correction lens** — where Mike pushed back/redirected/restated in chat.
- **L2 artifact-divergence lens** — abandoned/unused outputs, draft-arm selections, regenerated
  drafts, git diffs between assistant-produced and accepted files (silent rejection).
- **L3 worked-pattern lens** — where the workflow visibly succeeded (for the WORKED findings).
Each emits `session-id | turn/artifact-locator | one-line description | draft tag`. Output →
`index/steering-catalog-{L1,L2,L3}.md`. Orchestrator reconciles the three (overlap + each
lens's misses) into one catalog plus a **coverage-risk note**: what kinds of evidence the
index likely undercounts.

Orchestrator clusters the reconciled catalog into the **finalized closed recurrence-key +
failure-class registry**. **→ CHECKPOINT (registry review): present (a) the registry, (b) the coverage-risk note, for
Mike's approval/adjustment, AND explicitly ask Mike for his `<raw><polished><raw><TO FILL IN>`
pattern notes as a checkpoint line-item (held for Phase 3).** Blind map agents do not see these
notes or the registry's provenance.

### Phase 1b — Per-session deep review (Opus; blind)

- One Opus subagent per **significant** session (M/L/XL = 11 sessions) runs
  `harden-writing-workflow` against that session's digest + its subagent digests, and
  **cross-references the aerosol artifacts** (claim ledger, drafts, outlines, voice bank) to
  upgrade an override into a *confirmed* accept/reject finding.
- One Opus subagent for the **experiment-cluster** (A/B/C/D + blind judge + EXPERIMENT_NOTES)
  — produces both writing-skill findings (frankendraft, blind judge, few-shot drafting) and
  flags tooling/local-model items for the side-note.
- One batched Sonnet/Opus triage agent for the **7 thin S-tier** sessions: read all, report
  which carry signal; escalate any to full review.
- **Blindness rules (fairness):** map agents see the *current* skill files, the harden SKILL,
  `writing-skill-common.md`, the voice-card, and the aerosol artifacts. They do **NOT** see
  the HARDENING-LOG, Mike's triage, `frankendraft`'s rationale, the `memory/` notes, or the
  `<raw>...` notes.
- **Discovery ≠ classification (GPT-5.5 fix for residual anchoring).** Map agents emit
  **unlabeled finding memos** in plain language — steering moment, inferred workflow failure,
  proposed fix, accept/reject evidence (artifact + locator) — with **no recurrence-key and no
  target-file** (so they discover failures, not slot them into the vocabulary being evaluated).
  A **separate single classifier pass** then maps all memos onto the closed registry, with an
  explicit **`registry-miss`** bucket for findings no approved key fits (these surface NEW
  failure modes the prior work — and the index — missed). One classifier = consistent bucketing
  across all 13 units (better mergeability than 11 agents each self-tagging).
- Each agent **writes** `findings/<session-id>.md` (unlabeled memo) and returns only a
  one-paragraph summary + the path (protect orchestrator context).

### Phase 2 — Centralize & weight (orchestrator)

Read the classified finding memos. Build the **recurrence matrix**: recurrence-key ×
{N_sessions, N_moments, distinct_artifacts, distinct_workflow_modes, distinct_dates} ×
failure-class × leverage × target-file, with a **section/topic-cluster view** so a key that
looks like N=3 but is really one dossier section split across three sessions is visible.
- **Recurrence score, not bare session-count** (GPT-5.5: session boundaries are arbitrary and
  topic-correlated — one section across 3 sessions inflates N; one huge session with failures
  across many sections deflates to N=1). Build/install when **either** `N_sessions ≥ 2 with
  distinct artifacts or workflow-modes`, **or** `N_sessions = 1 but ≥3 independent steering
  moments across different artifacts/subagents AND high severity`. Apply a **same-section
  penalty** so continuations of one drafting problem don't masquerade as independent recurrence.
  N=1 low-severity → log as watch-item (Mike call).
- **Confirmation detector (did the blind map just re-find the prior log?):** only AFTER the
  matrix is built, compare the independently-derived findings against the prior HARDENING-LOG
  and report the split — % **novel**, % **confirming**, % **contradictory**, % **differently
  scoped**. A suspiciously high "confirming / zero novel" share is a red flag that blindness
  leaked; investigate before trusting the pass.
Output → `synthesis/recurrence-matrix.md`.

### Phase 3 — Reconcile prior work as evidence (orchestrator; now non-blind)

Bring in: the HARDENING-LOG (table + 5 edits + consensus-foil + scaffold-audit + Mike's
triage), the committed edits (slop-scan em-dash density; voice-card A–G + do-not-flag),
`frankendraft`, the 4 unapplied "approved" edits, the repo-local `harden-claim`, the `memory/`
notes, the EXPERIMENT_NOTES, and Mike's `<raw>...` pattern notes. For each prior item, assign
verdict × disposition from the matrix using the **independent** cross-session evidence.
Respect Mike's prior triage but **explicitly flag where cross-session N changes the calculus**
(e.g., consensus-foil was N=1 → is it N≥2 now? scaffold-audit was N≥2 → confirmed?).
Output → `synthesis/reconciliation.md`.

### Phase 4 — Deliverable (then iterate with Mike)

Produce the single authoritative hardening plan. Each item uses a strict, actionable schema
(GPT-5.5): **problem · evidence (sessions + recurrence score) · failure class · decision ·
exact target (+ why this file not another) · proposed text · disposition vs prior work ·
generalization-tier · risk-of-over-hardening · mirror-needed (Codex `agents/openai.yaml`)? ·
test/check (how we'd know it helped, ideally the non-TB counterfactual) · sequencing**.
Plus: meta-findings (e.g., the approved-but-unapplied gap; whether to split the voice-card
into `voice/dossiers/` per register; the repo-local-vs-package home for `harden-claim`),
the **tooling side-note** (forward-looking; `<raw><polished><raw><TO FILL IN>` pattern +
DiffusionGemma/LoRA story), and open questions. Iterate with Mike; then a separate approved
step applies the edits to the skill files (+ Codex mirrors).

---

## Outputs & classification

- **Scratch** (`digests/`, `index/`, `findings/`, `synthesis/`) lives **outside git** at the
  scratch root above; never committed.
- **Committed deliverable** (after a sensitivity scrub — generalized skill-learning only, zero
  dossier content, per the HARDENING-LOG precedent): the authoritative hardening plan + a
  **scrubbed per-session findings appendix**, into `<this repo>`.
  Supersede/retire the prior `../2026-06-12-tb-dossier/HARDENING-LOG.md` (fold its still-valid
  rows into the new doc; keep a one-line provenance pointer to it).
- **Sensitivity scrub procedure:** before commit, grep the deliverable for source names,
  grant IDs, reader identity, confidential figures; replace any concrete dossier instance with a
  generic placeholder; a fresh-context subagent reviews for leakage.

---

## Prior-work evidence inventory (what Phase 3 must rule on)

| Prior item | Current status | Phase-3 question |
|---|---|---|
| slop-scan em-dash density + function test | **committed** (6ce15c1) | CONFIRM/KEEP or CONTRADICT/REVERT? |
| slop-scan low-info-coda + near-redundancy tells + literature-wave phrases | **uncommitted**, live Mike exchange (this session) — higher provenance tier | CONFIRM/KEEP expected; **boundary**: near-redundancy is line/paragraph-local vs scaffold-audit's cross-section redundancy — define division of labor, don't duplicate |
| voice-card A–G drift checklist + do-not-flag rules | **committed** | KEEP/REVISE? bloat risk → split to `dossiers/`? |
| draft-from-sources closing self-screen + ledger re-assert | approved, **not applied** | INSTALL if N≥2 |
| voice-audit consult-card-before-flag gate | approved, **partial** (card has it, skill doesn't) | INSTALL the gate? |
| claim-audit direction/sign check | approved, **not applied** | INSTALL if recurs |
| preserve-authorial-writing mark-interp-in-connective | approved, **not applied** | INSTALL; `[INTERP]` vs reuse `[CLAIM RISK]` |
| consensus-prior foil | proposed, **not formalized**, N=1 | now N≥2? → goal in writing-skill-common vs subskill |
| scaffold-architecture-audit (long-range raw-scaffold structure) | proposed, **not built**, N≥2 | build as new subskill or extend build-skeleton? **De-conflict** its cross-section redundancy check with slop-scan's new line-local near-redundancy tell |
| frankendraft | **DRAFT, not installed** | INSTALL / REVISE / DISCARD; relation to `<raw>...` pattern |
| blind comparative judge | **declined** by Mike (redundant w/ contract §12) | experiment-cluster evidence confirm decline? |
| repo-local `harden-claim` | exists in aerosol repo only | promote to package? merge into claim-audit? |

---

## Verification (is the pass sound?)

- Recurrence is trustworthy: closed vocab approved at checkpoint; orchestrator-enforced
  recurrence score (multi-signal, not bare N); every finding cites a turn/artifact-locator +
  (where applicable) artifact accept/reject evidence.
- Fairness held, two ways: (a) map agents blind to prior findings/triage/notes AND emit
  unlabeled memos (discovery decoupled from the vocabulary, classified separately); (b) the
  **confirmation detector** reports %novel/confirming/contradictory — a zero-novel result is a
  blindness-leak alarm, not a success.
- Generalization checked: every build item carries a generalization-tier + a non-TB
  counterfactual; dossier-only items route to `voice/dossiers/` or repo-local, not shared skills.
- Coverage checked: the 3-lens index + coverage-risk note bound what evidence the pass likely
  undercounts (silent steers, artifact-mediated rejection).
- Completeness: all 18 mains + experiment cluster + thin triage accounted for; nothing
  silently dropped (thin-session triage reports explicitly; extractor audit table samples
  dropped thinking for false negatives).
- No leakage: sensitivity scrub + fresh-context leakage review before any commit.
- The harden SKILL's own verification applies per session (distinguish one-off vs recurring;
  preserve override reason; smallest change first; examples tied to real language).

## Risks & mitigations

- *Vocab mis-bucketing* → 1a checkpoint + closed slugs + single classifier (consistent buckets).
- *Orchestrator context blowup* → agents write files, return paths; Phase 2 reads small memos,
  never raw transcripts.
- *Anchoring (current files / registry / log)* → discovery-memo + separate classifier;
  blindness rules; confirmation detector; notes/log/triage enter only at Phase 3.
- *Steering-signal miss (silent/artifact-mediated/delayed)* → broadened steering window +
  extractor audit table + artifact-divergence (git-mtime) signal + 3-lens index.
- *Recurrence inflation/deflation by arbitrary session boundaries* → multi-signal recurrence
  score + same-section penalty + section-cluster view.
- *Over-fitting one dossier into shared skills* → required generalization-tier + non-TB
  counterfactual + routing rule to `voice/dossiers/`/repo-local.
- *Confidentiality* → scratch outside git; scrub + leakage review before commit.
- *Over-engineering* → chunking cut; single extractor (no jq+Python dual); per-agent size
  measurement cut (measured once in Phase 0).

## Execution sequence (post-approval)

1. Phase 0 extractor → digests + per-session headers + extractor audit table + artifact-divergence (git-mtime) list (verify sizes).
2. Phase 1a 3-lens index → reconciled catalog + coverage-risk note → registry → **CHECKPOINT with Mike** (approve vocab + coverage note; **ask Mike for the `<raw>...` notes** as a checkpoint line-item).
3. Phase 1b blind per-session + experiment-cluster + thin triage (Opus; batched in waves) → unlabeled memos → single classifier pass (→ registry-miss bucket).
4. Phase 2 recurrence matrix (multi-signal score) + confirmation detector.
5. Phase 3 reconcile prior work (disposition × verdict).
6. Phase 4 deliverable (strict per-item schema) → iterate with Mike → (separate step) apply edits + Codex mirrors → scrub → commit plan + findings appendix.

---

## Review provenance

- **Claude Plan-agent red-team** [measured the corpus]: corrected the 27× token overestimate
  (→ chunking cut), established `thinking` as the gold signal, added the two-pass index, carved
  out the experiment-cluster, pinned the closed vocabularies.
- **GPT-5.5 review (Codex, read-only)** [folded in this revision]: discovery/classification
  split + `registry-miss` bucket + confirmation detector (residual-anchoring fix); multi-signal
  recurrence score replacing bare session-count; broadened steering window + extractor audit
  table + artifact-divergence signal; 3-lens adversarial index + coverage-risk note;
  generalization-tier + non-TB counterfactual (anti-overfit); strict actionable per-item schema
  + out-of-set target field (fixes the new-`scaffold-architecture` rejection bug).
- Ultraplan (remote) was attempted but cannot run: the pipeline depends on local scratch files
  outside the repo, which the cloud session can't reach.

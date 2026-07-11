# Hardening pass #2 — findings & recommendations (2026-06-22)

**Scope:** `harden-writing-workflow` over all the TB-dossier project writing sessions **since the 2026-06-16
pass** (post-06-16 activity in 5 transcripts; ~2 substantial sessions + 2 continued tails). Method:
`references/hardening-contract.md`, right-sized. Plan: `plan.md` (this dir). **Cross-references — does
not supersede — the 06-16 pass** (`../2026-06-16-comprehensive-pass/FINDINGS.md`). Confidential scratch
(digests, per-unit findings, recurrence matrix, transport bundle) lives outside git and is not committed;
this doc is the scrubbed, generalized output.

## What this pass did

Extract → light index (+ human vocab checkpoint) → **cross-model plan red-team (Codex)** → **blind**
per-unit map (5 units, agents un-anchored and not told the candidate build names) → single recurrence
synthesis → two confirmation detectors → reconcile. Prior work and this pass's own pre-decided builds
were both treated as **hypotheses to corroborate, not baselines.**

**Blindness check — HEALTHY.** (A) vs 06-16 FINDINGS: a real novel share (re-roughen, post-draft seam,
protected-decision memory, ledger-wrong-corrections, iterative-outline-governance) alongside confirmations
(fetch-verify, per-span dispatch, sign-posting tell, AUP-reroute), ~0 contradictions. (B) vs the
precommitted build list (Codex's anti-anchoring catch): the blind agents independently re-derived B1/B2/B3/
B4/B6 **without seeing their names** — strong corroboration; B5 got the least → kept provisional.
Live demonstration of a known finding: one blind unit AUP-blocked on benign content; **codex (different
model family) recovered it** — exactly the delegation lesson, re-confirmed in the act.

**Naming model** (Mike-approved this pass): two metadata fields — `tier:` (dispatch behavior:
core/leaf/orchestrator/runbook) + `role:` (function: guard/input/substrate/transform/audit/closeout/meta);
`calls:` authoritative, `called-by:` rendered in the router (not stored, to avoid drift).

---

## 1. BUILD — new skills (7)

Each: problem · evidence · target · proposed shape · tier/role · over-hardening risk · mirror · test.
All are general writing-process orchestration → shared package (not `voice/dossiers/`).

**1.1 `run-section` (RUNBOOK / role: orchestrate).** The per-section build loop, **in Mike's order**:
refine section goals → `build-outline` → `frankendraft` → `compose-section` → `final-final-audit-pass` →
`minimal-edit` → **`harden-claim` on the drafted text** → fold. Claim-hardening is **late** (it targets
nuance lost in composing); pre-writing evidence-gathering is **not** in the loop. *Evidence:* Mike named
the loop verbatim across §7/§8/§9; blind-confirmed. *Risk:* over-prescription → stays a granularity-aware
orchestrator that skips stages, not a forced chain. *Mirror:* yes. *Test:* invoking on a section dispatches
subskills in this order with gates; a thin section skips stages.

**1.2 `final-final-audit-pass` (ORCHESTRATOR / role: audit).** Parallel independent `slop-scan` + `voice-audit` →
orchestrator **auto-resolves local low-risk word/phrase issues, holds author-needing ones** → then
`scaffold-architecture-audit`, auto-handling sentence-level-or-smaller → **surfaces both batches (slop/voice
+ scaffold) needing the author at the end.** **Now also owns the post-draft cross-section seam/bridge
check** (novel finding §3.2): the cross-section echo visible only once both sections are polished.
Takes a `scope` (section | draft). *Evidence:* Mike dictated this composition by hand each time ("this is a
common workflow … not tracked"); blind-confirmed. *Risk:* auto-resolve boundary must be conservative — when
in doubt, hold. *Mirror:* yes. *Test:* trivial em-dash overuse auto-fixed; claim-strength-touching edit held.

**1.3 `condense-section` (LEAF / role: audit→transform).** Within-section: core thread, order check, kill
darlings, prune low-density sentences; preserve voice + claim strength. **All decisions surface (high-risk;
no autonomous cuts).** De-conflicted: ≠ `slop-scan` (local language), ≠ `minimal-edit` (diff), ≠
`scaffold-architecture-audit` (cross-section structure). *Evidence:* recurs ≥3× ("long and shaggy", cut
lists, "fat to condense"); blind-confirmed as unowned. *Risk:* sanding edges → propose-only. *Mirror:* yes.
*Test:* long section → core-thread map + darling-kill list for approval, never an applied cut.

**1.4 `ingest-source` (LEAF / role: input) + wire into `harden-claim`.** Digest a new raw source (email /
paper / chat-text-as-source) → register with status tier → fold to claim ledger + bibliography, identifiers
fetch-verified. **`harden-claim` calls it** for any source the loop deems central; registry **errs
overcomplete** (cheap to reject later; costly to miss a central source). *Evidence:* recurring ingest op
across 2+ sessions; blind: "entirely uncaptured; source-manifest is pre-draft, not mid-project single-source."
*Risk:* low. *Mirror:* yes (+ harden-claim edit). *Test:* a central source surfaced mid-harden ends up
registered + folded with provenance/voice tags.

**1.5 `derive-artifact` (ORCHESTRATOR / role: transform) — PROVISIONAL-v0.** Produce a downstream artifact
(executive summary / reader memo / cover note) from the finished dossier: extract spine → skeleton for the
new form → compose under heavy voice control → audit; **re-assert ledger claim strengths**, mark new framing.
*Evidence:* weakest independent corroboration (exec summary via the autonomous run only) → build small,
expect a near-term refresh (Mike). *Risk:* drift from source claims → re-assert strengths, no unsourced
claim. *Mirror:* yes. *Test:* an exec summary preserves hardened strengths, adds no unsourced claim.

**1.6 `build-skeleton → build-outline` (AUGMENT + RENAME; LEAF / role: input).** Two stages: (1) keep the
analytical skeleton matrix; (2) **new — render the per-section outline contract (Purpose / Must-claim /
Must-not-claim / Source-hooks / beats)** that `frankendraft`/`compose-section` consume, AND support
**iterative governance: re-architect an existing locked outline against new framing** (eval → keep/reorder/
orphan/new → discuss → refill the contract format). *Evidence:* Mike asked "do we have a skill for the
outline?" (the name didn't surface); the assistant had to improvise the contract-format rendering; named the
gap twice; blind-confirmed "build-skeleton is structure-from-scratch only, run out of lane." *De-conflict:*
`build-outline` **produces** the section contract; `compose-section` **consumes** it. *Rename* is the one
evidence-backed name-fix (contained blast radius; router alias note left). *Mirror:* yes. *Test:* "rewrite
the outline for §N against this framing" routes here and renders the contract format.

**1.7 `run-claim-harden` (RUNBOOK / role: orchestrate) — added this pass.** Whole-draft claim-hardening:
**triage each section** (harden / partial / skip-conceptual / nothing — with a real skip rule, over-hardening
named as the failure to avoid) → **dispatch `harden-claim` per section** (serial/parallel, cross-tool/cross-
model) → **per-section report artifacts + an outcome index** → **consolidate to a tiered close-out** → fold
to ledgers. Calls `harden-claim` + `ingest-source`. *Evidence:* blind map rated it the **strongest unowned
recurring runbook** (2 sessions, s1–9 artifacts, hand-assembled every time). *Risk:* over-hardening
conceptual sections → the triage skip rule is load-bearing. *Mirror:* yes. *Test:* a draft triages to a
correct harden/skip split; conceptual sections are skipped, not hardened.

---

## 2. EDIT — skill hardening (existing files)

**2.1 `voice-audit` — re-roughen / re-inject friction (NOVEL).** Add a generative move: flag suspiciously-
clean connective prose as a place the author may want to **add back** concrete, self-located, or first-person
texture. *Evidence:* Mike's highest-volume hand-edit is restoring idiosyncratic detail polish removed (the
transport operator). This is a shift from the pure "remove slop" framing → propose-only, author decides.

**2.2 `harden-claim` / `claim-audit` — re-verify on re-harden (NOVEL).** When a claim is re-hardened,
**re-verify any existing ledger attribution it rests on**; treat "previously corrected" as a yellow flag (a
prior correction was itself wrong and survived because it looked settled; thin-claim triage skips exactly
those entries).

**2.3 `references/writing-skill-common.md` — autonomous-vs-author edit-tier split (NOVEL).** Codify: apply
pure-factual corrections; **propose** claim-strength / framing / voice changes. Mike: "exactly the right cut."
This is the same risk-tier principle that powers `final-final-audit-pass`'s auto-resolve → state it once in common.

**2.4 multi-pass protected-decision memory (NOVEL, small).** A later pass must not silently undo a decision
an earlier pass deliberately protected (a density pass removed an em-dash a voice pass had kept). Add a
"carry protected decisions forward" line to `final-final-audit-pass` / `condense-section` / `writing-skill-common`.

**2.5 `slop-scan` / `voice-audit` — transport-operator tells.** Fold the recurring author hand-edit moves as
tells/checks: cut announcer/structural-move sentences; cut over-broad generalization tails; downgrade
absolute quantifiers toward calibrated; abstract-noun → concrete-construct. (Sign-posting already landed in
`0b10e04` — confirmed; these extend it. Run the sign-posting tell over author-written prose too.)

**2.6 `harden-writing-workflow` — two fixes.** (a) Lowercase the `hardening-contract.md` pointer (latent
case-break since the cleanup rename — resolves on macOS, breaks case-sensitive FS). (b) **Calibration note:**
a hand-edit on *prose* is normal authorial control, not a silent rejection — read it as a transport-operator
sample (what the edit added), and reserve "rejection" for wholesale discard/regenerate or in-chat correction.

**2.7 writing-loop git hygiene (small).** A `references/` note: fetch before merge (a stale `origin/main`
`branch -f` misstep occurred); make logical commit splits; commit own skill-file edits rather than leaving
them hanging; expect the self-modification guard on skill edits.

---

## 3. Naming convention (the last-step deliverable)

**3.1 Two-field metadata on every `SKILL.md` (mirrored).** `tier:` (core/leaf/orchestrator/runbook) +
`role:` (guard/input/substrate/transform/audit/closeout/meta). `calls:` authoritative; `called-by:` rendered
in `skill-router.md` (not stored). New `references/skill-tiers.md` defines the model once; `skill-router.md`
+ `skill-graph.md` + `CLAUDE.md` gain tier/role columns. **Forward naming rule:** runbook → `run-*`;
orchestrator → `compose-*`/descriptive or sweep `*-pass`; leaf audit → `*-scan`/`*-audit`; leaf input/
transform → `verb-noun`. The 7 new skills already follow it. Existing renames opt-in; `build-outline` is the
one applied. `finalize-document-with-audit` → `tier: runbook, role: closeout` (no separate box).

**Tier/role assignment (full inventory):** core/guard → preserve-authorial-writing. leaf/input →
source-manifest, extract-argument, build-outline, ingest-source. leaf/substrate → frankendraft. leaf/
transform → rewrite-block, minimal-edit. leaf/audit → slop-scan, claim-audit, voice-audit,
scaffold-architecture-audit, condense-section. orchestrator → compose-section, harden-claim, final-audit-pass,
derive-artifact. runbook → run-section, run-claim-harden, finalize-document-with-audit(closeout). meta →
harden-writing-workflow. substrate/external → the local-model substrate.

---

## 4. Contract edit — mtime scoping rule

Add to `references/hardening-contract.md` (§4 step 0 / §6): **scope the corpus by INTERNAL session
timestamps, never file mtime** — transcripts get copied/restored (backup, git, sync), resetting mtime to the
copy date (this pass found old XL transcripts all mtime'd to one copy date). Use the jsonl `timestamp` field;
for sessions spanning the cutoff, check session-ID continuity so a resumed tail is captured and its
already-reviewed body is not re-reviewed.

## 5. KEEP — landed in-session, blind-reconfirmed (do not relitigate)

Per-span fresh-context compose dispatch + anchor exemplar (`8e8c4fc`/`9fb3e3d`); sign-posting/meta-conclusion
slop tell (`0b10e04`); fetch-verify catching recall-based ID errors; frankendraft→rewrite-block transport;
the reviewable-surface / nothing-committed-without-say-so envelope across a multi-day session; heterogeneous
Claude+codex breadth with AUP-reroute; triage-before-dispatch with a real skip rule.

## 6. DEFERRED / WATCH

- "option-C smoothing attractor" (a content cut that removes verbatim specifics collapses even a warned
  agent to generic register) — partially covered by compose-section's anti-drift; **watch** whether it needs
  its own mitigation (re-anchor on a surviving mechanistic specific).
- End-to-end `run-build` (sequence run-section across all sections + finalize) — still premature; revisit
  once `run-section` + `run-claim-harden` are exercised.

## 7. Sequencing (Phase 5, after approval)

1. Low-risk edits + fixes: §2.6 case-fix, §4 contract mtime rule, §2.5 tells, §2.1/2.3 notes.
2. `build-skeleton → build-outline` (rename + augment; update refs/router/mirror/alias).
3. New skills: `final-final-audit-pass`, `condense-section`, `ingest-source` (+ harden-claim wire), `derive-artifact`(v0),
   then the runbooks `run-section`, `run-claim-harden`.
4. Naming metadata (tier:/role:/calls:) across all SKILL.md + mirrors + `skill-tiers.md` + router/graph/CLAUDE.
5. Mirror every behavioral edit to `agents/openai.yaml`.
6. Scrub + fresh-context leakage review → commit (separate approved step).

## 8. Tooling side-note (forward-looking)

The `(assistant-composed span → author-committed span)` pairs plus the committed patch series are, in
principle, a supervised seed for learning the **between-commits transport operator** — the systematic
difference between what the model drafts and what the author actually commits. The mid-cycle,
keystroke-level transport between an assistant output and the commit is the irreducible blind spot (it
leaves no artifact: file-history snapshots were empty, editor-selection records carry line numbers only).
Out of scope for this package; noted for the rationale trail. See
`transport-operator-analysis.md` for the characterization built from the recoverable signal.

---

*Raw per-unit findings, recurrence matrix, cross-review, and the transport bundle remain in the gitignored
scratch: `<gitignored local scratch>`.*

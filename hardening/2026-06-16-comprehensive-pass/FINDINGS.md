# Comprehensive hardening pass — findings & recommendations (2026-06-16)

**Authoritative pass.** Supersedes `../2026-06-12-tb-dossier/HARDENING-LOG.md` (folded in below;
keep it for the rationale trail). Method + authority model: `../../references/hardening-contract.md`. Plan:
`plan.md`. Confidential scratch (digests, per-session findings,
recurrence matrix, reconciliation) lives outside git and is **not** committed; this document
and the findings appendix are the scrubbed, generalized output.

## What this pass did

Ran `harden-writing-workflow` across the **entire** the TB-dossier project session history — 18
transcripts (2026-06-04 → 06-16), ~35 MB — not the single 06-12 session the prior log saw.
Pipeline: extract → exhaustive index → human-approved closed vocabulary → **blind** per-session
review (8 agents, un-anchored, emitting unlabeled memos) → single classifier → recurrence
matrix → reconcile prior work as evidence. Prior agent work was treated as **evidence to
evaluate, not a baseline** (keep/revise/revert/install/discard all live).

**Blindness check — HEALTHY.** Independent findings vs the prior log: **~45% novel / ~38%
confirming / ~2% contradictory / ~15% differently-scoped.** A leaked answer-key would read ~0%
novel / ~90% confirming. The independent pass surfaced an entire cluster (the claim-hardening
loop, reader-privacy, provenance-graph, orchestration-delegation, the raw→polished pipeline)
the narrow 06-12 log never touched, because it only saw one session.

**Generalization tiers** (on every build item, to keep one dossier from polluting general
skills): **GWP** global-writing-protocol · **SSA** serious-sourced-argument · **DSW**
dossier/scaffold-workflow · **TBW** TB-specific-watch.

---

## 1. Headline meta-finding — the delivery gap

The 06-12 pass **approved 5 skill edits; only 1 reached the skill files.** Verified against disk:

| 06-12 approved edit | status now | cross-session evidence |
|---|---|---|
| slop-scan: em-dash density-as-tell | **APPLIED** ✓ (committed) | CONFIRM (strongest; ~12 moments + the rolling-window/Pangram result) |
| draft-from-sources: self-screen slop + re-assert ledger strength | **not applied** | CONFIRM (slop-in-own-output ≥2 sess; ledger-loosening 3 sess) |
| voice-audit: consult voice-card "do-not-flag" before flagging | **not applied** (the *card* half landed; the *procedure* half didn't) | CONFIRM (over-flags recur 2 sess) |
| claim-audit: verify claim direction/sign | **not applied** | CONFIRM (≥4 sess — most-confirmed unapplied edit) |
| preserve-authorial: mark authored interpretation in connective tissue | **not applied** | CONFIRM (the connective-tissue consensus leak) |

The voice-card additions and the slop-scan em-dash/coda/near-redundancy edits **did** land
(committed `62e21e6`, `f91094c`) and are confirmed KEEP. But the four *skill-procedure* edits
were approved and never written. **None should be dropped — evidence confirms all four.** This
gap (approve ≠ apply) is the first thing to fix, and argues for a closeout check in the
hardening workflow itself (see §7 meta).

---

## 2. APPLY NOW — the four confirmed, approved-but-unlanded edits

Low-risk, already approved, now independently re-confirmed. Patch-ready sketches; final wording
is Mike's.

**2.1 `claim-audit` (+ promoted `harden-claim`) — direction/sign check.** [SSA] *Most-confirmed
unapplied edit, N≥4.*
- Problem: verification confirmed a citation existed for a topic but not that the claim's
  *direction/sign* matched the evidence (a load relationship asserted backwards; a summary that
  inverted a paper's polarity).
- Target: `skills/claim-audit/SKILL.md` Procedure (after the certainty/scope/causal-strength
  step). Proposed: *"Verify claim direction/sign, not only that supporting evidence exists: a
  'lower X → more Y' must match the evidence's actual sign; check comparators and magnitude, and
  treat a research-summary's stated direction as a claim to verify against source, not trust."*
- Over-hardening risk: low. Test: re-run on a known sign-inversion; it should flag.

**2.2 `compose-section` (reworked `draft-from-sources`, §3.1) — closing self-screen + ledger
re-assert.** [GWP self-screen / SSA ledger]
- Problem: drafts shipped with first-pass LLMisms the skill already knows how to spot, and
  loosened previously-hardened claim strengths.
- Target: the closing step of `compose-section` (the renamed/reworked draft-from-sources).
  Proposed (lighter **checklist-pointer** form — decided §7.2, to protect raw edges): *"Before
  presenting, run the slop-scan tell-list over your own draft and, for any load-bearing claim
  with a hardened strength in the ledger, re-assert that exact strength; surface residual slop
  and any certainty drift rather than shipping clean."*
- Over-hardening risk: medium (auto-smoothing could sand Mike's edges) → checklist-pointer, not
  auto-rewrite. Test: a draft that loosens a ledger claim should get flagged, not silently kept.

**2.3 `voice-audit` — consult the do-not-flag list before flagging.** [GWP]
- Problem: the audit re-flagged Mike's own register markers (sentence-initial Latinate
  connectives, British quote punctuation, load-bearing antithesis) as generic drift. The
  *do-not-flag list* is in the voice-card; the *behavior* (consult it first) never reached the
  audit procedure — this is the higher-leverage half.
- Target: `skills/voice-audit/SKILL.md` Procedure + Verification. Proposed: *"Before flagging a
  connective, structure, or phrasing, check it against the voice-card 'author's own / do-not-flag'
  list. Distinguish a deliberate authorial exception from drift — surface it as a candidate for
  the author's call; do NOT codify the specific one-off move as a rule."*
- Over-hardening risk: low. Test: feed a draft using "Furthermore" + antithesis; it should not flag.

**2.4 `preserve-authorial-writing` — mark authored interpretation in connective tissue.** [SSA]
- Problem: interpretation smuggled into captions/transitions/topic-sentences as if neutral —
  exactly where the assistant's prior leaks in and can contradict the thesis (the connective-tissue
  consensus leak, §4 below).
- Target: `skills/preserve-authorial-writing/SKILL.md` markers/expansion-discipline. Proposed:
  *"Authored interpretive content placed in connective tissue (captions, transitions, topic
  sentences, figure legends) must be marked, not blended — it is where the assistant's prior
  leaks in undetected."* Reuse the existing `[CLAIM RISK]` marker (see open-Q 7.3).
- Over-hardening risk: low. Test: a drafted caption carrying an interpretive stance should be marked.

---

## 3. New skills — BUILD / INSTALL

**3.1 BUILD `rewrite-block` (atom) + REWORK + RENAME `draft-from-sources` → `compose-section`
(orchestrator).** [DSW] *Resolved with Mike 2026-06-16 — the "A+B synthesis."* This pair fixes
the blur between frankendraft / draft-from-sources / minimal-edit that currently muddies the
generating cluster.

The current `draft-from-sources` silently conflates two operations the rolling-window evidence
says must be separated: **TRANSPORT** (author raw text for a span exists → convert raw→polished,
low drift) and **GENERATE** (no raw exists → synthesize from sources, higher drift, heaviest
voice control). Split them:

- **`rewrite-block` = the atomic TRANSPORT operator** (requires a raw span). Treats
  voice-preserving rewrite as **local rewrite transport, not open-ended generation**: pass-1
  (raw-acausal / polished-causal) prompt = LEFT RAW→LEFT POLISHED (the local operator, shown not
  told) · TARGET RAW (content + voice microstructure) · RIGHT RAW (where the thought goes →
  prevents over-closing / early-summarizing / generic drift) → emit TARGET POLISHED. Pass-2
  (polished-acausal) = seam-repair only, **calls `minimal-edit`**, no restyle/global-improve.
  Kept deliberately *pure* (transport only; never generate-from-nothing) so it stays a clean,
  testable atom.
- **`compose-section` (reworked `draft-from-sources`) = the orchestrator.** Walks the scaffold
  span by span: **raw span → `rewrite-block`; hole → bounded generate-from-sources** (the one
  irreducible piece of genuine "draft from sources" — kept small and voice-controlled) → then a
  `minimal-edit` seam pass across the assembly. Inherits the current skill's good bones (section
  contract, audit notes, no-invention, preserve-claim-strength) as its framing + hole-fill rules.
- **Backward-compatible:** no frankendraft / no raw → every span is a hole → `compose-section`
  behaves like today's one-shot `draft-from-sources`. Frankendraft present → most spans take the
  low-drift transport path. The rework strictly dominates current behavior.
- **Why rename (not keep `draft-from-sources`):** the name implied one-shot generation and sat at
  the center of the cluster blur; `compose-section` names the orchestrator role and avoids
  collision with frankendraft's "assemble." (Mike's call: the blur didn't sit well in the mental
  map of the process.)
- Evidence: WORKED `rolling-window-transform` across 6be476a5 + 8843a17a + the experiment; the
  rolling-window §7 became canonical (git `32e79ce`) and read "mostly human" on the AI-detector;
  also resolves the homeless "register-translate existing verbatim" op.
- Over-hardening risk: low–med. The generate-for-holes path still carries drift risk → keep holes
  small, voice-controlled, and marked. Test: a raw span transports preserving voice without
  over-closing at the right boundary; a hole generates bounded prose with markers; the section
  assembles with a clean seam pass.

**3.2 BUILD `scaffold-architecture-audit` — long-range cross-section structure (pre-draft).** [DSW]
- Pre-transform audit of the raw scaffold's *cross-section* structure: section ownership/relocation,
  cross-section redundancy, boundary near-duplicates, numbering gaps. Bakes architecture into the
  raw scaffold so the raw→polished transform is *pure polish*, not restructure-plus-polish (less
  for a one-shot to get wrong → lower drift). **Re-runnable** as the scaffold grows.
- **De-conflict with slop-scan:** slop-scan's near-redundancy tell is *line/paragraph-local*;
  this skill owns *cross-section* redundancy. State the division of labor in both.
- Evidence: N≥3 (the §7/§8 relocation, §8/§9 de-dup, §5-close move) + git `6b81362`/`b180f5f` +
  the 06-15 addendum + Mike's verbatim "this is a missing skill feature."
- Pipeline placement: build-skeleton → frankendraft (raw) → **scaffold-architecture-audit** →
  `compose-section` { `rewrite-block` per raw span · generate per hole } → `minimal-edit` seam pass.
  Over-hardening risk: low. Test: feed a scaffold with a duplicated cross-section claim; it should
  surface a relocation/de-dup recommendation.

**3.3 INSTALL `frankendraft` — built, not wired.** [DSW]
- The skill file is complete and sound (self-marked "DRAFT — not installed"; no symlink). Evidence
  N≥3 + its required independent fidelity-audit caught 6/27 verbatim drifts a self-check missed.
- Action: wire into the router (build-skeleton → frankendraft → draft-from-sources/rewrite-block)
  and symlink into the global configs. Over-hardening risk: low.

**3.4 PROMOTE `harden-claim` repo-local → package skill.** [SSA] *Highest-value WORKED move.*
- The claim-hardening loop ("DOTS": sharp testable question → breadth fan-out → fetch-verify →
  honest synthesis → author sets strength → fold to ledgers) lives only in the aerosol repo and
  is hand-reassembled in the package each session. The package has `claim-audit` (audit) but not
  the *re-research/verify/reframe loop*. N≥3 across sessions.
- Action: generalize to a package skill; **fix the structurally-impossible "spawn two model
  families inside one subagent" instruction** — the *lead* crosses model families, a subagent
  cannot spawn subagents. Over-hardening risk: low. Test: the loop runs lead-orchestrated.

---

## 4. New cross-cutting goals & notes — BUILD

**4.1 Consensus-prior goal → `references/writing-skill-common.md` (generic verification goals).**
[SSA] *N now ≥4 — clears the 06-12 "wait for a 2nd session" bar.*
- Use the reframed wording (NOT "consensus as foil"): *"Anchor on the author's reading, not the
  field's. Treat the author's thesis as the anchor and locate the field's consensus relative to
  it. Where they agree, the prose takes it for granted (no consensus throat-clearing); where they
  diverge, the where/why is the substance. Never default to the consensus framing or let it leak
  into authored connective tissue."* Tightly coupled to 2.4 (the leak site was a caption).
- Evidence: §4 cohort-vs-assay inversion, message-vs-model over-reading, TB-lineage correlated
  blindspot, an "orthogonal/wrong-geometry" pushback — 4 sessions. Test: on a heterodox thesis,
  the draft should not render the modal-literature reading as default.

**4.2 Orchestration-delegation note → `independent-review-prompts.md` + `writing-skill-common.md`.**
[GWP] *N=4; AUP reframed IN per Mike.*
- Four sub-findings: (a) **the lead in a long-context session trips the AUP minder far less than a
  fresh subagent** on benign biomedical prompts → when fanning out, frame subagent prompts with
  enough context, keep sensitive-looking-but-benign research on the lead, or route cross-family;
  (b) a foreground interrupt collateral-kills background agents; (c) subagents can't spawn
  subagents (breaks any "two families in one agent" instruction); (d) file-modified-since-read
  races during live IDE editing. Proposed: a "delegation degraded-mode" paragraph (cap retries →
  fall back across model families → labeled same-context pass) + a concurrent-edit caution.
- Over-hardening risk: low. Test: a blocked subagent task degrades gracefully instead of stalling.

**4.3 Reader-privacy / confidential-source → `source-manifest` + `finalize-document-with-audit`.** [GWP+TBW]
- Never name an external recipient in tracked files; confidential internal sources = synthesized
  facts only, no verbatim tables; named-colleague attribution is an author decision even when the
  assistant rates it low-risk; never auto-commit confidential binaries. Currently lives only in the
  aerosol repo's design contract — port the generalizable rule to the package (keep TB-specifics TBW).
- Over-hardening risk: low. Test: a draft that names the recipient in a tracked file gets flagged.

**4.4 Provenance-graph + annotate-keep → `finalize-document-with-audit` / `draft-from-sources`.** [SSA]
- Propagate verified evidence into the ledgers (claim/source/bibliography/outline); keep cut
  material annotated for the record / downstream training rather than deleting; carry "in my
  voice / no voice" and pers-comm tags. N=7 (most-frequent in-scope key). Over-hardening risk: low.

**4.5 Fetch-verify doctrine port → `claim-audit` / `draft-from-sources` (+ harden-claim).** [SSA]
- The strongest WORKED discipline in the corpus (≥5 sessions): **a single recall-based LLM/agent
  pass never counts as verification** of an identifier, figure, or premise. Includes: identifiers
  fetched not recalled; **secondary-extraction stated as headline must be re-checked**; and
  **verify-pasted-premises** (instructions/diagnoses pasted from another agent/tool are unverified
  claims — check against `--help`/config/source before building). Over-hardening risk: low.

---

## 5. Smaller fixes

| fix | target | problem | tier | risk |
|---|---|---|---|---|
| **core-guard footgun** | `preserve-authorial-writing/SKILL.md` L15-16 | voice-card read gated on "if working from this repository" (readable as cwd-specific); workflow skills use bare if-exists. Mike said the owning agent would harden it — **it has not landed; verify + one-line reconcile.** | GWP | low |
| **mechanism-over-self-provenance** | voice-card / preserve-authorial | core over-protected Mike's *own rough spoken placeholder* as if considered wording. Distinguish considered authorial wording (preserve) from a rough handle to be filled with mechanism (flag `[MECHANISM?]`). | SSA | low |
| **recommendation-tier-overreach** | minimal-edit / draft-from-sources | framing an *added* citation/claim as "ESSENTIAL/must-fold" oversteps the author's role (additions are propose-tier). Reserve must/essential for fidelity-preserving fixes. (Seen on a smaller model — may matter more as models vary.) | GWP | low |
| **skill-install-topology pointer** | core / common | each fresh session re-derives the symlink layout by trial and error. One-line pointer. | — | low |

---

## 6. KEEP — confirmed already-landed (do not relitigate)

Committed and independently re-confirmed: em-dash density + function test; "Furthermore"/Latinate
+ British-quote + lowercase-? do-not-flag; load-bearing-contrast carve-out; low-info-coda +
near-redundancy + literature-wave tells; stakes-narration/ornamental-diction; "personal = pointed
not softer"; distinguish-exception-from-drift. Also validated WORKED (keep as-is): conflict-don't-
reconcile, risk-tier separation, ask-before-fanout, heterogeneous-breadth (Claude×GPT-5.5),
in-repo-research-sidequest.

---

## 7. Decisions (resolved with Mike, 2026-06-16)

All five resolved; carried into the recommendations + sequencing.

**7.1 — DECIDED: INSTALL the N-way blind comparative judge** (reverses the 06-12 decline). The
contract's independence default kept getting skipped at runtime; the evidence is the strongest
verification signal in the corpus (an independent cross-family audit caught 6/27 verbatim drifts a
same-model self-check passed; a blinded triangulation; the experiment's genuinely-blind N-way
judge). Action: add an *N-way comparative* reviewer to `references/independent-review-prompts.md`
(distinct from the per-draft claim/voice reviewers) + an "independence-default when the author is
also the auditor" note. [SSA/DSW]

**7.2 — DECIDED: checklist-pointer** (not auto-chain) for the `compose-section` self-screen (§2.2) —
protects raw edges.

**7.3 — DECIDED: reuse `[CLAIM RISK]`** (no new `[INTERP]` marker) for connective-tissue
interpretation (§2.4) — avoid marker proliferation.

**7.4 — DECIDED: process the accreted voice-card now into a narrow core + a dossier.** The card has
drifted toward register/dossier-specific accretion. Split `voice/voice-card.md` into (a) a **narrow
core voice-card** — general, register-agnostic invariants + do-not-flag rules that hold across all
of Mike's writing; and (b) **`voice/dossiers/<register>.md`** — the public-personal-essay /
TB-dossier-specific rules that must not bleed into other registers (the dir already exists).
Generalization-tier discipline governs the split: dossier-specific → `dossiers/`, never the core.
[GWP core / DSW+TBW dossier]

**7.5 — DECIDED: defer** the external-collaboration / maintainer-facing register (out of
writing-dossier scope; the assistant already handles it ad hoc).

---

## 8. Tooling side-note (forward-looking — NOT infra to build now)

Out of writing-skill scope; kept for the rationale trail.

- **AI-detector signal:** Pangram flips around a positionally-locked ~376-token cut-point (decisive
  test not yet run); chunked/rolling generation reads "mostly human" — consistent with the
  rolling-window transform's anti-drift mechanism. A real future experiment, not a current claim.
- **Harness/tooling friction** (out of writing-skill scope): AUP false-positives on benign
  biomedical subagent prompts (see 4.2 for the in-scope delegation lesson); jsonl false-positive
  recovery → adopt a confirm-before-destroy convention; one-time codex-MCP setup. Worth feeding back
  to the platform.
- **Meta (hardening harness):** gate writing-hardening session-selection on whether a writing
  artifact was edited / a writing skill invoked (one session here was an out-of-scope OSS PR that
  looked in-scope by date).

---

## 9. Sequencing

1. **Now, low-risk:** §2 (the four confirmed unapplied edits) + §5 small fixes + §3.3 install
   frankendraft + §7.1 install the N-way blind judge. Approved-or-trivial; unblock the backlog.
2. **Next, build / reorg:** §3.4 promote harden-claim; §4.1 consensus goal; §4.5 fetch-verify
   doctrine; §4.2 delegation note; §7.4 split the voice-card into narrow core + `voice/dossiers/`.
   (Mostly additive / reorg.)
3. **Then, the raw→polished pipeline (design as one unit):** §3.1 `rewrite-block` (atom) +
   `compose-section` (rework + rename of draft-from-sources) + §3.2 scaffold-architecture-audit.
   They share one pipeline; the §2.2 self-screen lands on `compose-section`.
4. Decisions §7.1–7.5 are resolved (above).
5. Mirror every behavioral skill edit to its Codex `agents/openai.yaml`; update `skill-router.md`
   for the new/renamed skills (frankendraft, rewrite-block, compose-section,
   scaffold-architecture-audit, promoted harden-claim).
6. Each item carries its generalization tier — dossier-only learning routes to `voice/dossiers/` or
   the repo-local skill, **not** the shared skills.

Per the plan, **applying these edits is a separate, Mike-approved step** — this document is the
recommendation set, not the application.

---

*Findings appendix (scrubbed per-session evidence): `findings-appendix.md`. Raw
per-session findings, recurrence matrix, and reconciliation remain in the gitignored scratch.*

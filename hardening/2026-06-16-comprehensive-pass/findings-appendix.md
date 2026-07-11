# Findings appendix — scrubbed per-key evidence (2026-06-16)

Scrubbed evidence appendix; raw per-session findings remain in gitignored scratch.

Companion to `FINDINGS.md`. This lets a reader see the
evidence behind each recommendation without exposing dossier content. Identities are
generalized: the dossier's external recipient → "the external recipient"; internal
colleagues → "a named colleague"; grant identifiers and budget figures → "an internal
grant" / "a confidential figure". Published-literature author surnames used purely as
citation-verification examples are public and kept as such.

Locators: `sid8` = 8-char session id; `#m##` = turn in that session; `L###` = digest
line; git hashes are repo commits. Severity = harm if unfixed. Leverage = breadth ×
durability of the fix. Build/install rule: **BUILD** when (N_sessions ≥ 2 with distinct
artifacts/modes) **OR** (N_sessions = 1 with ≥3 independent high-severity moments).
WORKED keys are not down-weighted for low apparent N (the index is blind to silent
acceptance). Scope: **IN** = writing-workflow; **SIDE** = future-tooling note; **OUT** =
dropped. Generalization tiers: **GWP** global-writing-protocol · **SSA**
serious-sourced-argument · **DSW** dossier/scaffold-workflow · **TBW** domain-specific-watch.

---

## A. Recurrence matrix

Columns: `key | failure-class | sessions (sid8) | N_sess | N_moments | distinct
artifacts/modes | sev | lev | target file | scope | disposition`.

| key | failure-class | sessions | N_sess | N_mom | distinct artifacts/modes | sev | lev | target file | scope | disposition |
|---|---|---|---|---|---|---|---|---|---|---|
| **fetch-verify-citation** | weak-verification | 8843a17a, 6be476a5, b813bab4, ba7d5b10, 27d8bfa4 | 5 | ~20 | identifier swap, sign-inversion, secondary-extraction, dual-model, figure | high | high | claim-audit, draft-from-sources, harden-claim, writing-skill-common | IN | **BUILD** (port doctrine to package) |
| **blind-comparative-judge / independence-default** | weak-verification (WORKED) | 8843a17a, 6be476a5, b813bab4, ba7d5b10, e75e73cb, exp | 6 | ~20 | self-scan-caveat, dual-§6-review, cross-family-drift audit, blinded triangulation, N-way judge | high | high | independent-review-prompts, voice-audit, claim-audit | IN | **BUILD** (author-context independence-default + N-way judge) |
| **emdash-density** | voice-card-gap | 8843a17a, 6be476a5, +git(ba3c924,1ecf2ec) | 2 | ~12 | §1/§5/§7 prose, harden pass, git | high | high | slop-scan, voice-card | IN | **DONE — KEEP** (committed 62e21e6/f91094c) |
| **consensus-prior-default** | consensus-prior-leak | b813bab4, 6be476a5, 8843a17a, ba7d5b10, e75e73cb, e2df21be | 5 | ~9 | §4 caption inversion, message-vs-model, lineage correlated-blindspot, "orthogonal" pushback | high | high | writing-skill-common (goal), claim-audit | IN | **BUILD** (cross-session N ≥4) |
| **scaffold-longrange-structure** | missing-subskill | 6be476a5, 8843a17a, ba7d5b10, +git(6b81362,b180f5f) | 3 | ~9 | §7/§8 reorder, §8/§9 de-dup, §5-close move, §6-arc | high | high | NEW skill `scaffold-architecture-audit` | IN | **BUILD** |
| **rolling-window-transform / raw→polished** | missing-subskill (WORKED) | 6be476a5, 8843a17a, exp, +git(ba3c924→32e79ce) | 3 | ~10 | rolling-window §7, A/B marathon, hybrid-graft, AI-detector "human" | high | high | NEW skill `rewrite-block` | IN | **BUILD** (its own skill, per author directive) |
| **harden-claim-loop** | missing-subskill (WORKED) | b813bab4, ba7d5b10, 8843a17a, +git(d895808,d9ebf35) | 3 | ~12 | DOTS pattern, §2/§5 reframe, burden-data reframe, challenge-not-ally synthesis, 5 sidequests | high | high | promote repo-local → package skill | IN | **BUILD/INSTALL** |
| **aup-subagent-block-codex-fallback** | orchestration-delegation | b813bab4, ba7d5b10, 8843a17a, thin(×3) | 4 | ~15 | launch-block, synthesis-block, interrupt-collateral, subagent-can't-spawn, cross-family-peer | med | high | independent-review-prompts, writing-skill-common | IN | **BUILD** (degraded-mode + lead-vs-subagent framing) |
| **provenance-fold-discipline** | provenance-bookkeeping-gap (WORKED) | 6be476a5, 8843a17a, b813bab4, ba7d5b10, MB(×3) | 7 | ~16 | ledger folds, annotate-keep, retire-repoint, pre-delete-harvest, pers-comm | med | high | finalize-document-with-audit, draft-from-sources | IN | **BUILD** (provenance-graph + annotate-keep) |
| **ledger-claim-loosening** | claim-direction-sign-error | 8843a17a, b813bab4, 6be476a5 | 3 | ~6 | author re-inflated §4, "too strong" downgrade, dropped-estimator | high | med | claim-audit, draft-from-sources | IN | **BUILD** (re-assert hardened strength post-draft; removed-caveat ≠ strength change) |
| **claim-direction-sign** | claim-direction-sign-error | 8843a17a, ba7d5b10, b813bab4, MB | 4 | ~11 | symptom/load reversal, polarity inversion in summary, "leading candidate" | high | med | claim-audit, harden-claim | IN | **DONE-partial** (approved edit not yet applied — see §C) |
| **latinate-glue-overflag** | voice-card-gap | 8843a17a, 6be476a5 | 2 | ~6 | "Furthermore", British-quote punct, lowercase-?, antithesis | med | med | voice-card, voice-audit | IN | **DONE — KEEP** (committed) |
| **reader-privacy-confidential-source** | register-scope-overreach | b813bab4, MB(e2df21be), ba7d5b10 | 3 | ~9 | recipient-name scrub, budget figures, colleague naming, confidential files not auto-committed | high | med | source-manifest, finalize-document-with-audit | IN | **BUILD** (port generalizable rule to package) |
| **paragraph-closer-and-restatement-cut** | missing-skill-instruction | 6be476a5, 8843a17a | 2 | ~5 | coda cuts, within-§ repeat opener | med | med | slop-scan | IN | **DONE — KEEP** (committed f91094c) |
| **stakes-narration-ornamental-diction** | voice-card-gap | 8843a17a, 6be476a5 | 2 | ~5 | "striking example", ornamental diction | med | med | slop-scan, voice-card | IN | **DONE — KEEP** |
| **register-calibration / mechanism-over-self-provenance** | voice-card-gap | 8843a17a, b813bab4, 6be476a5 | 3 | ~6 | personal=pointed, mechanism>provenance, audience-tuning for a newcomer reader | high | med | voice-card | IN | **DONE-partial** (own-verbatim-as-hole-marker facet still implicit) |
| **frankendraft-substrate** | missing-subskill (WORKED) | ba7d5b10, 8843a17a, 6be476a5, +git(c5e9373) | 3 | ~7 | scaffold assembly, fidelity audit | med | high | `skills/frankendraft` (DRAFT) | IN | **INSTALL** (built; not wired) |
| **conflict-dont-reconcile** | WORKED | 6be476a5, b813bab4, ba7d5b10 | 3 | ~4 | conflicting counts, b-line, cross-model disagreement | low | med | writing-skill-common (exists) | IN | **KEEP** (validated) |
| **risk-tier-separation** | WORKED | 8843a17a, 6be476a5, 27d8bfa4 | 3 | ~12 | propose-don't-apply across §5–§10 | low | high | preserve-authorial (exists) | IN | **KEEP** (validated) |
| **heterogeneous-breadth-node** | WORKED | b813bab4, ba7d5b10 | 2 | ~6 | cross-family breadth, identifier catch | low | med | harden-claim | IN | **KEEP** / fold into promotion |
| **skill-stack-reachability-verify** | WORKED | MB(d7bc46fc) | 1 | 1 | empirical base-dir probe | low | low | — | IN | **WATCH** (don't build) |
| **compaction-survival-plan** | tooling-friction | 8843a17a, 6be476a5, b813bab4 | 3 | ~4 | continuation prompts, locking | low | low | writing-skill-common (note) | IN | optional note |
| **register-translate-homeless** (NEW) | unclear-skill-boundary | 8843a17a | 1 | 1 | §1–6,10 verbatim→essay | med | high | router + rewrite-block | IN | resolved by `rewrite-block` BUILD |
| **jsonl-false-positive-cleanup** | tooling-friction | a552c3b4, b09d54dc, 4da1cd1c | 3 | ~4 | log truncation | low | low | (none) | SIDE | side-note (confirm-before-destroy) |
| **in-repo-research-sidequest** | WORKED | 27d8bfa4, 8843a17a, f335a4e5 | 3 | ~5 | bounded literature side-questions | low | low | harden-claim | IN | **KEEP** |

### registry-miss / NEW findings (no existing key fit)

1. **`rewrite-block` (raw→polished local-transport skill)** — NEW SKILL. The
   `<raw><polished><raw><fill>` pattern. `rolling-window-transform` (WORKED) is the
   runtime evidence; the skill is new and the author directed it be its own skill (not a
   draft-from-sources reshape). Two-pass: pass-1 generate-under-constraint, pass-2
   seam-repair (calls `minimal-edit`). **BUILD.** Evidence: strong (WORKED + canonical §7
   git 32e79ce + AI-detector "mostly human" + author's explicit directive).
2. **`scaffold-architecture-audit` (long-range cross-section structure)** — NEW SKILL.
   Pre-draft audit of the raw scaffold's cross-section structure (ownership/relocation,
   redundancy, boundary near-dups, numbering gaps). Re-runnable. **BUILD.** Evidence:
   strong (N≥3 sessions + git 6b81362/b180f5f; addendum + author's "this is a missing
   skill feature").
3. **harden-claim → package promotion** — INSTALL. Currently repo-local only. Highest-value
   WORKED move across 3 sessions; hand-reassembled in the package each time. The package
   has `claim-audit` (audit) but not the re-research/fetch-verify/reframe loop. Evidence:
   strong.
4. **concurrency / orchestration-delegation note** — degraded-mode + lead-vs-subagent +
   concurrent-edit. (a) usage-policy false-positives fire at fresh subagents far more than
   the lead on benign domain prompts → frame/route subagent tasks; (b) foreground-interrupt
   collateral-kills background agents; (c) subagents can't spawn subagents (breaks "two
   families in one agent"); (d) file-modified-since-read races during live IDE editing.
   **BUILD** as a short note. Evidence: strong (N=4 sessions).
5. **verify-pasted-premises (WORKED)** — treat instructions/diagnoses pasted from another
   agent/human/tool as unverified claims; check against `--help`/config/source before
   building. Fold into fetch-verify doctrine (not a new skill). Evidence: medium-strong.
6. **mechanism-over-self-provenance** — the core over-protected the author's own rough
   spoken placeholder as if considered wording. Distinguish considered authorial wording
   (preserve) from a rough handle expected to be filled with mechanism (flag `[MECHANISM?]`).
   Partially covered by voice-card B + core invariant 1; the own-verbatim-as-hole-marker
   facet is not explicit. Fold into preserve-authorial / voice-card. Evidence: medium (1
   session, high-severity, headline lesson).
7. **core-guard-condition-footgun** — `preserve-authorial-writing` gates the voice-card read
   on "if working from this repository," readable as cwd==writing-assistant; workflow skills
   use bare `if-exists`. **Verify it landed — current text still carries the conditional
   phrasing at L15-16.** Low-effort one-line reconcile.
8. **recommendation-tier-overreach** — framing an *added* citation/claim as
   "ESSENTIAL/must-fold" oversteps the author's role (additions are propose-tier). Reserve
   must/essential for fidelity-preserving fixes. Observed on a smaller model. Fold into
   minimal-edit/draft-from-sources. Evidence: medium (1 session, model-dependent).
9. **skill-install-topology-undocumented** — every fresh session re-derives the symlink
   layout by trial and error (8843a17a #m23). One-line pointer. Low.
10. **external-collaboration-register** — no voice-card register for maintainer-facing /
    OSS-reply prose. DEFER unless scope confirmed. Low.
11. **digest-routing-gap (meta)** — one session was mis-routed as a writing session when it
    was an out-of-scope OSS PR; gate writing-hardening selection on whether a writing
    artifact was edited / a writing skill invoked. SIDE.

---

## B. Confirmation detector (did the blind pass just re-find the prior log?)

The blind pass covered 18 sessions (2026-06-04 → 06-16). The prior hardening log covered a
single narrow window (06-12). Comparing the independently-derived findings against the prior
log's steering table + 5 approved edits + the consensus / scaffold-audit / blind-judge
proposals:

| relationship | share | examples |
|---|---|---|
| **Novel** (not in the log) | **~45%** | harden-claim loop & promotion; reader-privacy/confidential-source; provenance-graph + annotate-keep; orchestration-delegation (usage-policy lead-vs-subagent, interrupt-collateral, subagents-can't-spawn); rewrite-block as its own skill; verify-pasted-premises; mechanism-over-self-provenance; core-guard footgun; frankendraft install-state; recommendation-tier-overreach; heterogeneous-breadth-node |
| **Confirming** (independently re-derived) | **~38%** | em-dash density tell; "Furthermore"/Latinate over-flag; load-bearing-contrast carve-out; anaphora generative-vs-collapse; consensus-prior on §4 caption; direction/sign check; re-assert-hardened-strength; slop-scan self-screen; scaffold long-range structure; blind comparative judge; risk-tier separation |
| **Contradictory** | **~2%** | one: the log **declined** the blind comparative-judge as ad-hoc ("a fuller workflow already lives in the contract"); cross-session evidence (a cross-family audit caught 6/27 verbatim drifts a same-model self-check passed; a blinded triangulation; an N-way judge in the experiment) **contradicts the decline** and supports installing it. Differently-weighted, not a clean reversal. |
| **Differently-scoped** | **~15%** | consensus-prior: log = N=1, "needs a 2nd session"; blind = N≥4 → now build. Em-dash/Latinate: log = voice-card additions; blind = also a voice-audit *behavior* + slop-scan density. harden-claim: log never mentioned it; blind = promote to package. |

**Blindness verdict: HEALTHY.** A leaked-blindness signature would read ~0% novel / ~90%+
confirming. The independent pass is **~45% novel** — it surfaced an entire cluster
(harden-claim, reader-privacy, provenance-graph, orchestration-delegation, the
rewrite-block/scaffold pipeline) the narrow 06-12 log never touched, because that log saw one
session and these recur in the origin and hardening sessions it predates/post-dates. The ~38%
confirming overlap is the expected core — strong corroboration without saturation. The single
contradiction (blind-judge) is a genuine evidence-driven disagreement with the 06-12 triage,
flagged honestly rather than suppressed. The "novel" share is if anything *understated*: one
XL session contributed ~0 writing findings (out-of-scope OSS PR), and the structure/rolling-window
work it was supposed to cover was recovered through the git channel rather than a chat memo.

---

## C. Prior-work disposition table

Columns: `item | current status (verified vs disk) | cross-session evidence verdict |
disposition | tier`.

### The 5 prior "approved" edits (application status verified against disk)

| item | current status | evidence verdict | disposition | tier |
|---|---|---|---|---|
| **Edit 1 — draft-from-sources: self-run slop-scan + re-assert ledger strength before presenting** | **NOT APPLIED.** No slop-self-screen or hardened-strength-recheck step in the skill | CONFIRM — slop-in-own-output recurs (8843a17a; 6be476a5); ledger-loosening recurs (3 sess) | **REVISE/APPLY** (lighter checklist-pointer form) | GWP (self-screen) + SSA (ledger re-assert) |
| **Edit 2 — voice-audit: check voice-card "do-not-flag" list before flagging; surface exception, don't codify** | **NOT APPLIED.** Procedure step 5 still bare "Flag terminology substitutions"; the do-not-flag *list* did land in the voice-card | CONFIRM — "Furthermore" + antithesis + British-quote over-flags recur | **REVISE/APPLY** (the procedure half — the higher-leverage one) | GWP |
| **Edit 3 — slop-scan: em-dash density-as-tell + fix-by-judgment** | **APPLIED** (committed 62e21e6/f91094c; full em-dash function test + density note) | CONFIRM (strongest external evidence + 12 moments) | **KEEP** | GWP |
| **Edit 4 — claim-audit (+harden-claim): verify claim direction/sign, not just citation-exists** | **NOT APPLIED.** claim-audit step 5 = "certainty/scope/causal-strength" but no explicit direction/sign check; harden-claim lacks it too | CONFIRM — sign errors recur hard (symptom/load reversal 8843a17a #m48; polarity inversion ba7d5b10 L573; a "less X → more Y" inversion) | **REVISE/APPLY** | SSA |
| **Edit 5 — preserve-authorial: mark authored interpretation in connective tissue (captions/transitions/topic-sentences)** | **NOT APPLIED.** markers list has no `[INTERP]` and no connective-tissue rule | CONFIRM — the §4 caption smuggling (8843a17a #m2786) is exactly this | **REVISE/APPLY** (reuse `[CLAIM RISK]`) | SSA |

**Net: 1 of 5 applied (em-dash). Four approved-but-unlanded.** This is the single
most-actionable finding: the 06-12 approvals largely did not reach the skill files (only the
voice-card additions + slop-scan em-dash landed; the four skill-procedure edits did not).
Cross-session evidence CONFIRMs all four — none should be dropped.

### Committed slop-scan / voice-card edits

| item | current status | evidence verdict | disposition | tier |
|---|---|---|---|---|
| **voice-card: personal=pointed, Latinate do-not-flag, em-dash G, load-bearing contrast, distinguish-exception-from-drift** | APPLIED (62e21e6) | CONFIRM | **KEEP** | GWP/SSA |
| **slop-scan: low-info coda + near-redundancy detectors** | APPLIED (f91094c) | CONFIRM (8843a17a #m2156; 6be476a5 ~2978) | **KEEP** | GWP |
| **slop-scan coda/near-redundancy/literature-wave "live uncommitted additions"** (per brief) | **MISCHARACTERIZED — these are COMMITTED** (f91094c), not uncommitted | n/a | **KEEP** (brief premise stale; no pending diff on slop-scan) | GWP |

### Other prior items

| item | current status | evidence verdict | disposition | tier |
|---|---|---|---|---|
| **frankendraft** | **BUILT, NOT INSTALLED.** skill file tracked + complete, header "DRAFT — not installed"; no global symlink | CONFIRM — N≥3 + git c5e9373; the required fidelity-audit caught 6/27 drifts a self-check missed | **INSTALL** (wire into router + symlink) | DSW |
| **consensus-prior foil** | NOT in any skill (proposed as a goal; never written) | **CONFIRM + RE-SCOPE.** Log = N=1, "wait." Blind: b813bab4, 6be476a5, 8843a17a, e2df21be → N≥4 | **INSTALL** as writing-skill-common goal (use the *reframed* wording — anchor on author's reading, locate consensus relative to it; NOT "consensus as foil") | SSA |
| **scaffold-architecture-audit** | NOT built (proposed in 06-15 addendum, N≥1) | CONFIRM — N≥3 + git 6b81362/b180f5f | **BUILD** (new skill) | DSW |
| **blind comparative-judge — DECLINED 06-12** | NOT in independent-review-prompts (declined) | **CONTRADICT (the only one).** cross-family audit 6/27 drifts; blinded triangulation; N-way judge | **INSTALL (reverse the decline)** — recommend the N-way comparative reviewer specifically. **Overrides a prior ruling — flag for author** | SSA/DSW |
| **harden-claim (repo-local)** | EXISTS repo-local only; NOT in package | CONFIRM — highest-value WORKED, N≥3, hand-reassembled each time | **PROMOTE/INSTALL** (fix the structurally-impossible "two families in one subagent" wording: the *lead* crosses families, a subagent can't spawn subagents) | SSA |
| **consensus-foil N=1 (log's own framing)** | superseded by the reframe above | — | folded into consensus-prior goal | SSA |
| **scaffold-audit N≥2 (log addendum)** | superseded by N≥3 finding | CONFIRM | folded into scaffold-architecture-audit BUILD | DSW |
| **repo-local-vs-package (harden-claim home)** | harden-claim lives only in repo-local design contract | CONFIRM — reader-privacy + heterogeneous-breadth + DOTS disciplines are trapped repo-local, not portable | **EXTEND** (port generalizable disciplines to package; keep domain-specifics repo-local) | SSA + TBW |
| **core-guard "this repository" footgun** | **STILL PRESENT.** preserve-authorial L15-16 carries the conditional framing the owning agent was said to harden; workflow skills use bare `if-exists` | CONFIRM (latent footgun, 1 sess high-confidence) | **REVISE** (one-line: match the bare if-exists form) — **verify it landed; it has not** | GWP |

### Where cross-session N changes the 06-12 triage

1. **Consensus-prior: build now.** 06-12 = "N=1, wait." Blind N≥4 clears that bar. Use the
   reframed wording.
2. **Blind comparative-judge: reverse the decline.** The hard number — a cross-family audit
   caught 6/27 verbatim drifts a same-model self-check passed — plus blinded triangulation
   and the N-way judge make it the most evidence-backed verification primitive in the corpus.
   Recommend installing the N-way comparative reviewer. **Overrides a prior ruling — flag
   explicitly.**
3. **The 4 unapplied approved edits: approved, not applied.** A delivery gap, not a triage
   shift; cross-session evidence CONFIRMs all four.

Standing rulings respected: out-of-scope OSS / figure-data-forensics stay OUT;
usage-policy friction is reframed IN as orchestration-delegation; the rewrite-block
pattern is its own skill; WORKED keys are not down-weighted for low N.

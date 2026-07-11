# Scaffold Architecture Audit — serotype-fuzziness outline

**Reviewer:** Independent, fresh-context pre-draft structural auditor. Worked only
from the three supplied files (`skills/scaffold-architecture-audit/SKILL.md`,
`demo/02_outline.md`, `demo/raw_source_serotype-fuzziness.md`). Mode: AUDIT —
findings and recommendations only; nothing baked in. Structural moves are the
author's call.

## Verdict up front

**The scaffold is sound and already coherently ordered.** The 6-beat arc maps 1:1
onto the 6 sections with a clean claim → it's-old-news → data → mechanism-of-erasure
→ dynamics → forecast progression. Setup precedes payoff throughout; data (§3)
precedes interpretation (§5); the exceptions (§3) precede the account of how they
were erased (§4). **No section requires a reorder.** Single-owner discipline is
mostly respected (Kover, the reproducibility aside, the seasonal-waves detail, and
the OPV2-cessation point each live in exactly one section).

What remains is not architecture surgery but a handful of **beat-boundary
disciplines** to carry into `compose-section` so setups don't leak their payoffs.
The one genuine author-decision item is how to split the "standardization" material
across §2 and §4. Everything else is polish-only.

## Findings

| Finding | Type | Scale | Section(s) | Recommendation | Risk |
| --- | --- | --- | --- | --- | --- |
| "Standardization" appears as thesis (§1), temporal/generational horizon (§2 beat 3), and causal mechanism (§4). The three uses are at different levels, but §2's "standardization horizon" beat risks disclosing §4's payoff (cell culture + reference-strain referencing + attrition). | cross-section de-dup / handoff | cross-section | §1, §2, §4 | Split cleanly: §1 states it as thesis only; **§2 keeps the *generational* inheritance of dogma ("two to four generations after Bodian; one generation after the assays were standardized") and stops at naming the standardization horizon**; **§4 owns the operational mechanism** (early-1950s cell culture, referencing all tests to Mahoney/Brunhilde/Lansing/Leon, 4-of-14 attrition). Do not explain *how* standardization removed ambiguity in §2. | med |
| Per is introduced as historical evidence in §3 (grouped type 1, cross-protected by type 2, WV-1940/Sabin provenance) and re-invoked in §5 as a candidate off-type virus. | cross-section de-dup | cross-section | §3, §5 | Legitimate callback, not true redundancy — the source does exactly this ("Per could be a virus like that"). Keep §5's mention a **cross-reference** to §3, not a re-statement of Per's provenance/facts. §3 owns Per. | low |
| The "14 strains" challenge set is established in §3; the "only 4 of 14 survived to sequencing" attrition is paid off in §4. | handoff / setup-payoff | cross-section | §3 → §4 | Correct as ordered. Discipline note: §3 introduces the 14-strain table but must **not** leak the 4-survived fact — that is §4's payoff. | low |
| §2 asserts pre-standardization workers "measured cross-immunity across many monkeys"; §3 shows the actual Bodian/Morgan monkey-challenge tables. Same underlying experiments. | handoff / setup-payoff | cross-section | §2 → §3 | Keep §2 at the **framing level** (the *idea* that serotypes were defined by measuring cross-immunity); reserve the specific challenge-pattern and tables for §3. No overlap if §2 does not describe the type-1/type-2 challenge pattern itself. | low |
| §1 thesis ("less black and white than the dogma") and §6 landing ("'mostly type 1 with a bit of type 2' should not be surprising") are near-echoes. | handoff / loop | cross-section | §1 ↔ §6 | This is an **intended bookend** (thesis stated → thesis vindicated as a forward forecast), and it closes the loop. Ensure §6 lands as a *calibrated expectation about what comes next*, not a flat restatement of §1. Loop is properly closed. | low |
| OPV2-cessation point ("drop the type 2 vaccine → immunity re-heterogenizes → expect between-type viruses"). | cross-section de-dup (check) | cross-section | §6 only | **No redundancy** — single owner (§6). Distinct from §5's trivalent-introduction event (which *homogenizes*); the §5→§6 sequence heterogeneous → trivalent homogenizes → OPV2-drop re-heterogenizes is coherent and non-repeating. Confirmed clean. | none |
| Numbering / headings / arc mapping. | numbering/heading | structural | all | Sections 1–6 contiguous, no gaps or collisions; skeleton-matrix rows match the per-section contracts; arc beats 1–6 map 1:1 to §1–§6; no dangling forward-reference (§5's Per callback is discharged against §3). Clean. | none |

## Architecture decisions needed (author's call)

1. **The one real structural call: how to divide "standardization" between §2 and §4.**
   Two defensible options —
   - *(a)* §2 ends on **generational distance only** (why today's experts inherited
     the dogma) and lets §4 own the word "standardization" and its entire mechanism.
     Cleaner separation; removes the cross-section echo outright.
   - *(b)* §2 keeps a one-line **temporal** "standardization horizon" marker (assays
     standardized ~one generation after Bodian) as a signpost, with §4 still owning
     the mechanism. Preserves the source's original framing (the "you can see where
     this is going…" tee-up) at the cost of a mild forward-reference.
   Either is coherent; this is a taste/emphasis decision, not a correctness one.

No reorder or relocation of whole chunks is recommended — every claim sits in the
right section.

## Per-section transform status (hand-off to compose-section)

| § | Status | Note |
| --- | --- | --- |
| §1 | **Already coherent — polish only** | received-view → crack → thesis is well ordered. |
| §2 | **Already coherent — polish only**, with the standardization-split discipline above | do not disclose §4's mechanism. |
| §3 | **Already coherent — polish only** | normal pattern → Per → Kover → reproducibility caveat is the right beat order; do not leak "4 of 14". |
| §4 | **Already coherent — polish only** | what standardization did → why reasonable → what was lost. Owns the mechanism + attrition. |
| §5 | **Already coherent — polish only** | fitness assumption → pre-vaccine dynamics → trivalent collapse; Per stays a callback. |
| §6 | **Already coherent — polish only** | why-not-now → what-changed → what-to-expect → landing; keep it forecast, not restatement. |

**No section carries a "reorder still part of the transform" verdict.** The
raw→polished transform is polish-only across the board.

## Bake-in list (only if the author approves)

These are edits to the *raw scaffold*, not the prose:

1. In §2's contract, tighten the third beat from "the standardization horizon" to
   the chosen framing (option a: "generational distance from the founders";
   option b: "generational distance; name — but do not explain — the standardization
   horizon"). Add a **Must-not-claim** line to §2: "do not describe the cell-culture /
   reference-strain mechanism — that is §4's payoff."
2. Add a **Must-not-claim** line to §3: "do not state the 4-of-14 attrition (§4 payoff)."
3. Add a **Source-hook** cross-reference note in §5: "Per — callback to §3, do not
   re-establish provenance."

All three are optional beat-boundary guardrails; none change section order or
ownership.

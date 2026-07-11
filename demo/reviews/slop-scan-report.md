# Slop-scan report — 05_scientific-report.md

**Reviewer:** independent fresh-context reviewer (no prior involvement in drafting)
**Method:** `skills/slop-scan/SKILL.md`, calibrated against `references/voice-card-example-scientific.md`
**Target:** `demo/05_scientific-report.md`
**Verdict:** Clean. A handful of low-severity phrase-level items, no medium or high. Em-dash density test passes.

## Findings

| Passage | Failure mode | Why it matters | Proposed repair |
| --- | --- | --- | --- |
| §1: "some of its hardness is manufactured — it is partly an artifact of how the field standardized its assays" | Substitutable em-dash + mild restatement (low) | The clause after the dash does not resume the main clause; it expands "manufactured." The dash is a default, not load-bearing. "manufactured" and "artifact of…" partly restate before the mechanism (how/when) is added. | Convert to a period or colon: "…is manufactured. It is partly an artifact of how the field standardized its assays in the early 1950s." (Preserves the added mechanism; the standardization detail is what earns the second clause.) |
| §2 end: "It is worth going back to the tables before the cleanup." / §5 open: "It is worth speculating about the evolutionary dynamics — as speculation." | Repeated "It is worth X" frame; §2 instance is mild sign-posting on a transition (low) | Two paragraphs open/close on the same "It is worth …" construction. The §2 one announces the move ("worth going back") rather than making it. | The §5 instance is doing real hedging work ("as speculation") — keep it. Consider varying the §2 transition so the frame does not recur, e.g. "The tables before the cleanup are where to look." Author's call; a deliberate handoff is legitimate. |
| §6: "the idea that a poliovirus could be 'mostly type 1 with a little bit of type 2' should not be surprising at all" | Vague intensifier ("at all") (low) | "at all" inflates the calibrated claim slightly; the sentence lands harder without it. | Trim to "…should not be surprising." |

## Places where the original friction is useful — do NOT flag

- **§3 "The exceptions are the point."** — reads like a takeaway-announcer, but it is a terse pointed opener that the following sentences immediately cash out with the Per/Kover cases. In-voice (short direct landing). Keep.
- **§4 "and — the operative point — before the assays and algorithms were built to remove exactly this ambiguity."** — the inserted "the operative point" aside is doing real work: it singles out the load-bearing item from a three-item list rather than merely labeling significance. Borderline sign-posting but functional. Keep.
- **§6 closing em-dash: "…made it look — and we are now removing one of the forces that kept it looking sharp."** — genuine turn/landing that deliberately bookends the §1 "hard fact / manufactured" thesis. Earned. Keep.
- **All appositive/concrete-instance em-dashes** (§2 "…1980s or later — two to four generations after…"; §3 "…renamed the *American Journal of Epidemiology*) — the third part reports…"; §3 "clean when it holds — monkeys immunized with Lansing…"; §3 "The 'Per' strain — which the 1949 tables trace to a three-year-old girl… autopsied by Albert Sabin —…"; §4 prototype and surviving-strain lists; §5 "seasonal waves of a single serotype — at least in wealthier communities…"): each resumes the main clause, unpacks a definition, or drops in a concrete instance. Load-bearing per the function test.
- **Load-bearing contrasts** ("a real signal, not obvious noise"; "less black and white than the dogma") — real conceptual axis, not fake symmetry.

## Em-dash density check

~12 em-dashes across 7 body paragraphs, roughly 1–2 per paragraph and never more than one pair in a single paragraph. Not stacked; the tic pattern (density) does not appear. Each survives the function test. No thinning needed.

## Notes

Standard LLM vocabulary is absent: no "delve," "robust framework," "leverage," "underscores," "seamless," "multifaceted," "transformative," "unlock," "harness." No generic openings/closings, no stakes-narration codas, no over-broad "much of the literature" tails, no citation-less literature waves. Mechanism, provenance (strain names, dates, autopsy attribution, footnoted sources), claim strength, and hedges ("as speculation," "in principle," "essentially never," "should not be surprising") are all intact. The authored hole-fills flagged in the file header (§1 opener, §2→§3 transition, §6 bookend) — the highest slop-risk spans — hold up; only the §1 em-dash and the §2 "It is worth" frame are worth the author's glance.

## Count

- High: 0
- Medium: 0
- Low: 3

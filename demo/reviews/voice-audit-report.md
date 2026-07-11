# Voice audit — 05_scientific-report.md

**Reviewer:** independent fresh-context reviewer (no drafting rationale seen)
**Method:** `skills/voice-audit/SKILL.md`
**Voice card:** `references/voice-card-example-scientific.md` (register: formal scientific)
**Grounding source:** `demo/raw_source_serotype-fuzziness.md` (author email, 2022-02-28)

## Verdict

Strongly faithful transport. The register is correctly **formal scientific**: mechanism-first,
first-person accountability preserved ("I will not pretend otherwise", "when we look", "we should
start to notice"), no institutional/foundation-memo drift, no generic-AI slop from the card's avoid
list, and em-dash density is in range (~2/section, mostly earning their keep). The load-bearing
handles and money quote survive intact: `dogma`, `stylized facts`, "the story is fuzzy", "mostly
type 1 with a little bit of type 2", and the "when we look" observation-boundary. No harmful
construct substitutions (information→data, observation process→state) were found.

The drift that exists is small and clusters in two places: (1) a few hedges trimmed so a claim
reads slightly stronger than the source stated it, and (2) two inserted flourishes — a signature
term used as a style marker and a couple of takeaway-announcer sign-posts the card treats as
candidate cuts.

## Findings

| Passage | Voice status | Evidence | Proposed repair |
| --- | --- | --- | --- |
| §3: "so a 2-of-6 where you expect 6-of-6 is **a real signal, not obvious noise**." | Drift — certainty shift + dropped hedge | Source: "2/6 when the expectation is 6/6 **is weird**," and the explicit hedge "**while I certainly can't rule out sampling variation or lab error or whatever**" was dropped entirely. "weird/curious" was upgraded to "real signal," and the author's own error caveat vanished. Violates invariant #3 (preserve hedges/uncertainty). | Restore the hedge, e.g. "…is weird — I can't rule out sampling variation or lab error, but across many years of reading these tables the same strain is usually reproducible to within one monkey, so 2-of-6 where you expect 6-of-6 stands out." Author's call on final strength. |
| §5: "but **the load-bearing condition is simple**: as long as there are towns where a serotype skips years…" | Candidate — signature term sprinkled + mild sign-post | Source: "but **the key thing** is as long as…". `load-bearing` is a card "preserve when source-grounded" term, but the source used the plain "the key thing"; inserting it here is exactly the "do not sprinkle these in as style markers" case, and "…is simple:" is a takeaway-announcer. | Revert to "the key thing is" (or "what matters is"); drop "is simple:". Surface for author — it may be a knowing upgrade. |
| §6: "the people who run the typing assays have **essentially never seen one**." | Drift — vivid emphasis lost + softening hedge added | Source: "have **never seen one in their lives**." The report removed the emphatic "in their lives" and inserted the softener "essentially," which weakens a deliberately blunt line. (Redaction de-identified the original named scientist, but that does not require softening the claim.) | Consider "have never seen one" (keep it flat and emphatic); drop "essentially" unless the author wants the softer reading. |
| §4: "and **— the operative point —** before the assays and algorithms were built to remove exactly this ambiguity." | Candidate — added sign-post | Not in source ("…and before all the assays and algorithms were defined to remove the ambiguity"). "the operative point" is an announcer the surrounding clause already carries. | Cut "— the operative point —"; the sentence lands without it. Author's call. |
| §6: "Put those together and **the expectation follows**: wait a few years, and we should start to notice viruses that sit between serotypes." | Candidate — added sign-post + lost tentativeness | Source ends on an open, tentative ellipsis: "So we wait a few years and start to notice viruses that are between serotype**….**" The "should" hedge is a fine formal move, but "the expectation follows:" announces the point the sentence already makes, and the source's trailing tentativeness is squared off. | Trim "the expectation follows:" (e.g. "Put those together: wait a few years and we should start to notice…"). Keep "should." |
| §2: "The **virologists** the eradication program inherited its framework from picked up the serotype dogma…" | Candidate (register-appropriate) — over-smoothed vivid detail | Source: "All the virology **head honchos** we know in the eradication program inherited the dogma…". "head honchos" carried a mildly irreverent stance; formal transport reasonably neutralizes it, but the color is gone. | Likely fine for formal register. If the author wants a trace of the stance, "senior virologists" or keeping "head honchos" in scare-quotes is an option. Propose-only. |
| §2 / §6: colleague attribution dropped ("This is not a new worry…" replaces the "all credit to a virologist colleague / her modern work" framing). | Author decision (deliberate redaction) — named-actor / provenance loss | Source foregrounds the colleague ("all credit to a virologist colleague", "my colleague's brief review… and her modern work"). The report converts this to agentless "you can watch people work out…" and drops "my colleague's". The demo redaction note says the colleague was intentionally de-identified, so this is deliberate, not drift — but it does erase a named actor and the provenance of the insight (invariant #2). | No repair needed if the de-identification is intended. Flag for the author: a formal acknowledgement ("following a colleague's argument from enterovirus cross-reactivity") would restore provenance without re-identifying. |
| §5: "…but that they **persist at least transiently when** population immunity across serotypes is heterogeneous." | Minor drift — probabilistic → conditional | Source: "but they are **more likely to persist** at least transiently when there is a lot of population immunity heterogeneity." "more likely to" (probabilistic) became a plain conditional "when," a small certainty uptick. | Restore "more likely to persist" if precision matters here. Low priority. |

## Preserved-voice examples (do not touch)

- §1 "It is a useful fact, real enough to build vaccines on." — concrete, author's register; strong opener.
- §3 "The exceptions are the point." / "It is grouped as a type 1, but it sits in the middle." — short direct landings after dense reasoning; compression preserved from source.
- §4 "This is old, small-N data, and I will not pretend otherwise." — first-person accountability, correctly kept in formal register.
- §4 "But in the canonizing of those stylized facts, we lost the common knowledge that the story is fuzzy." — the source's compact handles ("stylized facts", "the story is fuzzy") preserved verbatim.
- §6 "…titers around the reference strains routinely vary by factors of four to eight when we look." — observation boundary ("when we look") preserved; no drift to a bare state claim.
- §6 bookend "The partition was always fuzzier than the reference panel made it look — and we are now removing one of the forces that kept it looking sharp." — authored close that leads with conviction and ties back to the thesis; consistent synthesis, invents nothing.

## Voice-card candidates

- None proposed as new rules. The findings above are one-off transport calls (hedge-trimming, term-insertion, sign-posts), not new invariants — surfaced for the author, not codified.

## Author decisions needed

1. §3 — restore the "can't rule out sampling variation or lab error" hedge and dial "real signal" back toward "weird"? (Most consequential finding.)
2. §5 — keep "load-bearing condition is simple" or revert to the source's "the key thing"?
3. §6 — keep "essentially never seen one" (softer) or restore the flat "never seen one"?
4. §4 / §6 — cut the added sign-posts ("— the operative point —", "the expectation follows:")?
5. §2 / §6 — is the colleague's de-identification intended to also drop the attribution, or should a formal, non-identifying acknowledgement restore provenance?

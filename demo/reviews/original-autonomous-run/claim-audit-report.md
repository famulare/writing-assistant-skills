# Claim audit — `05_scientific-report.md`

**Reviewer:** independent fresh-context reviewer (no drafting-context access; audit run against
`raw_source_serotype-fuzziness.md`, `06_claim-ledger.md`, `07_bibliography.md` only).
**Mode:** AUDIT — findings only, no rewrite.
**Verdict:** Defensible. No unsupported claims, no invented citations, no direction/sign/magnitude
errors, no misattribution of Per/Kotter/"4 of 14". Speculation (§5) and forecast (§6) stay labeled.
Four minor items below (all low / low-med): one dropped caveat, one attribution over-reach, one added
qualifier, one hedge softening. None require the author to change a claim's substance.

## Claim table

| Claim ID | Claim (report) | Support | Risk | Needed action |
|---|---|---|---|---|
| C1 | Serotype partition is partly a standardization artifact (§1 thesis) | Author thesis; "partly" calibration matches source ln 23 | none | — |
| C2 | Pre-standardization workers measured real cross-immunity across many monkeys (§2) | Source ln 25; Bodian I / Morgan II titles | none | — |
| C3 | Bodian/Morgan/Howe 1949 established the 3-serotype scheme (14→3) (§3) | Bib ref 3, PMID 18113220; "first"→"established" softened; ftnt 1 flags Burnet & Macnamara 1931 | none | — (see F2 re "prototype") |
| C4 | MEF-1 named for Middle East Forces, 1942 outbreak (§3) | Bib context ref (Smithsonian) + source ln 29 | none | — |
| C5 | Type-defining challenge pattern, both directions (§3) | Source ln 33; standard | none | direction/sign correct |
| C6 | "Per": grouped type 1, cross-protected by type 2; WV/1940/Sabin provenance (§3) | Primary 1949 table (author's reading); ftnt 2 flags not secondary-attested | low | see F3 (attribution wording) |
| C7 | "Kotter": symmetric cross-protection, recurs in Morgan II (§3) | Primary tables + Morgan II; hedge kept | none | — |
| C8 | Reproducibility aside; 2/6 vs 6/6 is a real signal (§3) | Author experience, source ln 37 | low-med | see F1 (dropped caveat) |
| C9 | Early-1950s standardization removed the ambiguity (§4) | Source ln 39; verified mechanism | none | — |
| C10 | Only 4 of 14 survived to be sequenced (§4) | Author-sourced (harden-facts: exact set not independently confirmed) | low | see F4 (declarative, per ledger decision — acceptable) |
| C11 | Evolutionary dynamics (§5) | Author speculation | none | labeled "as speculation", "assume", "in principle" |
| C12 | Modern WPV strong purifying selection; titer 4–8× (§6) | Author domain obs, source ln 51 | none | — |
| C13 | OPV2 cessation → expect between-type viruses (§6) | Author forecast | none | labeled "the expectation follows", "we should start to notice" |

## Findings

### F1 — Dropped caveat / mild certainty lift on the reproducibility aside (C8, §3) — LOW-MED
Report: *"across many years of reading tables like these, the same strain is usually reproducible to
within one monkey across papers, so a 2-of-6 where you expect 6-of-6 is a real signal, not obvious
noise."*
Source (ln 37): *"while I certainly can't rule out sampling variation or lab error or whatever,
across many years of looking at tables like this, assays with the same strain are usually reproducible
to within one monkey across papers. 2/6 when the expectation is 6/6 is weird."*
Issue: The author's explicit hedge — *"I certainly can't rule out sampling variation or lab error"* —
is not carried into the prose, and *"is weird"* becomes *"a real signal."* "Not obvious noise" retains
partial modesty, but the net effect strengthens an epistemically cautious observation.
Fix: restore the author's caveat, e.g. *"…is a real signal, not obvious noise — though I can't rule
out sampling variation or lab error."*

### F2 — "fourteen prototype strains" adds a qualifier not in source or paper title (C3, §3) — LOW
Report: *"the third part reports the grouping of fourteen prototype strains into three basic
immunological types."*
Source / bib: source says "the 14 strains" / "the 14 in Bodian's list" (ln 31, 39); the Part III title
is *"grouping of fourteen strains into three basic immunological types."*
Issue: "prototype" is an added characterization. Most of the 14 were *not* retained as prototypes —
only Brunhilde/Mahoney, Lansing, Leon (+MEF-1) became reference strains; the rest disappeared (the
report's own §4 point). Calling all fourteen "prototype strains" is mildly inaccurate.
Fix: drop "prototype" → "fourteen strains" (matches title and source).

### F3 — "the 1949 tables trace to…" over-attributes the Per biographical provenance (C6, §3) — LOW
Report: *"The 'Per' strain — which the 1949 tables trace to a three-year-old girl who died in West
Virginia in 1940, autopsied by Albert Sabin…"* Footnote 2: *"The 'Per' and 'Kotter' strain details
appear in the primary 1949 tables…"*
Source (ln 35): the author narrates the provenance ("which found its way from a 3 year old girl…") but
does not state that the biographical detail (child, WV, 1940, Sabin) is contained in a *table*.
Issue: Attributing the biographical provenance specifically to "the 1949 tables" claims more than is
established — tables list strain origins, not autopsy narratives; this detail is the author's knowledge
of the strain's history, which the source presents without a table locus. The strain grouping/cross-
protection reading is table-sourced; the biography may not be.
Fix: soften attribution, e.g. *"the 'Per' strain — which traces to a three-year-old girl…"* (drop
"the 1949 tables"), or narrow footnote 2 to "the strain grouping and cross-protection data appear in
the primary 1949 tables." Low severity — consistent with the project's decision to keep Per/Kotter at
author strength, so this is precision, not a substantive defect.

### F4 — "only four survived to be sequenced" presented declaratively (C10, §4) — LOW (acceptable)
Report states the 4-of-14 set as plain fact with no hedge. Per `harden-facts.md` and the ledger this is
AUTHOR-SOURCED (the 14→3 grouping is verified; the exact surviving-4 set is the author's domain claim,
not independently confirmed). The human decision (decision-log / ledger C10) is to keep it at author
strength. Flagged for the record only: it reads as verified fact while its status is author-sourced.
No action required unless the author wants a signal (e.g. "in my reading, only four…"); consistent with
the accepted ledger decision.

## Cross-checks that PASS (no finding)
- **Direction/sign/magnitude:** Per (type 1, cross-protected by type 2), Kotter (symmetric), and the
  type-defining challenge pattern all match the source's polarity. Titer "factors of four to eight"
  matches "4-8." "Two to four generations / one generation" matches.
- **Speculation labeling (§5):** opens *"It is worth speculating… — as speculation,"* uses "Assume,"
  "in principle," "could be." An assumption is explicitly framed as an assumption, not a finding.
- **Forecast labeling (§6):** *"the expectation follows,"* "we should start to notice," "should not be
  surprising" — calibrated expectation, not a claim of observation.
- **Citations:** footnotes 1–2 map to bibliography refs 3 and 2 (PMIDs 18113220, 18124443); no
  secondary citation invented for Per/Kotter (footnote 2 explicitly says not independently attested).
  Journal name/rename handled correctly (AJH → AJE 1965). Burnet & Macnamara / NFIP context in
  footnote 1 is supported by the bibliography's verified context references.
- **Caveats retained:** "This is old, small-N data, and I will not pretend otherwise" (§4) preserves the
  source's key limitation; Kotter "you might dismiss… as noise, but" hedge kept.

## Author decisions needed
1. F1: restore the "sampling variation / lab error" caveat on the 2/6 observation? (recommended)
2. F2: drop "prototype"? (recommended — small accuracy fix)
3. F3: soften the Per-provenance attribution away from "the 1949 tables"? (optional precision)
4. F4: no action expected; confirm the ledger decision to state 4-of-14 declaratively still holds.

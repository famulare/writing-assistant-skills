# Frankendraft verbatim-fidelity audit — serotype-fuzziness demo

**Reviewer:** Independent, fresh-context verbatim-fidelity auditor. No prior involvement
in building the outline or the frankendraft. Scope: fidelity only — every `V:` span
checked character-for-character against the raw source; holes checked for smuggled prose;
draft checked for unmarked authored content. Style, structure, and argument quality are
out of scope.

- **Source of truth:** `demo/raw_source_serotype-fuzziness.md`
- **Under audit:** `demo/04_frankendraft.md`

---

## Per-span verdicts

### §1 The partition we trust
- L16 `[HOLE]` thesis opener — **OK.** Describes what needs authoring; contains no authored prose.
- L18 V "Everything is less black and white…" — **OK.** Exact (src L29).
- L20 V "Turns out, way back in the day…defined away the evidence for fuzzy serotypes." — **OK.** Exact (src L23).

### §2 What 1949 already knew
- L23 V "She said in the old literature…everything we've been taught." — **OK.** Exact (src L25).
- L25 V "All the virology head honchos…You can see where this is going…." — **OK.** Exact (src L25).
- L27 `[HOLE]` §2→§3 transition — **OK.** Description only; no authored prose.

### §3 The scheme and its exceptions
- L30 V "So anyway, Bodian 1949 is the first paper…three serotypes of poliovirus." — **OK.** Exact (src L29).
- L32 V "Back then, when they were figuring this out…took place in 1942." — **OK.** Exact (src L29).
- L34 V "the archetypes back then were Brunhilde (type 1), Lansing (type 2), and Leon (type 3)." — **OK.** Exact (src L31); legitimate mid-sentence start dropping leading "Anyway,".
- L36 V "the normal pattern that defines serotypes is '…'. And vice versa…" — **OK.** Exact (src L33); legitimate start dropping leading "In the table,".
- L38 V "BUT, there are exceptions…They group it as a type 1 but it's in the middle." — **OK.** The `…` correctly elides the parenthetical "(I'm legit tearing up at this, emotional these days)" (src L35). Proper ellipsis; no stitching distortion.
- L40 V "I also flagged the Kotter strain…symmetrically in the middle of type 1 and type 2." — **OK.** Exact (src L37).
- L42 V "vaccinated with Kotter (type 1) looks somewhat cross-protective…somewhat protective against Kotter." — **OK.** Exact (src L37); legitimate mid-sentence start dropping "But the green shows the opposite –".
- L44 V "across many years of looking at tables like this…2/6 when the expectation is 6/6 is weird." — **OK.** Exact (src L37); numbers 2/6 and 6/6 verified.

### §4 How fuzziness was defined away
- L47 V "I realize this is old data and small N…remove the ambiguity among serotypes." — **OK.** Exact (src L39).
- L49 V "In the early 1950s, cell culture…(Brunhilde, Lansing, MEF1, and Leon)." — **OK on wording.** Numbers verified (14 in Bodian's list, only 4 survived, 1980s and 90s). **Minor:** source reads "Leon (type 3)*." with a footnote asterisk (the footnote is src L41); the frankendraft drops the bare `*` marker. This is a non-word annotation marker, not a wording change — acceptable elision, noted for completeness only.
- L51 V "If you're vaccinating against three types…we lost the common knowledge that the story is fuzzy." — **OK.** Exact (src L39).

### §5 An evolutionary reading (speculation)
- L54 V "It's really interesting to speculate…What does history look like?" — **OK.** Exact (src L47).
- L56 V "Pre-vaccine, because outbreaks tended to come in seasonal waves…immunizes against type 1 and a bit against type 2." — **OK.** Exact (src L49); "Houston in the mid-50s" and all clauses verified.
- L58 V "the key thing is as long as there are towns…persist through the endemic low periods." — **OK.** Exact (src L49); legitimate start dropping leading "but".
- L60 V "But then trivalent vaccines show up…much lower now." — **OK.** Exact (src L51).

### §6 Why it is live again
- L63 V "Enter the modern era…by factors of 4-8 all the time when we look." — **OK.** Exact (src L51); "4-8" and reference strains (Mahoney, Lansing, Leon) verified.
- L65 V "But, between only sequencing and basing ITD on VP1…never seen one in their lives." — **OK.** Exact (src L51). Note: "the people who run the typing assays" is itself the source's redaction wording, so this is faithful to the supplied source of truth.
- L67 V "And then, we drop the type 2 vaccine…viruses that are between serotype…." — **OK.** Exact (src L51).
- L69 V "the idea that a poliovirus can be 'mostly type 1 with a little bit of type 2' should not be surprising at all." — **OK.** Exact (src L43); legitimate mid-sentence start dropping "…and conclude".
- L71 `[HOLE]` §6 bookend close — **OK.** Description only; no authored prose.

---

## Cross-cutting checks

- **Numbers / strain names / dates:** All verified against source — MEF1, 1942, Per, Kotter, Brunhilde/Lansing/Leon/Mahoney, type 1/2/3, 2/6, 6/6, 14, 4, 1980s–90s, factors of 4-8, VP1, ITD, West Virginia 1940, Houston mid-50s. No changed numbers or strain names.
- **Non-contiguous stitching:** None found. Every multi-clause `V:` span is contiguous in the source; the only omissions are (a) the L38 parenthetical, correctly marked with `…`, and (b) clean mid-sentence starts that drop a leading conjunction/frame without altering meaning.
- **Invented factual content outside a hole:** None. No fact appears in the draft that is absent from the source.
- **Holes containing authored prose:** None. All three `[HOLE]` markers describe what must be authored rather than doing the authoring.
- **Unmarked authored prose:** None in the body. The section **headings** ("The partition we trust", "What 1949 already knew", "The scheme and its exceptions", "How fuzziness was defined away", "An evolutionary reading (speculation)", "Why it is live again") are authored/outline-derived, not verbatim — this is the expected frankendraft convention (headings come from the outline, not the source). Flagged only so downstream steps know "The partition we trust" and "Why it is live again" carry framing not present in the source; they are not presented as `V:` spans, so no fidelity violation.
- **The L18/L20 ordering within §1** places "Everything is less black and white…" (src L29) before "Turns out, way back in the day…" (src L23) — a reordering, but both are correctly labeled `V:` and each is individually verbatim; frankendraft is explicitly an arranged substrate, so ordering is not a fidelity concern.

---

## Overall verdict: **PASS**

Every `V:` span is verbatim in the source (modulo one correctly-marked ellipsis and
clean mid-sentence starts). No paraphrase, no changed numbers or strain names, no
non-contiguous stitching without ellipsis, no invented content outside a hole, no prose
smuggled into a hole, no unmarked connective authoring in the body. Only nit: the dropped
`*` footnote marker after "Leon (type 3)" in the §4 span — a non-word annotation, not a
wording change.

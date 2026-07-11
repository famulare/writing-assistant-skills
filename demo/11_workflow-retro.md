# Workflow retro — the serotype-fuzziness demo run

Per `skills/harden-writing-workflow`. A review of *this* pipeline run for where the
workflow strained and what it suggests for the skills. Findings are surfaced as
candidates for the author, not auto-applied.

## Where the workflow held (keep)
- **Independent fresh-context reviewers triangulated a real defect.** The §3
  certainty drift (a dropped hedge + "is weird" upgraded to "a real signal") was
  caught *independently* by both the voice-audit and the claim-audit agents. Two
  fresh-context reviewers converging on the same span is a strong signal; the split
  into separate slop/voice/claim reviewers earned its cost.
- **The blind comparative judge caught what the per-axis audits missed.** An invented
  specific figure ("seventy years") in the blog's close slipped past slop/voice/claim
  (which were checking their own axes) and was flagged only by the whole-artifact
  judge. Keep the blind judge in `final-audit-pass` for multi-artifact runs.
- **Fetch-verification earned its keep on the author's own citation.** The source
  cited "American Journal of Epidemiology, 1949" — anachronistic (the journal was the
  *American Journal of Hygiene* until 1965). Hardening corrected it and added precise
  part-level citations. Even an author's casual self-citation is worth verifying.
- **Frankendraft + verbatim-fidelity audit** gave a clean substrate and a cheap
  independent check (25/25 spans verbatim); the two registers demonstrably share it.

## Where it strained (candidate improvements)
1. **Transport can silently upgrade an author's evidential hedge.** The §3 slip
   happened during the raw→polished transport of an author aside ("I can't rule out
   lab error … 2/6 vs 6/6 is weird" → "a real signal, not obvious noise"). *Candidate:*
   `rewrite-block` / `compose-section` should treat an author's evidential asides as
   claim-strength-sensitive and preserve the hedge and the author's own calibration
   word verbatim, not paraphrase them into confidence.
2. **Derivation can fabricate precision in authored framing.** `derive-artifact`
   invented "seventy years" for a punchy close. *Candidate:* add an explicit check —
   in `derive-artifact` and/or `claim-audit` — for invented specific quantities/dates
   in *authored* framing (titles, transitions, closings), where new numbers are most
   tempting and least sourced.
3. **Biomedical/historical fetch-verification is fragile to content-filter false
   positives.** A research subagent errored twice on benign historical-virology
   queries (charged mortality/autopsy phrasing) and had to be routed to a fallback
   model, whose output was then cross-checked. *Candidate:* `harden-claim` should
   neutralize charged phrasing before dispatching fetch-verification, and route to a
   fallback on the first failure rather than re-issuing the same query.

## Net
The stack produced two register-faithful, claim-defensible pieces from one source and
caught its own three substantive slips (the hedge drift, the invented figure, the
citation anachronism) through independent review before finalization. The candidate
improvements above are small, local, and each traces to a specific moment in this run
(see `decision-log.md`).

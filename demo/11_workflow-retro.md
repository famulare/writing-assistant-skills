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

## Update — implemented
All three candidates were folded into the skills:
1. **Preserve author hedges on evidential asides** → `rewrite-block` (Pass-1 rule +
   verification): transport the author's hedge and their own calibration word ("weird")
   verbatim; do not upgrade it to a stronger claim.
2. **Catch invented precision in derived/authored framing** → `derive-artifact`
   (non-negotiable constraint + closing self-screen) and `claim-audit` (procedure +
   verification): a specific number/date/span in a title, transition, or close that no
   source supports is an invented claim, even as rhetoric.
3. **Filter-resilient biomedical fetch-verification** → `harden-claim` (dispatch note +
   verification): neutralize charged phrasing before dispatch; on a block, reroute to a
   fallback model family on the first block instead of retrying identically, and
   cross-check the fallback.

## Addendum — the read-aloud pass (post-publication)
After the pieces were finalized and published, the author **listened to them read aloud**
and flagged both introductions as weak. A rerun slop-scan
(`reviews/slop-scan-report-v2.md`, `reviews/blog-slop-scan-v2.md`) confirmed it: the
authored openers buried the thesis behind warm-up — concession-before-thesis plus a
split, double-hedged thesis in the report; three stacked clichés ("fell down a rabbit
hole" / "I can't stop thinking about it" / "Short version:") in the blog. Both were
reworked and independently verified RESOLVED (see `decision-log.md` #20–21).

The instructive part: **the first-pass audit had rated the report's opener clean (0 high).**
The weakness was real but neither generic-phrase slop nor a claim error — it was
*structural and audible*: a soft lead, a buried thesis, a concession landing before the
turn. Silent, text-only review under-weighted it, and it was the author's **ear** that
caught it.

Two candidate improvements (not yet implemented — surfaced for the author):
4. **Weight the lede and the hole-fill spans hardest.** `slop-scan` / `final-audit-pass`
   should scrutinize the opening and the authored hole-fill spans (the highest-risk
   connective tissue) more than evenly-distributed body prose, and check for *structural
   opener tells* — concession-before-thesis, split/buried thesis, throat-clearing — not
   only phrase-level slop.
5. **Add a read-aloud / prosody check before finalize.** Some weaknesses surface on the
   ear, not the page: a flat opener, a doubled "than", a repeated "got me" tic. A
   text-to-speech pass (or an explicit "read the opener aloud" gate in
   `final-audit-pass`) would catch what silent review misses. In this run, the human ear
   was the backstop; the workflow should have a cheaper standing version of it.

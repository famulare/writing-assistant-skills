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
The original conclusion below was too favorable. The stack caught several local slips,
but the autonomous run also misrouted the blog, used example cards as governing voice
authority, strengthened the central thesis, and treated simulated HITL decisions as
author approval. Those failures were not small or local. The corrected artifacts branch
from the shared frankendraft, distinguish claim authority from voice authority, and leave
generated framing reviewable.

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
(`reviews/original-autonomous-run/slop-scan-report-v2.md`,
`reviews/original-autonomous-run/blog-slop-scan-v2.md`) confirmed it: the
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

## Corrective addendum — routing and authority

The later source-grounded review found four failures that the original retro missed:

1. **Parallel register transport was misclassified as derivation.** The blog should have
   branched from the frankendraft. Deriving it from the scientific report discarded rich
   direct voice evidence and then asked the model to synthesize casualness.
2. **Voice guidance was mistaken for voice evidence.** The filled example cards were used
   as governing sources even though direct author language and active dossiers outrank them.
3. **The central thesis was strengthened before auditing.** "Defined away the evidence"
   became "manufactured hardness" and "not a property of the virus." Later audits treated
   that assistant-authored frame as settled authority.
4. **Simulated HITL was described as human adjudication.** The assistant can exercise and
   record a gate for demonstration, but cannot convert its own high-risk choice into author
   approval.

These are now recorded as routing/authority failures, not evidence that the stack
successfully substituted for its intended human gates. A separate document-level prose
quality capability remains intentionally undesigned pending author discussion.

## GPT-5.6 sol reflection

For GPT-5.6 sol, this demo made the stack's value and its boundary unusually clear. A
thoughtful email already contained the scientific argument, uncertainty, examples,
compression, and much of the voice. The useful automation was not idea generation; it
was controlled transport from that dense substrate into two audience-specific artifacts.
Once the routing was corrected so both artifacts branched from the frankendraft, the
stack could preserve the argument while changing register with relatively little author
attention at the phrase level.

The original autonomous run also showed why the human gates are semantic rather than
ceremonial. Simulating the human was useful for exercising the workflow, but the agent
misrouted the blog through derivation, treated example cards as voice authority,
strengthened the central claim, and converted simulated choices into apparent approval.
Local slop, voice, and claim audits could catch individual defects without noticing that
the assembled artifact was performing the wrong kind of author. The corrective review
therefore improved both the outputs and the stack's account of authority.

The new whole-artifact voice-costume audit was the most useful design consequence. Its
blind/reveal test distinguished source-earned persona from imposed genre performance:
the revised blog's intimacy and technical excitement traced directly to the email, while
the scientific report's formalization created localized pressure around the apparent
duration of the author's historical-literature expertise. That finding did not require a
revision. Strong format conventions can justify costume, so the audit must diagnose the
choice and return keep/modify/remove to the human rather than treating de-costuming as an
automatic repair.

GPT-5.6 sol’s overall assessment is that the stack now provides a credible surface for
managing the speed/quality tradeoff. It works best when the source artifact already
embodies real thought, direct author language remains the highest voice authority,
transformations are correctly classified, independent audits operate at both local and
whole-document scales, and the human retains the decisions that determine authorship and
positioning.

## Mike’s feedback

the value of the writing stack is it helps me take artifacts representative of detailed thought but not professional positioning or polish and translate them to new audiences much faster with a small (and controllable) loss in quality over pure pre-AI-rewriting. The scientific report and blog post examples are generated from an email written with high thoughtfulness that took a few hours to write, on top of a day’s worth of reading and thinking, and converted it into solid drafts in different registers of my voice, for different audiences. This was mostly automated by asking an agent to simulate the human in the loop using the skill stack, with quality control toward the end done in conversation during a conference. My attention was at the document features level less than phrase-by-phrase labor. And the system gets better with use if you (the user) capture learning with the harden-writing-workflow skill.

Both the blog post and the scientific report parse as 100% human on pangram. My goal isn’t to hide AI use (I acknowledge it clearly in the documents), but that score reflects that I haven’t been fully erased in the process. This toolset gives a surface to make explicit speed/quality tradeoffs.

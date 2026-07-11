---
name: claim-audit
description: Audit existing prose for defensibility against supplied sources. Use to identify supported vs unsupported claims, citation needs, methods/terminology risks, certainty shifts, direction/sign/comparator/magnitude mismatches against evidence, assumptions presented as findings, and possible misrepresentation. Audits what is already written; to re-research and harden an under-evidenced claim from scratch (the question→fan-out→fetch-verify→synthesis loop), use harden-claim.
tier: leaf
role: audit
calls: —
---

# Claim Audit

Use before finalizing serious writing, after drafting from sources, or when a
passage may have drifted from evidence.

If available, read `../../references/writing-skill-common.md` and
`../../references/independent-review-prompts.md`. Independent review is the
default for this skill, not a second pass.

## Mode

AUDIT, run independently. Dispatch the audit to a fresh context that has not seen
the drafting rationale or the desired conclusion — a Claude subagent or a Codex
review agent — using the claim-audit reviewer prompt. A same-model pass in the
drafting context is only a pre-screen. Do not rewrite unless asked.

## Procedure

1. Identify major claims in the bounded unit.
2. Map each claim to source material, citation, or current instruction.
3. Mark unsupported claims.
4. Identify assumptions presented as findings.
5. Identify certainty, scope, or causal-strength shifts.
6. Verify direction/sign, not only that supporting evidence exists. A
   "lower X → more Y" must match the evidence's actual sign; check the
   comparator and the magnitude too. A citation existing for the topic is not
   support for the claim's polarity. Treat a research-summary's stated
   direction as a claim to verify against the source, not to trust.
7. Identify invented or unverifiable citations, methods, results, or intent.
   An identifier or figure that was recalled, not fetched, is unverified — see
   Verification. A premise pasted from another agent, tool, or person is an
   unverified claim, not ground truth.
8. Identify caveats that were weakened or removed.

## Output

Use this table:

| Claim ID | Claim | Support | Risk | Needed action |
| --- | --- | --- | --- | --- |

Then add:

- unsupported claims
- citation needs
- methods-description risks
- terminology risks
- uncertainty shifts
- possible misrepresentations
- author decisions needed

## Verification

- Every major claim has a source, citation, current instruction, or review
  flag.
- A claim's direction, sign, comparator, and magnitude match the evidence —
  not just that a citation on the topic exists.
- Assumptions are not presented as findings.
- Speculative language is labeled.
- Caveats remain intact.
- The audit does not silently repair problems by rewriting them away.

### Fetch-verify doctrine

A single recall-based LLM or agent pass never counts as verification.

- **Fetch, do not recall.** Confirm every load-bearing identifier (PMID, DOI,
  URL, accession, version, figure number) against the live source, not from
  memory. Confirm that identifier↔title↔finding refer to the same object.
  Recall-based identifiers are wrong often enough to assume wrong until fetched.
- **Re-check secondary extraction.** A number, quote, or finding stated as a
  headline but lifted from a review, abstract, or summary must be traced to the
  primary source before it counts as supported.
- **Verify pasted premises.** Instructions, diagnoses, or claims pasted from
  another agent, tool, or person are unverified claims, not ground truth. Check
  them against `--help`, config, or source before relying on or auditing
  against them.
- **Re-verify "previously corrected" attributions.** When a claim's attribution
  is marked as already corrected, re-verify it rather than trusting the
  settled-looking correction. A prior correction can itself be wrong and survive
  precisely because it looks settled — "previously corrected" is a yellow flag,
  not a clearance.


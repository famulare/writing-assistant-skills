---
name: finalize-document-with-audit
description: Finalize a serious writing artifact with an audit trail. Use when producing final prose plus source/provenance summary, AI contribution summary, unresolved uncertainties, author decisions, claim risks, and disclosure language where appropriate.
tier: runbook
role: closeout
calls: claim-audit, voice-audit
---

# Finalize With Audit

Use at the end of a serious writing workflow. This skill should not conceal
unresolved problems.

If available, read `../../references/writing-skill-common.md` for the output
envelope and provenance map.

If `../../voice/voice-card.md` exists, read it before final voice and register
checks. The active card informs voice preservation but does not outrank the
current conversation, approved claims, or task-specific sources. Use only the
relevant register or voice-card entries; do not paste or summarize the whole
card unless asked.

## Preconditions

Before finalizing, check whether the work needs:

- claim audit
- voice audit
- citation verification
- source manifest update
- sensitivity / leakage check (see below)
- author decision on high-risk changes

If needed work is missing, say so before presenting final prose. Claim and voice
audits should have been run independently (fresh context), not self-certified in
the drafting context.

## Sensitivity / leakage check

Before finalizing, audit the committed artifact for confidential material that
must not ship:

- No external recipient or reader is named in tracked output.
- No confidential source surfaces as a verbatim table, figure, quote, or lifted
  passage — only synthesized facts.
- No named-colleague attribution or personal communication appears without the
  author's explicit decision to include it.
- No confidential binary has been staged or committed alongside the artifact.

Flag any leak before presenting final prose; do not quietly strip it without
saying so.

## Output

Provide:

1. Final prose
2. Source/provenance summary
3. AI contribution summary
4. Remaining uncertainties
5. Unresolved author decisions
6. Disclosure language, if appropriate

For high-stakes work, include:

| Claim ID | Section | Main claim | Source artifact | Evidence | AI contribution | Review flag |
| --- | --- | --- | --- | --- | --- | --- |

## Provenance graph and annotate-keep

Finalizing is not an endpoint for provenance — close the loop so it stays a graph.

- **Propagate verified evidence into the project's ledgers.** Fold confirmed
  citations, sources, and claim strengths back into the claim, source,
  bibliography, and outline records so the next step inherits them instead of
  re-deriving them. Provenance should connect forward, not dead-end at the draft.
- **Annotate and keep cut material; do not delete it.** When prose, evidence, or
  a claim is dropped, record it (with why) for the audit trail and downstream
  reuse rather than removing it from the record.
- **Carry voice and communication tags.** Tag retained and cut material as in the
  author's voice or not in the author's voice, and mark personal communications
  as such, so later reuse knows what it is handling.

## Disclosure posture

Do not frame AI use as confession. Frame it as provenance and accessibility.

Useful pattern:

> AI-assisted writing tools were used to help transform author-generated
> materials into organized prose and to improve clarity, structure, and
> register. The analysis, claims, interpretation, evidence selection, and final
> editorial decisions are mine.

Adapt disclosure to venue and stakes.

## Verification

- Final prose matches approved claims.
- Audit trail is complete enough to support trust.
- Unresolved issues are visible.
- The prose preserves uncertainty and caveats.
- The final artifact is something Mike can defend.

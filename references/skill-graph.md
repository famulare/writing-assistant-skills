# Skill Graph

The directed flow of the writing-assistant skill stack, with explicit
human-in-the-loop (HITL) gates. Complements `skill-router.md` (which says *which*
skill when); this says *what flows into what* and *where the human is required or
optional*. `preserve-authorial-writing` is the always-on guardrail around every
node — it is not a step.

```mermaid
flowchart TD
  core(["preserve-authorial-writing — always-on guardrail"])

  subgraph IN["Inputs — name the controls"]
    sm["source-manifest"] --> ea["extract-argument"] --> bo["build-outline"]
    is["ingest-source — one new source mid-project"]
  end

  subgraph RAW["Raw substrate + architecture"]
    fd["frankendraft — verbatim + holes"]
    saa{"scaffold-architecture-audit — cross-section structure (AUDIT)"}
  end

  subgraph TR["Transform — raw to polished"]
    cs["compose-section — orchestrator"]
    rb["rewrite-block — transport one span"]
    me["minimal-edit — seam / revise"]
    cse["condense-section — cut for length/density (AUDIT)"]
    cs -->|per raw span| rb
    cs -->|seam pass| me
    cse -->|proposed cuts| me
  end

  subgraph AUD["Audit — run in fresh / independent context"]
    ap["final-audit-pass — orchestrated sweep"]
    ss["slop-scan"]
    ca["claim-audit"]
    va["voice-audit"]
    ap --> ss
    ap --> va
    ap --> saa
  end

  subgraph RUN["Runbooks — drive a process over the whole artifact"]
    rs["run-section — per-section build loop"]
    rch["run-claim-harden — whole-draft claim sweep"]
  end

  hc["harden-claim — re-research loop"]
  da["derive-artifact — spin off summary / memo"]
  fin["finalize-document-with-audit"]
  hww["harden-writing-workflow"]
  H1{{"HITL: author approves reorder / relocate / de-dup"}}
  H2{{"HITL: author accepts / rejects flagged edits"}}
  H3{{"HITL: author sets claim strength"}}
  H4{{"HITL: author approves final + disclosure (leakage gate)"}}
  H5{{"HITL: author triages findings + approves skill edits"}}
  ship(["ship"])

  bo --> fd --> saa --> H1 --> cs
  cs --> ap --> H2 --> fin --> H4 --> ship
  ca -->|thin / only-asserted claim| hc --> H3 --> cs
  hc -. fold .-> is
  hww --> H5 -->|applied| skills[("skill files")]

  rs -.->|build-outline| bo
  rs -.->|frankendraft| fd
  rs -.->|compose-section| cs
  rs -.->|final-audit-pass| ap
  rs -.->|late harden-claim| hc
  rch -.->|per section| hc
  rch -.->|fold| is
  da -.->|extract / outline| ea
  da -.->|compose| cs
  da -.->|audit| ap

  core -.guards.- IN
  core -.guards.- TR
  core -.guards.- AUD
  core -.guards.- RUN
```

## Human-in-the-loop gates (the boxes above)

| Gate | Where | Required? |
| --- | --- | --- |
| **Risk-tier gate (cross-cutting)** | every skill | **Required for high-risk**: low-risk applies silently; medium is proposed; high (reorder, claim-strength, terminology, added interpretation/examples/citations, scope/audience/conclusion) **asks first**. This is the primary HITL mechanism; the named gates below are its concrete instances. |
| H1 architecture | after `scaffold-architecture-audit` | Required — reorder/relocate/de-dup are structural (med/high-risk); the audit proposes, the author decides. |
| H3 claim strength | inside `harden-claim` | Required — the loop produces honest evidence; the author sets the final claim strength. |
| H4 finalize | `finalize-document-with-audit` | Required — author approves final wording/claims + disclosure; confidential-leakage gate before ship. |
| H5 skillset | `harden-writing-workflow` (and `hardening-contract.md` for a multi-session pass) | Required — author triages findings + approves skill edits (e.g. the recurrence-registry checkpoint). |
| H2 audit acceptance | after `slop-scan` / `claim-audit` / `voice-audit` | Optional-to-required — low-risk repairs apply; flagged medium/high items (and all in-band markers: `[CLAIM RISK]`, `[AUTHOR DECISION]`, `[EVIDENCE NEEDED]`, `[VERIFY CITATION]`, `[MECHANISM?]`) route to the author. |

In-band human handoffs: the markers above are the optional-path-to-human at any
node — the assistant surfaces a decision rather than resolving it silently.

## Edges (plain text, for non-rendering readers)

- Inputs: `source-manifest → extract-argument → build-outline`; `ingest-source` brings one new source into the record mid-project.
- Raw + architecture: `build-outline → frankendraft → scaffold-architecture-audit → [H1] → compose-section`.
- Transform: `compose-section → rewrite-block` (per raw span); `compose-section → minimal-edit` (seam pass); `condense-section → minimal-edit` (proposed cuts, author-gated).
- Audit: `compose-section → final-audit-pass → [H2] → finalize-document-with-audit → [H4] → ship`. `final-audit-pass` orchestrates `slop-scan` + `voice-audit` + `scaffold-architecture-audit` (+ seam check); `finalize-document-with-audit` runs `claim-audit` + `voice-audit` at closeout. Run the leaf audits directly for a single targeted check.
- Evidence loop: `claim-audit → harden-claim → [H3] → compose-section` (re-research a thin claim); `harden-claim → ingest-source` folds verified evidence to the ledgers.
- Runbooks (orchestrate the above over the whole artifact): `run-section` drives `build-outline → frankendraft → compose-section → final-audit-pass → minimal-edit → late harden-claim → fold`; `run-claim-harden` sweeps every section's claims via `harden-claim` and folds via `ingest-source`.
- Derived artifact: `derive-artifact → {extract-argument, build-outline, compose-section, final-audit-pass}` (spin an exec summary / memo off a finished dossier; re-asserts hardened claim strengths, invents nothing).
- Meta: `harden-writing-workflow → [H5] → skill files` (improve the stack after sessions).

## Boundary edges that prevent overlap

- redundancy: phrase/paragraph-local → `slop-scan`; cross-section → `scaffold-architecture-audit`.
- claims: audit written prose → `claim-audit`; re-research a thin claim → `harden-claim`.
- generating: one raw span → `rewrite-block`; a whole section → `compose-section`; finished prose → `minimal-edit`; verbatim-only substrate → `frankendraft`.

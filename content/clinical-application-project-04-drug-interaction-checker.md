# Project 4: Drug Interaction Checker

*Mentors: To be announced*

**Problem:** Letting an LLM state whether two drugs interact — rather than only explain a known interaction — risks a fabricated medical fact reaching a patient.

**Context:** Backed by an open dataset lookup against [RxNorm](https://www.nlm.nih.gov/research/umls/rxnorm/) (via the free [RxNav API](https://lhncbc.nlm.nih.gov/RxNav/APIs/RxNormAPIs.html)), public and requiring no license. No training.

**Goals:** Combine a structured, authoritative lookup with an LLM used only for the "translate this into something a patient can read" step — not for the factual claim itself.

**Deliverables:** A two-field form (drug A, drug B) that calls RxNav's interaction endpoint for the raw record, then passes that record — not the drug names alone — into the LLM prompt so the plain-language explanation is grounded in the actual API result. A deliberate contrast with Project 1: here the LLM never originates the medical fact, it only rephrases one.

*Showcase: TBD*

[← Back to all Clinical Application projects](clinical-application-index.md)

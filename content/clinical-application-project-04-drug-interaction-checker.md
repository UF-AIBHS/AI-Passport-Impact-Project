# Project 4: Drug Interaction Checker

*Mentors: To be announced*

**Frontend:** Two-field form (drug A, drug B), result panel with a plain-language interaction explainer.

**Backend:** Open dataset lookup against [RxNorm](https://www.nlm.nih.gov/research/umls/rxnorm/) (via the free [RxNav API](https://lhncbc.nlm.nih.gov/RxNav/APIs/RxNormAPIs.html)), then an LLM call to explain the raw interaction record in plain language.

**Dataset:** RxNorm / RxNav (public, no license required).

**Training:** No.

**Goal:** Show how to combine a structured, authoritative lookup with an LLM used only for the "translate this into something a patient can read" step — not for the factual claim itself.

**Plan:** Prompt your agent to build the two-field form, call RxNav's interaction endpoint for the raw record, then pass that record (not the drug names alone) into the LLM prompt so the explanation is grounded in the actual API result. This is a deliberate contrast with Project 1: here the LLM never originates the medical fact, it only rephrases one.

[← Back to all Clinical Application projects](clinical-application-index.md)

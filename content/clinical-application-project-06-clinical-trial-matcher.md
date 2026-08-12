# Project 6: Clinical Trial Matcher

*Mentors: To be announced*

**Problem:** Real, currently-recruiting clinical trials are publicly searchable but written in legal-style eligibility text a patient can't quickly match against their own situation.

**Context:** Pulls live data from the [ClinicalTrials.gov API](https://clinicaltrials.gov/data-api/api) (public, no key required), ranking with off-the-shelf open-source [sentence-transformers](https://www.sbert.net/) embeddings. No training, deliberately absent so students feel the difference between RAG-style ranking and an actually fine-tuned model, as in Projects 3 and 5.

**Goals:** Given a plain-language description of a patient's situation, surface and rank real, currently-recruiting trials, and summarize each one's eligibility criteria so a human doesn't have to parse legal-style trial text.

**Deliverables:** A free-text input + ranked-trial-list app built from (1) a ClinicalTrials.gov query for a broad condition match, (2) sentence-transformers embeddings of the query and each trial summary, ranked by cosine similarity, and (3) an LLM call per top-ranked trial to compress its eligibility criteria into a few plain-language bullets. The most "full pipeline" project before the capstone: API + embeddings + LLM, no training.

*Showcase: TBD*

**References:**

- [Matching Patients to Clinical Trials with Large Language Models](https://www.nature.com/articles/s41467-024-53081-z) (TrialGPT, Nature Communications, 2024): NIH/NLM's own retrieve-then-explain pipeline for patient-to-trial matching, the same shape as this project's embed-rank-summarize approach.
- [TrialGPT source code](https://github.com/ncbi-nlp/TrialGPT): the open-source implementation from NLM's intramural research program, useful as a reference for how to structure the retrieval and eligibility-summarization steps.

[← Back to all Clinical Application projects](clinical-application-index.md)

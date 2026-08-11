# Project 6: Clinical Trial Matcher

*Mentors: To be announced*

**Frontend:** Free-text input describing a patient's condition/situation, ranked list of matching trials.

**Backend:** [ClinicalTrials.gov API](https://clinicaltrials.gov/data-api/api) for the trial data, open-source [sentence-transformers](https://www.sbert.net/) embeddings to rank trials by relevance to the free-text description, LLM call to summarize each trial's eligibility criteria in plain language.

**Dataset:** ClinicalTrials.gov (live public API, no key required).

**Training:** No — embeddings and the LLM are both used off-the-shelf here; the "training" step from Projects 4/7/8 is deliberately absent so students feel the difference between RAG-style ranking and an actually fine-tuned model.

**Goal:** Given a plain-language description of a patient's situation, surface and rank real, currently-recruiting trials, and summarize each one's eligibility criteria so a human doesn't have to parse legal-style trial text.

**Plan:** Prompt your agent to build: (1) a ClinicalTrials.gov query for a broad condition match, (2) embed the free-text query and each trial's summary with sentence-transformers, rank by cosine similarity, (3) an LLM call per top-ranked trial to compress its eligibility criteria into a few plain-language bullets. This is the most "full pipeline" project before the capstone — API + embeddings + LLM, no training.

[← Back to all Clinical Application projects](clinical-application-index.md)

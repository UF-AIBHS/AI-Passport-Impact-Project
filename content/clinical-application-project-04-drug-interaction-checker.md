# Project 4: Drug Interaction Checker

*Mentors: To be announced*

**Problem:** Letting an LLM state whether two drugs interact (rather than only explain a known interaction) risks a fabricated medical fact reaching a patient.

**Context:** Backed by a structured lookup against the [openFDA drug label API](https://open.fda.gov/apis/drug/label/) (free, no key required), which returns each drug's official `drug_interactions` label section. Public and requiring no license. No training. (NLM's RxNav Drug-Drug Interaction API was discontinued in January 2024 with no direct replacement, so this project uses openFDA instead.)

**Goals:** Combine a structured, authoritative lookup with an LLM used only for the "translate this into something a patient can read" step, not for the factual claim itself.

**Deliverables:** A two-field form (drug A, drug B) that queries openFDA for each drug's label and pulls the raw `drug_interactions` text, then passes that record (not the drug names alone) into the LLM prompt so the plain-language explanation is grounded in the actual API result. A deliberate contrast with Project 1: here the LLM never originates the medical fact, it only rephrases one.

*Showcase: TBD*

**References:**

- [Medical Hallucination in Foundation Models and Their Impact on Healthcare](https://www.medrxiv.org/content/10.1101/2025.02.28.25323115) (medRxiv, 2025): documents LLMs fabricating drug interactions, dosages, and contraindications when not grounded in a structured source, the exact failure mode this project's design avoids.
- [DDInter 2.0](https://ddinter2.scbdd.com/) ([Nucleic Acids Research](https://academic.oup.com/nar/article/53/D1/D1356/7740584)): a free, openly downloadable, peer-reviewed drug-drug interaction database (300,000+ records with mechanism and management notes), a good cross-check or alternative data source to openFDA's label text.

[← Back to all Clinical Application projects](clinical-application-index.md)

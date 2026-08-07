# Project 1: Tokenizer stress-test on medical jargon

**ML4LLM anchor:** Ch.2 · proj1 — [Three tokenization schemes](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_2/ml4llm_ch2_proj1_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_2/ml4llm_ch2_proj1_helper.ipynb))

**Dataset:** [mtsamples](https://www.mtsamples.com/) medical transcription reports, [CMS ICD-10-CM code descriptions](https://www.cms.gov/medicare/coding-billing/icd-10-codes)

**Question:** How many extra tokens does a general-purpose tokenizer burn on drug names, dosages, and ICD codes compared to plain English of the same length?

**Plan:** Run the same set of mtsamples sentences through several tokenization schemes (word-level, BPE, WordPiece) as in proj1, then compare token counts on drug-name/dosage spans against matched plain-English spans. Plot token-per-character ratio by category (drug name, dosage, ICD code, plain prose) to show where general-purpose tokenizers fragment medical vocabulary most.

[← Back to all projects](projects.md)

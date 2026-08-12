# Project 1: Tokenizer stress-test on medical jargon

*Mentors: To be announced*

**Problem:** General-purpose tokenizers weren't built for medical vocabulary, and there's no measurement of how much token overhead drug names, dosages, and ICD codes actually cost compared to plain English.

**Context:** Built on [mtsamples](https://www.mtsamples.com/) medical transcription reports and [CMS ICD-10-CM code descriptions](https://www.cms.gov/medicare/coding-billing/icd-10-codes), anchored to ML4LLM Ch.2 · proj1: [Three tokenization schemes](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_2/ml4llm_ch2_proj1_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_2/ml4llm_ch2_proj1_helper.ipynb)).

**Goals:** How many extra tokens does a general-purpose tokenizer burn on drug names, dosages, and ICD codes compared to plain English of the same length?

**Deliverables:** A notebook that runs the same mtsamples sentences through several tokenization schemes (word-level, BPE, WordPiece), compares token counts on drug-name/dosage spans against matched plain-English spans, and plots token-per-character ratio by category (drug name, dosage, ICD code, plain prose) to show where general-purpose tokenizers fragment medical vocabulary most.

*Showcase: TBD*

**References:**

- [Medical Knowledge Representation Enhancement in Large Language Models Through Clinical Tokens Optimization](https://pmc.ncbi.nlm.nih.gov/articles/PMC12910058/) (Scientific Reports): shows general-purpose tokenizers fragmenting medical terms into excess subword tokens, the same measurement this project runs directly on mtsamples text.

[← Back to all Basic Science projects](basic-science-index.md)

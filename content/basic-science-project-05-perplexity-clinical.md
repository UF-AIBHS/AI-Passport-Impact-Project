# Project 5: Perplexity of clinical language

*Mentors: To be announced*

**Problem:** Medicine is often assumed to be "out-of-distribution" for general-purpose LLMs, but that assumption has no number attached to it.

**Context:** Built on [mtsamples](https://www.mtsamples.com/) medical transcription reports, anchored to ML4LLM Ch.4 · proj20: [Perplexity over time and text](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_4/ml4llm_ch4_proj20_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_4/ml4llm_ch4_proj20_helper.ipynb)).

**Goals:** Is clinical jargon systematically higher-surprisal (harder to predict) for a general-purpose LLM than plain English, a quantifiable measure of how out-of-distribution medicine is?

**Deliverables:** A notebook that computes per-token perplexity across mtsamples sentences, compares perplexity distributions between jargon-heavy spans (drug names, procedures) and matched plain-English spans, and tracks whether perplexity on clinical spans decreases within a report as context accumulates.

*Showcase: TBD*

**References:**

- [Rephrasing Electronic Health Records for Pretraining Clinical Language Models](https://arxiv.org/abs/2411.18940): evaluates LLM perplexity on clinical text including discharge summaries and radiology reports, the same out-of-distribution question this project measures directly on mtsamples.

[← Back to all Basic Science projects](basic-science-index.md)

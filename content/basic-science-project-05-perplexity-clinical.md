# Project 5: Perplexity of clinical language

*Mentors: To be announced*

**ML4LLM anchor:** Ch.4 · proj20 — [Perplexity over time and text](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_4/ml4llm_ch4_proj20_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_4/ml4llm_ch4_proj20_helper.ipynb))

**Dataset:** [mtsamples](https://www.mtsamples.com/) medical transcription reports

**Question:** Is clinical jargon systematically higher-surprisal (harder to predict) for a general-purpose LLM than plain English — a quantifiable measure of how out-of-distribution medicine is?

**Plan:** Compute per-token perplexity across mtsamples sentences as in proj20, then compare perplexity distributions between jargon-heavy spans (drug names, procedures) and matched plain-English spans. Track whether perplexity on clinical spans decreases within a report as context accumulates.

[← Back to all Basic Science projects](basic-science-index.md)

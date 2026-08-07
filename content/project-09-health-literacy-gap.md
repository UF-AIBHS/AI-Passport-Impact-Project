# Project 9: Health-literacy gap as embedding distance

**ML4LLM anchor:** Ch.3 · proj13 — [Word similarity via distance and cosine](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj13_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj13_helper.ipynb))

**Dataset:** [MedlinePlus](https://medlineplus.gov/) consumer health articles vs. matched PubMed abstracts on the same condition

**Question:** Can the plain-language vs. clinical-language gap for the same disease be measured as embedding distance, giving a computable health-literacy score?

**Plan:** Pair MedlinePlus consumer articles with a PubMed abstract on the same condition, embed both, and compute distance/cosine similarity as in proj13. Rank condition pairs by embedding distance to identify which topics have the largest plain-language-to-clinical-language gap.

[← Back to all projects](index.md)

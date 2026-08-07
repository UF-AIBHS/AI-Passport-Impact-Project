---
{"dg-publish":true,"tags":["projects"]}
---

# Project 4: Drug-label embedding clusters

**ML4LLM anchor:** Ch.3 · proj8 — [All to all cosine similarity](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj8_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj8_helper.ipynb))

**Dataset:** [DailyMed](https://dailymed.nlm.nih.gov/) FDA drug label text (warnings and indications sections)

**Question:** Do drugs with black-box warnings cluster together in embedding space, independent of their pharmacological class?

**Plan:** Embed the warnings/indications section of each label, build the all-to-all cosine similarity matrix as in proj8, and visualize it as a heatmap/dendrogram. Overlay drug class and black-box-warning status to see which grouping the embedding space actually reflects.

[[projects|← Back to all projects]]

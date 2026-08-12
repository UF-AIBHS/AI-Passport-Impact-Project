# Project 4: Drug-label embedding clusters

*Mentors: To be announced*

**Problem:** Drugs are officially grouped by pharmacological class, but it's unclear whether their warning-label language actually clusters that way, or clusters instead around shared risk profile.

**Context:** Built on [DailyMed](https://dailymed.nlm.nih.gov/) FDA drug label text (warnings and indications sections), anchored to ML4LLM Ch.3 · proj8 — [All to all cosine similarity](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj8_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj8_helper.ipynb)).

**Goals:** Do drugs with black-box warnings cluster together in embedding space, independent of their pharmacological class?

**Deliverables:** A notebook that embeds each label's warnings/indications section, builds the all-to-all cosine similarity matrix, visualizes it as a heatmap/dendrogram, and overlays drug class and black-box-warning status to see which grouping the embedding space actually reflects.

*Showcase: TBD*

[← Back to all Basic Science projects](basic-science-index.md)

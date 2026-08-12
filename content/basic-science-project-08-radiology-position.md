# Project 8: Structural position of radiology findings

*Mentors: To be announced*

**Problem:** Radiology reports are assumed to follow a predictable structure, with findings landing in roughly the same place every time, but nothing measures whether that's actually true.

**Context:** Built on [Open-I](https://openi.nlm.nih.gov/) de-identified chest X-ray reports (Indiana University), anchored to ML4LLM Ch.7 · proj45: [Minkowski distance, mutual information, and token positions](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_7/ml4llm_ch7_proj45_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_7/ml4llm_ch7_proj45_helper.ipynb)).

**Goals:** Do "impression"/finding statements reliably cluster at a predictable structural position within a radiology report?

**Deliverables:** A notebook that tags finding-related sentences in Open-I reports, computes mutual information between token position (normalized by report length) and finding-mention, and compares against Minkowski distance between finding and non-finding token-position distributions to quantify how structured radiology reporting is.

*Showcase: TBD*

**References:**

- [Learning to Summarize Radiology Findings](https://arxiv.org/abs/1809.04698): treats the Findings-to-Impression structure of radiology reports as a modeling target, the same structural regularity this project measures directly with mutual information and Minkowski distance.

[← Back to all Basic Science projects](basic-science-index.md)

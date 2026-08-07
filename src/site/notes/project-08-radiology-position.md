---
{"dg-publish":true,"tags":["projects"],"title":"Structural position of radiology findings"}
---

# Project 8: Structural position of radiology findings

**ML4LLM anchor:** Ch.7 · proj45 — [Minkowski distance, mutual information, and token positions](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_7/ml4llm_ch7_proj45_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_7/ml4llm_ch7_proj45_helper.ipynb))

**Dataset:** [Open-I](https://openi.nlm.nih.gov/) de-identified chest X-ray reports (Indiana University)

**Question:** Do "impression"/finding statements reliably cluster at a predictable structural position within a radiology report?

**Plan:** Tag finding-related sentences in Open-I reports, then compute mutual information between token position (normalized by report length) and finding-mention as in proj45. Compare against Minkowski distance between finding and non-finding token-position distributions to quantify how structured radiology reporting is.

[[projects|← Back to all projects]]

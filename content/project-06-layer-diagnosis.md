# Project 6: Which layer "knows" the diagnosis

**ML4LLM anchor:** Ch.5 · proj27 — [Impact of layer-specific noise and scaling](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_5/ml4llm_ch5_proj27_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_5/ml4llm_ch5_proj27_helper.ipynb))

**Dataset:** [PubMedQA](https://pubmedqa.github.io/) abstracts

**Question:** At what layer depth does injecting noise into hidden states collapse the model's ability to predict the correct diagnosis term?

**Plan:** For a set of PubMedQA contexts ending in a diagnosis term, inject noise/scaling at each layer in turn as in proj27, and measure how prediction accuracy for the correct diagnosis token degrades by layer. Plot accuracy vs. layer depth to locate where diagnosis-relevant information becomes concentrated.

[← Back to all projects](index.md)

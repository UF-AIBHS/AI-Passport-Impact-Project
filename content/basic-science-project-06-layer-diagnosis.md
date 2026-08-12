# Project 6: Which layer "knows" the diagnosis

*Mentors: To be announced*

**Problem:** A model can output the correct diagnosis term, but nothing shows which layers actually carry the information that makes that prediction possible, or how fragile it is.

**Context:** Built on [PubMedQA](https://pubmedqa.github.io/) abstracts, anchored to ML4LLM Ch.5 · proj27: [Impact of layer-specific noise and scaling](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_5/ml4llm_ch5_proj27_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_5/ml4llm_ch5_proj27_helper.ipynb)).

**Goals:** At what layer depth does injecting noise into hidden states collapse the model's ability to predict the correct diagnosis term?

**Deliverables:** A notebook that, for a set of PubMedQA contexts ending in a diagnosis term, injects noise/scaling at each layer in turn, measures how prediction accuracy for the correct diagnosis token degrades by layer, and plots accuracy vs. layer depth to locate where diagnosis-relevant information becomes concentrated.

*Showcase: TBD*

**References:**

- [Locating and Editing Factual Associations in GPT](https://arxiv.org/abs/2202.05262) (ROME, NeurIPS 2022): the paper this project's method is closest to, using causal interventions (noise injection) at each layer to find where a transformer stores the fact it's about to output.

[← Back to all Basic Science projects](basic-science-index.md)

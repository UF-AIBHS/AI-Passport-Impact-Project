# Project 3: Topic drift in patient–doctor chat

*Mentors: To be announced*

**Problem:** Patient–doctor conversations shift from symptom-gathering to diagnosis at some point, but that pivot isn't marked in the transcript. There's no way to locate it without reading the whole exchange.

**Context:** Built on [MTS-Dialog](https://github.com/abachaa/MTS-Dialog) (CC-BY-4.0) patient–doctor dialogues — each transcript's `dialogue` column is a real, expert-authored `Doctor:`/`Patient:` multi-turn exchange, the actual turn-to-turn structure this project traces, unlike the single question/answer pairs in Symptom2Disease (used instead in Project 7) — anchored to ML4LLM Ch.3 · proj9: [Sequential word cosine similarity](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj9_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj9_helper.ipynb)).

**Goals:** Where in a conversation does embedding similarity between consecutive turns drop, i.e., where does the doctor pivot from symptom-gathering to diagnosis?

**Deliverables:** A notebook that embeds each conversational turn, computes sequential cosine similarity turn-to-turn, and plots the similarity trace across a conversation. Sharp drops mark topic pivots, compared across many conversations to see if pivots cluster around a predictable turn number.

*Showcase: TBD*

**References:**

- [Unsupervised Dialogue Topic Segmentation with Topic-aware Utterance Representation](https://arxiv.org/abs/2305.02747): locates topic pivots in dialogue via turn-to-turn similarity, the same cosine-similarity-drop signal this project traces across patient-doctor conversations.

[← Back to all Basic Science projects](basic-science-index.md)

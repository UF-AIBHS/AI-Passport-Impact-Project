# Project 3: Topic drift in patient–doctor chat

*Mentors: To be announced*

**Problem:** Patient–doctor conversations shift from symptom-gathering to diagnosis at some point, but that pivot isn't marked in the transcript — there's no way to locate it without reading the whole exchange.

**Context:** Built on [MedDialog / HealthCareMagic-100k](https://huggingface.co/datasets/lavita/ChatDoctor-HealthCareMagic-100k) patient–doctor dialogues (Hugging Face), anchored to ML4LLM Ch.3 · proj9 — [Sequential word cosine similarity](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj9_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj9_helper.ipynb)).

**Goals:** Where in a conversation does embedding similarity between consecutive turns drop — i.e., where does the doctor pivot from symptom-gathering to diagnosis?

**Deliverables:** A notebook that embeds each conversational turn, computes sequential cosine similarity turn-to-turn, and plots the similarity trace across a conversation — sharp drops mark topic pivots, compared across many conversations to see if pivots cluster around a predictable turn number.

*Showcase: TBD*

[← Back to all Basic Science projects](basic-science-index.md)

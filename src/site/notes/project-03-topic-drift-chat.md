---
{"dg-publish":true,"tags":["projects"],"title":"Topic drift in patient\u2013doctor chat"}
---

# Project 3: Topic drift in patient–doctor chat

**ML4LLM anchor:** Ch.3 · proj9 — [Sequential word cosine similarity](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj9_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_3/ml4llm_ch3_proj9_helper.ipynb))

**Dataset:** [MedDialog / HealthCareMagic-100k](https://huggingface.co/datasets/lavita/medical-meadow-medical-flashcards) patient–doctor dialogues (Hugging Face)

**Question:** Where in a conversation does embedding similarity between consecutive turns drop — i.e., where does the doctor pivot from symptom-gathering to diagnosis?

**Plan:** Embed each conversational turn, compute sequential cosine similarity turn-to-turn as in proj9, and plot the similarity trace across a conversation. Sharp drops mark topic pivots; compare pivot locations across many conversations to see if they cluster around a predictable turn number.

[[projects|← Back to all projects]]

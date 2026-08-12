# Project 10: Capstone — full mechanism audit of a clinical Q&A

*Mentors: To be announced*

**Problem:** Every earlier Basic Science project inspects one mechanism in isolation — tokenization, embeddings, attention, or layers — and none of them show how those mechanisms combine to produce one actual answer.

**Context:** Built on [BioASQ](http://bioasq.org/) yes/no clinical research question–answer pairs, combining the anchors and methods from [Project 1](basic-science-project-01-tokenizer-jargon.md), [Project 3](basic-science-project-03-topic-drift-chat.md), [Project 6](basic-science-project-06-layer-diagnosis.md), and [Project 7](basic-science-project-07-attention-symptoms.md) — see the [book's table of contents](https://github.com/saurabhr/ML4LLM_book).

**Goals:** For one clinical question, trace the full mechanism — tokenization, embedding similarity, attention, and layer robustness — to explain *why* the model answered as it did.

**Deliverables:** A notebook that picks a single BioASQ yes/no question, tokenizes it (Project 1's method) to see how the question is chunked, traces embedding similarity across its clauses (Project 3's method) to find where semantic focus shifts, visualizes attention onto the clause containing the answer-bearing evidence (Project 7's method), injects layer-specific noise (Project 6's method) to find where the yes/no decision becomes fixed, and presents all four views together as a single audit trail for one question.

*Showcase: TBD*

[← Back to all Basic Science projects](basic-science-index.md)

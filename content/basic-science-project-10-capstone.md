# Project 10: Capstone — full mechanism audit of a clinical Q&A

*Mentors: To be announced*

**ML4LLM anchor:** Combines techniques from [Project 1](basic-science-project-01-tokenizer-jargon.md), [Project 3](basic-science-project-03-topic-drift-chat.md), [Project 7](basic-science-project-07-attention-symptoms.md), and [Project 6](basic-science-project-06-layer-diagnosis.md) — see the [book's table of contents](https://github.com/saurabhr/ML4LLM_book)

**Dataset:** [BioASQ](http://bioasq.org/) yes/no clinical research question–answer pairs

**Question:** For one clinical question, can we trace the full mechanism — tokenization, embedding similarity, attention, and layer robustness — to explain *why* the model answered as it did?

**Plan:** Pick a single BioASQ yes/no question. Tokenize it (Project 1's method) to see how the question is chunked, trace embedding similarity across its clauses (Project 3's method) to find where the question's semantic focus shifts, visualize attention onto the clause containing the answer-bearing evidence (Project 7's method), and inject layer-specific noise (Project 6's method) to find where the yes/no decision becomes fixed. Present the four views together as a single audit trail for one question.

[← Back to all Basic Science projects](basic-science-index.md)

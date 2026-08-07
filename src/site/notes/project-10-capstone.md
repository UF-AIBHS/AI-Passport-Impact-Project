---
{"dg-publish":true,"tags":["projects"]}
---

# Project 10: Capstone — full mechanism audit of a clinical Q&A

**ML4LLM anchor:** Combines techniques from [[project-01-tokenizer-jargon|Project 1]], [[project-03-topic-drift-chat|Project 3]], [[project-07-attention-symptoms|Project 7]], and [[project-06-layer-diagnosis|Project 6]] — see the [book's table of contents](https://github.com/saurabhr/ML4LLM_book)

**Dataset:** [BioASQ](http://bioasq.org/) yes/no clinical research question–answer pairs

**Question:** For one clinical question, can we trace the full mechanism — tokenization, embedding similarity, attention, and layer robustness — to explain *why* the model answered as it did?

**Plan:** Pick a single BioASQ yes/no question. Tokenize it (Project 1's method) to see how the question is chunked, trace embedding similarity across its clauses (Project 3's method) to find where the question's semantic focus shifts, visualize attention onto the clause containing the answer-bearing evidence (Project 7's method), and inject layer-specific noise (Project 6's method) to find where the yes/no decision becomes fixed. Present the four views together as a single audit trail for one question.

[[projects|← Back to all projects]]

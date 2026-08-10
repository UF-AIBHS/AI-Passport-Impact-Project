# Project 10: Capstone — Personal Health Assistant

**Frontend:** Full chat app with document upload (the user's own health documents feed the assistant's answers).

**Backend:** LoRA fine-tune of a small open model (e.g. Phi-3-mini) on [MedQuAD](https://github.com/abachaa/MedQuAD), plus a RAG layer over the user's uploaded documents, served locally.

**Dataset:** [MedQuAD](https://github.com/abachaa/MedQuAD) (public medical Q&A pairs) for the fine-tune; the user's own uploaded documents for RAG.

**Training:** **Yes** — LoRA fine-tune, the lightest-weight form of the fine-tuning seen in Projects 4, 7, and 8, scaled up to an actual generative model instead of a classifier.

**Goal:** Combine everything from Projects 1-9 — prompting, RAG, dataset lookup, and fine-tuning — into one assistant: a base model specialized on medical Q&A via LoRA, grounded further at answer time by whatever documents the user uploaded.

**Plan:** Prompt your agent to build in stages: (1) LoRA fine-tune Phi-3-mini on MedQuAD using an open-source LoRA library (e.g. `peft`), (2) stand up a local RAG layer (Chroma again, as in Project 2) over uploaded documents, (3) at query time, retrieve relevant document chunks and pass them alongside the fine-tuned model's own knowledge, (4) wire it all behind a chat UI. Serve everything locally — no document or query should leave the machine. This mirrors Level 2's capstone (project-10-capstone.md) in spirit: it's the project that makes every earlier technique legible as one system.

[← Back to all Level 1 projects](level-1-index.md)

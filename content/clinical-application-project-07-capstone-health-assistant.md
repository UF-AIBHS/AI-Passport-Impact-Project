# Project 7: Capstone — Personal Health Assistant

*Mentors: To be announced*

**Problem:** No single project so far has combined prompting, RAG, dataset lookup, and fine-tuning into one assistant that's actually grounded in a specific user's own documents.

**Context:** LoRA fine-tunes a small open model (e.g. Phi-3-mini) on [MedQuAD](https://github.com/abachaa/MedQuAD) (public medical Q&A pairs), plus a RAG layer over the user's own uploaded documents, served entirely locally — the lightest-weight fine-tuning seen in the track, scaled up to a generative model instead of a classifier.

**Goals:** Combine everything from Projects 1-6 — prompting, RAG, dataset lookup, and fine-tuning — into one assistant: a base model specialized on medical Q&A via LoRA, grounded further at answer time by whatever documents the user uploaded.

**Deliverables:** A full chat app with document upload, built in stages: (1) LoRA fine-tune Phi-3-mini on MedQuAD using an open-source LoRA library (e.g. `peft`), (2) a local RAG layer (Chroma, as in Project 1) over uploaded documents, (3) retrieval of relevant document chunks at query time alongside the fine-tuned model's own knowledge, (4) all wired behind a chat UI, served locally so no document or query leaves the machine. Mirrors Basic Science's capstone ([Project 10](basic-science-project-10-capstone.md)) in spirit: the project that makes every earlier technique legible as one system.

*Showcase: TBD*

[← Back to all Clinical Application projects](clinical-application-index.md)

# Project 3: Patient Note Summarizer

**Frontend:** File/text upload for a clinical note, summary panel with 3-5 bullet points.

**Backend:** Open-source summarization model (e.g. `facebook/bart-large-cnn` via Hugging Face `transformers`), or LLM prompting with a "summarize for a patient, 5th-grade level" instruction.

**Dataset:** [mtsamples](https://www.mtsamples.com/) for test notes.

**Training:** No.

**Goal:** Turn a dense clinical note into a short, patient-facing bullet summary that keeps the actionable parts (medications, follow-up, restrictions) and drops the clinical shorthand.

**Plan:** Prompt your agent to build an upload-and-summarize flow, then compare two backends side by side: the dedicated summarization model vs. a general LLM with a summarization prompt. Have the frontend show both outputs so students can see where a task-specific model differs from prompting a general model.

[← Back to all Level 1 projects](level-1-index.md)

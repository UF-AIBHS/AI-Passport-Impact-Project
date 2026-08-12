# Project 2: Patient Note Summarizer

*Mentors: To be announced*

**Problem:** Dense clinical notes bury the handful of things a patient actually needs to act on — medications, follow-up, restrictions — under clinical shorthand most patients can't read.

**Context:** Runs on [mtsamples](https://www.mtsamples.com/) for test notes, comparing an open-source summarization model (e.g. `facebook/bart-large-cnn` via Hugging Face `transformers`) against LLM prompting with a "summarize for a patient, 5th-grade level" instruction. No training.

**Goals:** Turn a dense clinical note into a short, patient-facing bullet summary that keeps the actionable parts and drops the clinical shorthand.

**Deliverables:** A file/text upload flow with a 3-5 bullet summary panel, showing both backends' output side by side (dedicated summarization model vs. general LLM with a summarization prompt) so students can see where a task-specific model differs from prompting a general one.

*Showcase: TBD*

[← Back to all Clinical Application projects](clinical-application-index.md)

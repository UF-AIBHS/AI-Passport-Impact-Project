# Project 3: Symptom-to-Specialist Router

*Mentors: To be announced*

**Problem:** Patients describing symptoms in free text don't know which kind of specialist to book, and a generic prompted LLM hasn't been shown to route that decision reliably.

**Context:** Fine-tunes a `distilbert-base-uncased` text classifier on [Symptom2Disease](https://huggingface.co/datasets/gretelai/symptom_to_diagnosis) (public, on Hugging Face) — the first project in the track that trains a model instead of only prompting one.

**Goals:** Given a free-text symptom description, classify which of Symptom2Disease's 22 diagnosis categories it falls under, then map that category to the type of specialist the patient likely needs to see.

**Deliverables:** A short fine-tuning script (Hugging Face `Trainer`, a handful of epochs on a small DistilBERT) against the Symptom2Disease training split, a small hand-written lookup table mapping each of its 22 diagnosis categories to a specialist type, the checkpoint served behind a small API, and a free-text input + result card (predicted specialist + confidence) frontend — intentionally simple, so the focus stays on watching a model go from generic to task-specific after training, compared against Projects 1-2's pure-prompting approach.

*Showcase: TBD*

[← Back to all Clinical Application projects](clinical-application-index.md)

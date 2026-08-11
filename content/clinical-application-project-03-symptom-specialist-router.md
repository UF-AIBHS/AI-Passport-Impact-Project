# Project 3: Symptom-to-Specialist Router

*Mentors: To be announced*

**Frontend:** Free-text symptom input, result card showing the predicted specialist + confidence.

**Backend:** Fine-tuned `distilbert-base-uncased` text classifier.

**Dataset:** [Symptom2Disease](https://huggingface.co/datasets/gretelai/symptom_to_diagnosis) (public, on Hugging Face).

**Training:** **Yes** — this is the first project that fine-tunes a model instead of only prompting one.

**Goal:** Given a free-text symptom description, classify which type of specialist the patient likely needs to see.

**Plan:** Prompt your agent to write a short fine-tuning script (Hugging Face `Trainer`, a handful of epochs on a small DistilBERT) against the Symptom2Disease training split, then serve the resulting checkpoint behind a small API. The frontend is intentionally simple — the point of this project is watching a model go from "generic" to "task-specific" after training, and comparing its outputs to Project 1-3's pure-prompting approach.

[← Back to all Clinical Application projects](clinical-application-index.md)

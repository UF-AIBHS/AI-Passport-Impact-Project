# Level 1: Prompting Projects

Ten mini-projects, ascending in complexity. [Level 2](level-2-index.md) drills into model internals (tokenization, attention, layers) on medical text. Level 1 stays at the *application* layer: a frontend built by prompting an AI coding agent ([Claude Code](download-claude-code.md), [Codex](download-codex.md), or [VS Code agent mode](download-vscode.md)), talking to a backend built on **open-source models and datasets**. Early projects are pure prompting; later ones introduce fine-tuning a small open model.

| # | Project | Backend | Training? |
|---|---|---|---|
| 1 | [Medical Term Definer](level-1-project-01-medical-term-definer.md) | Local LLM via Ollama + prompt template | No |
| 2 | [Appointment Prep Chatbot](level-1-project-02-appointment-prep-chatbot.md) | Open LLM + RAG over an FAQ doc (Chroma) | No |
| 3 | [Patient Note Summarizer](level-1-project-03-patient-note-summarizer.md) | Open summarization model / LLM prompting | No |
| 4 | [Symptom-to-Specialist Router](level-1-project-04-symptom-specialist-router.md) | Fine-tuned DistilBERT classifier | **Yes** |
| 5 | [Drug Interaction Checker](level-1-project-05-drug-interaction-checker.md) | RxNorm dataset lookup + LLM explainer | No |
| 6 | [Health Literacy Rewriter](level-1-project-06-health-literacy-rewriter.md) | LLM prompting + `textstat` verification | No |
| 7 | [Mood Journal Sentiment Tracker](level-1-project-07-mood-journal-sentiment.md) | Fine-tuned emotion classifier | **Yes** |
| 8 | [Radiology Report Flagger](level-1-project-08-radiology-report-flagger.md) | Fine-tuned NER model | **Yes** |
| 9 | [Clinical Trial Matcher](level-1-project-09-clinical-trial-matcher.md) | ClinicalTrials.gov API + sentence-transformer ranking | No |
| 10 | [Capstone: Personal Health Assistant](level-1-project-10-capstone-health-assistant.md) | LoRA fine-tune + RAG over uploaded docs | **Yes** |

Every project's backend runs on open-source models and datasets — no paid API required, and everything is inspectable locally. New to the tooling in general? Start with [Software Engineering Practices for Data Science](software-engineering-practices.md).

[← Back to home](index.md) · [Level 2: Model internals →](level-2-index.md)

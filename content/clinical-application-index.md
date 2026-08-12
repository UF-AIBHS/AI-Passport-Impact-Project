# Clinical Application

Seven mini-projects, ascending in complexity, building tools grounded in a real clinical workflow: patient-facing chat, note summarization, triage, drug safety, radiology review, and trial matching. Builds on the general-purpose skills from [Foundations](basic-index.md). A frontend built by prompting an AI coding agent ([Claude Code](download-claude-code.md), [Codex](download-codex.md), or [VS Code agent mode](download-vscode.md)), talking to a backend built on **open-source models and datasets**. Early projects are pure prompting; later ones introduce fine-tuning a small open model.

| # | Project | Backend | Training? |
|---|---|---|---|
| 1 | [Appointment Prep Chatbot](clinical-application-project-01-appointment-prep-chatbot.md) | Open LLM + RAG over an FAQ doc (Chroma) | No |
| 2 | [Patient Note Summarizer](clinical-application-project-02-patient-note-summarizer.md) | Open summarization model / LLM prompting | No |
| 3 | [Symptom-to-Specialist Router](clinical-application-project-03-symptom-specialist-router.md) | Fine-tuned DistilBERT classifier | **Yes** |
| 4 | [Drug Interaction Checker](clinical-application-project-04-drug-interaction-checker.md) | RxNorm dataset lookup + LLM explainer | No |
| 5 | [Radiology Report Flagger](clinical-application-project-05-radiology-report-flagger.md) | Fine-tuned NER model | **Yes** |
| 6 | [Clinical Trial Matcher](clinical-application-project-06-clinical-trial-matcher.md) | ClinicalTrials.gov API + sentence-transformer ranking | No |
| 7 | [Capstone: Personal Health Assistant](clinical-application-project-07-capstone-health-assistant.md) | LoRA fine-tune + RAG over uploaded docs | **Yes** |

Every project's backend runs on open-source models and datasets, and everything is inspectable locally. New to the tooling in general? Start with [Software Engineering Practices for Data Science](software-engineering-practices.md).

[← Back to Foundations projects](basic-index.md) · [Basic Science projects →](basic-science-index.md)

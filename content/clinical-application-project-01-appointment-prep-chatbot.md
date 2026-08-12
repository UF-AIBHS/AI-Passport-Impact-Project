# Project 1: Appointment Prep Chatbot

*Mentors: To be announced*

**Problem:** Patients ask the same handful of pre-visit questions (what to bring, fasting rules, parking) over and over, and an ungrounded chatbot risks confidently making up an answer the clinic never gave.

**Context:** Grounded in a short FAQ doc you write yourself (5-10 Q&As; the point is demonstrating RAG grounding, not sourcing external data), using an open-source LLM with retrieval-augmented generation (RAG) over [Chroma](https://www.trychroma.com/) as the local vector store. No training.

**Goals:** Answer "what do I need to bring / can I eat before my visit" style questions grounded only in the clinic's own FAQ doc, and say "I don't know, call the office" when the answer isn't in it.

**Deliverables:** A chat widget (message list + input box) on a mock clinic page, backed by (1) an ingestion script that chunks the FAQ doc and embeds it into Chroma with an open sentence-transformers model, and (2) a chat endpoint that embeds the user question, retrieves top-k chunks, and stuffs them into the LLM prompt as context, tested to confirm it refuses questions outside the FAQ's scope.

*Showcase: TBD*

**References:**

- [Development and Evaluation of a Retrieval-Augmented Generation Chatbot for Orthopedic and Trauma Surgery Patient Education](https://ai.jmir.org/2025/1/e75262) (JMIR AI, 2025): a RAG chatbot built and scored on the same "does it stay grounded in the source doc" question this project's refusal test checks.
- [Systematic Analysis of Retrieval-Augmented Generation-Based LLMs for Medical Chatbot Applications](https://www.mdpi.com/2504-4990/6/4/116) (open access): surveys the RAG-for-medical-chatbot design space this project implements a minimal version of.

[← Back to all Clinical Application projects](clinical-application-index.md)

# Project 1: Appointment Prep Chatbot

*Mentors: To be announced*

**Frontend:** Chat widget (message list + input box) embedded on a mock clinic page.

**Backend:** Open-source LLM + retrieval-augmented generation (RAG) over a small FAQ document, using [Chroma](https://www.trychroma.com/) as the local vector store.

**Dataset:** A short FAQ doc you write yourself (5-10 Q&As on what to bring, fasting rules, parking, etc.) — the point is showing RAG grounding, not sourcing external data.

**Training:** No.

**Goal:** Answer "what do I need to bring / can I eat before my visit" style questions grounded only in the clinic's own FAQ doc, and say "I don't know, call the office" when the answer isn't in it.

**Plan:** Prompt your agent to scaffold: (1) an ingestion script that chunks the FAQ doc and embeds it into Chroma with an open sentence-transformers model, (2) a chat endpoint that embeds the user question, retrieves top-k chunks, and stuffs them into the LLM prompt as context, (3) a minimal chat frontend. Test that it refuses to answer questions outside the FAQ's scope.

[← Back to all Clinical Application projects](clinical-application-index.md)

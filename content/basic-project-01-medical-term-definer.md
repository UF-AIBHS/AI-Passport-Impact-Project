# Project 1: Medical Term Definer

*Mentors: To be announced*

**Problem:** Clinical notes are full of jargon and abbreviations a patient can't parse on their own, and there's no lightweight way to surface plain-language definitions without rewriting the note itself.

**Context:** Runs on [mtsamples](https://www.mtsamples.com/) medical transcription reports as test notes, using a local open-source LLM via [Ollama](https://ollama.com) (e.g. Llama 3 8B), prompting only, no fine-tuning.

**Goals:** Given a clinical note, flag jargon/abbreviations a patient wouldn't know and generate a one-line plain-language definition for each, without altering the rest of the note.

**Deliverables:** A single-page app: a textarea in, a rendered note out with `<mark>` spans over jargon terms (tooltip or footnote holds the definition), with definitions coming from one LLM call per note, constrained by a system prompt to a term→definition JSON list that the frontend merges back into the note text.

*Showcase: TBD*

**References:**

- [MedJEx: A Medical Jargon Extraction Model with Wiki's Hyperlink Span and Contextualized Masked Language Model Score](https://aclanthology.org/2022.emnlp-main.805/) (EMNLP 2022): the closest academic match, a model trained specifically to flag jargon terms in EHR note sentences, the same task this project prompts an LLM to do.
- [README: Bridging Medical Jargon and Lay Understanding for Patient Education through Data-Centric NLP](https://arxiv.org/abs/2312.15561): pairs jargon detection with retrieved lay definitions, the same two-step shape (flag, then define) as this project's deliverable.
- [OpenNotes](https://www.opennotes.org/): the research movement behind patients reading their own clinical notes; this project is a lightweight version of the comprehension problem OpenNotes documents at scale.

[← Back to all Foundations projects](basic-index.md)

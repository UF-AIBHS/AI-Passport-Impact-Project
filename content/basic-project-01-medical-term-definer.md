# Project 1: Medical Term Definer

*Mentors: To be announced*

**Problem:** Clinical notes are full of jargon and abbreviations a patient can't parse on their own, and there's no lightweight way to surface plain-language definitions without rewriting the note itself.

**Context:** Runs on [mtsamples](https://www.mtsamples.com/) medical transcription reports as test notes, using a local open-source LLM via [Ollama](https://ollama.com) (e.g. Llama 3 8B) — prompting only, no fine-tuning.

**Goals:** Given a clinical note, flag jargon/abbreviations a patient wouldn't know and generate a one-line plain-language definition for each, without altering the rest of the note.

**Deliverables:** A single-page app — a textarea in, a rendered note out with `<mark>` spans over jargon terms (tooltip or footnote holds the definition) — with definitions coming from one LLM call per note, constrained by a system prompt to a term→definition JSON list that the frontend merges back into the note text.

*Showcase: TBD*

[← Back to all Foundations projects](basic-index.md)

# Project 1: Medical Term Definer

*Mentors: To be announced*

**Frontend:** Textbox for a pasted clinical note, output view with jargon terms highlighted and defined inline.

**Backend:** Local open-source LLM via [Ollama](https://ollama.com) (e.g. Llama 3 8B) — no fine-tuning, prompting only.

**Dataset:** [mtsamples](https://www.mtsamples.com/) medical transcription reports, for test notes to paste in.

**Training:** No.

**Goal:** Given a clinical note, flag jargon/abbreviations a patient wouldn't know and generate a one-line plain-language definition for each, without altering the rest of the note.

**Plan:** Prompt your coding agent to scaffold a single-page app: a textarea in, a rendered note out with `<mark>` spans over jargon terms (tooltip or footnote holds the definition). The definitions come from one LLM call per note using a system prompt that constrains output to a term→definition JSON list, which the frontend then merges back into the note text.

[← Back to all Basic projects](basic-index.md)

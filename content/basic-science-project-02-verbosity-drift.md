# Project 2: Verbosity drift across note types

*Mentors: To be announced*

**Problem:** Not all clinical note types are equally jargon-dense, but nothing quantifies whether discharge summaries, radiology reports, and visit notes actually differ in how heavily they fragment under tokenization.

**Context:** Built on [mtsamples](https://www.mtsamples.com/) medical transcription reports across multiple specialties and note types, anchored to ML4LLM Ch.2 · proj2: [Book lengths in characters, words, and tokens](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_2/ml4llm_ch2_proj2_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_2/ml4llm_ch2_proj2_helper.ipynb)).

**Goals:** Do discharge summaries, radiology reports, and visit notes differ systematically in their token-per-word ratio (a proxy for jargon density)?

**Deliverables:** A notebook that groups mtsamples reports by note type, computes character/word/token counts per report, and compares the token-per-word ratio distribution across note types with box plots. A higher ratio flags note types where clinical vocabulary fragments more heavily under tokenization.

*Showcase: TBD*

**References:**

- [Making the Most Out of the Limited Context Length: Predictive Power Varies with Clinical Note Type and Note Section](https://arxiv.org/abs/2307.07051): quantifies how token/word statistics differ across clinical note types and sections, the same cross-note-type comparison this project runs on mtsamples.

[← Back to all Basic Science projects](basic-science-index.md)

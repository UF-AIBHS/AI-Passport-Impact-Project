# Project 2: Verbosity drift across note types

*Mentors: To be announced*

**ML4LLM anchor:** Ch.2 · proj2 — [Book lengths in characters, words, and tokens](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_2/ml4llm_ch2_proj2_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_2/ml4llm_ch2_proj2_helper.ipynb))

**Dataset:** [mtsamples](https://www.mtsamples.com/) medical transcription reports across multiple specialties and note types

**Question:** Do discharge summaries, radiology reports, and visit notes differ systematically in their token-per-word ratio — a proxy for jargon density?

**Plan:** Group mtsamples reports by note type, compute character/word/token counts per report as in proj2, then compare the token-per-word ratio distribution across note types with box plots. A higher ratio flags note types where clinical vocabulary fragments more heavily under tokenization.

[← Back to all Basic Science projects](basic-science-index.md)

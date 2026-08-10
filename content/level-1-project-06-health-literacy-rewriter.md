# Project 6: Health Literacy Rewriter

**Frontend:** Textbox for source text, a target-grade-level slider (e.g. grade 5 → grade 12), rewritten output.

**Backend:** LLM prompting (grade level goes into the system prompt), verified with the open-source [`textstat`](https://pypi.org/project/textstat/) package (Flesch-Kincaid grade level) run on the output.

**Dataset:** None required — students can paste their own source text, or reuse mtsamples notes.

**Training:** No.

**Goal:** Rewrite text at a target reading level and *prove* it hit the target, instead of trusting the LLM's word for it.

**Plan:** Prompt your agent to build the slider + textbox flow, then add a verification loop: run `textstat.flesch_kincaid_grade()` on the LLM's output, and if it misses the target by more than ~1 grade level, re-prompt with the measured gap ("that came out at grade 9, target was grade 6, simplify further") up to a few retries. This teaches measuring an LLM's output against an objective metric instead of trusting it blindly.

[← Back to all Level 1 projects](level-1-index.md)

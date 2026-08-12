# Project 2: Health Literacy Rewriter

*Mentors: To be announced*

**Problem:** LLMs will happily claim a rewrite "hits a 6th-grade reading level" with no way to check the claim, so there's no way to trust a simplified note without an independent measurement.

**Context:** Needs no dataset (students paste their own source text or reuse mtsamples notes) and runs on LLM prompting (grade level goes into the system prompt) verified by the open-source [`textstat`](https://pypi.org/project/textstat/) package (Flesch-Kincaid grade level).

**Goals:** Rewrite text at a target reading level and *prove* it hit the target, instead of trusting the LLM's word for it.

**Deliverables:** A textbox + target-grade-level slider (e.g. grade 5 → grade 12) app with a verification loop: `textstat.flesch_kincaid_grade()` runs on the LLM's output, and if it misses the target by more than ~1 grade level, the app re-prompts with the measured gap ("that came out at grade 9, target was grade 6, simplify further") up to a few retries. Measuring an LLM's output against an objective metric instead of trusting it blindly.

*Showcase: TBD*

**References:**

- [MedReadCtrl: Personalizing Medical Text Generation with Readability-Controlled Instruction Learning](https://arxiv.org/abs/2507.07419): readability-controlled generation applied specifically to medical text, closest paper to this project's target-then-verify loop.
- [Controlling Pre-trained Language Models for Grade-Specific Text Simplification](https://arxiv.org/abs/2305.14993) (EMNLP 2023): the general-domain version of the same problem, generating text that hits a specified grade level on demand.
- [Enhancing Health Literacy: Evaluating the Readability of Patient Handouts Revised by ChatGPT's Large Language Model](https://pubmed.ncbi.nlm.nih.gov/39105460/): measures the same before/after readability metrics (Flesch-Kincaid, Gunning Fog, SMOG) this project's verification loop scores against.

[← Back to all Foundations projects](basic-index.md)

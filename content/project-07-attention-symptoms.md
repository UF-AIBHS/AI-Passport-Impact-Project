# Project 7: Attention to symptom keywords

**ML4LLM anchor:** Ch.6 · proj35 — [Raw and softmax attention scores](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_6/ml4llm_ch6_proj35_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_6/ml4llm_ch6_proj35_helper.ipynb))

**Dataset:** [MedDialog](https://huggingface.co/datasets/lavita/medical-meadow-medical-flashcards) patient messages describing symptoms

**Question:** When the model generates a diagnosis-adjacent token, does attention actually concentrate on the symptom words a clinician would flag as relevant?

**Plan:** Extract raw and softmax attention scores for the token generated after a symptom description, as in proj35. Overlay attention weight on the input tokens and check whether the highest-attention tokens correspond to clinically salient symptom words versus filler text.

[← Back to all projects](projects.md)

# Project 7: Attention to symptom keywords

*Mentors: To be announced*

**Problem:** A model may land on the right diagnosis-adjacent word for the wrong reason, and without inspecting attention there's no way to tell whether it actually looked at the symptom words a clinician would flag.

**Context:** Built on [MedDialog](https://huggingface.co/datasets/lavita/ChatDoctor-HealthCareMagic-100k) patient messages describing symptoms (Hugging Face), anchored to ML4LLM Ch.6 · proj35 — [Raw and softmax attention scores](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_6/ml4llm_ch6_proj35_solution.ipynb) ([helper](https://github.com/saurabhr/ML4LLM_book/blob/main/chapter_6/ml4llm_ch6_proj35_helper.ipynb)).

**Goals:** When the model generates a diagnosis-adjacent token, does attention actually concentrate on the symptom words a clinician would flag as relevant?

**Deliverables:** A notebook that extracts raw and softmax attention scores for the token generated after a symptom description, overlays attention weight on the input tokens, and checks whether the highest-attention tokens correspond to clinically salient symptom words versus filler text.

*Showcase: TBD*

[← Back to all Basic Science projects](basic-science-index.md)

# Project 5: Radiology Report Flagger

*Mentors: To be announced*

**Problem:** A reviewer skimming a long radiology report can miss the one phrase that signals an urgent finding, and nothing in the report itself directs their eye there first.

**Context:** Runs on [Open-I](https://openi.nlm.nih.gov/) public de-identified radiology reports for source text, with critical/urgent spans hand-annotated by students on a small subset (that annotation step is the point of the exercise), fine-tuning a named-entity-recognition (NER) model: spaCy's `en_core_web_sm`, or a small BERT NER head.

**Goals:** Automatically highlight phrases that indicate a critical/urgent finding (e.g. "acute", "suspicious for malignancy", "requires immediate follow-up") so a reviewer's eye goes there first.

**Deliverables:** A lightweight annotation step (mark spans in ~50 reports as critical/not), spaCy's NER component fine-tuned on that labeled set, and a textbox-in / highlighted-output view over pasted radiology reports. The labeled set stays small on purpose. The lesson is how few examples it takes to specialize an NER model for a narrow phrase category, and where it still gets it wrong.

*Showcase: TBD*

**References:**

- [Development and Validation of a Model to Identify Critical Brain Injuries Using Natural Language Processing of Text Computed Tomography Reports](https://pmc.ncbi.nlm.nih.gov/articles/PMC9382443/): an NLP model trained specifically to pull critical/urgent findings out of radiology report text, the same task this project fine-tunes an NER model for.
- [RadLing: Towards Efficient Radiology Report Understanding](https://arxiv.org/abs/2306.02492): open-source NER work extracting clinically relevant spans from unstructured radiology reports, the same span-tagging approach this project applies at a smaller scale.

[← Back to all Clinical Application projects](clinical-application-index.md)

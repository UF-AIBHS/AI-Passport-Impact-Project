# Project 8: Radiology Report Flagger

**Frontend:** Textbox for a pasted radiology report, output with "critical finding" phrases highlighted inline.

**Backend:** Fine-tuned named-entity-recognition (NER) model — spaCy's `en_core_web_sm` fine-tuned on a small labeled span set, or a small BERT NER head.

**Dataset:** [Open-I](https://openi.nlm.nih.gov/) public de-identified radiology reports for source text; labels are hand-annotated by students on a small subset (this is the point of the exercise).

**Training:** **Yes** — NER fine-tune on a student-labeled span dataset.

**Goal:** Automatically highlight phrases that indicate a critical/urgent finding (e.g. "acute", "suspicious for malignancy", "requires immediate follow-up") so a reviewer's eye goes there first.

**Plan:** Prompt your agent to scaffold a lightweight annotation step first (mark spans in ~50 reports as critical/not), fine-tune spaCy's NER component on that labeled set, then build the highlight view. Keep the labeled set small on purpose — the lesson is how few examples it takes to specialize an NER model for a narrow phrase category, and where it still gets it wrong.

[← Back to all Level 1 projects](level-1-index.md)

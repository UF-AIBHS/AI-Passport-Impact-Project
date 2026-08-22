# Datasets & APIs

Every dataset, model checkpoint, and public API named across the twenty projects, gathered in one place. All are open access, no data-use agreement or credentialing required, so nothing blocks a cohort on paperwork.

## Overview Table

| Dataset / API | Used in | Access | License / Notes |
|---|---|---|---|
| [mtsamples](https://www.mtsamples.com/) | Foundations 1, 2 · Clinical App 2 · Basic Science 1, 2, 5 | Scrape/download from the site | Free medical transcription sample reports; no formal license file, widely used as a de-identified teaching corpus — treat as coursework-only |
| [CMS ICD-10-CM code descriptions](https://www.cms.gov/medicare/coding-billing/icd-10-codes) | Basic Science 1 | Free download from CMS | US federal government public-use file — public domain domestically (17 U.S.C. §105) |
| [dair-ai/emotion](https://huggingface.co/datasets/dair-ai/emotion) | Foundations 3 | `datasets.load_dataset` (Hugging Face) | HF card restricts it to "educational and research purposes only" — fine for this coursework project, not for redistributing the fine-tuned classifier beyond it; general-domain (not health-specific) emotion labels |
| [`bhadresh-savani/distilbert-base-uncased-emotion`](https://huggingface.co/bhadresh-savani/distilbert-base-uncased-emotion) | Foundations 3 | Hugging Face model hub | Pre-trained checkpoint on `dair-ai/emotion`; base for further fine-tuning |
| [Symptom2Disease](https://huggingface.co/datasets/gretelai/symptom_to_diagnosis) | Clinical App 3 | `datasets.load_dataset` (Hugging Face) | Synthetic/Gretel-generated symptom-to-diagnosis pairs, 22 categories; open on Hugging Face |
| [openFDA drug label API](https://open.fda.gov/apis/drug/label/) | Clinical App 4 | REST API, free, no key required | US federal government data; official `drug_interactions` label sections per drug |
| [DDInter 2.0](https://ddinter2.scbdd.com/) | Clinical App 4 (cross-check) | Free download | Peer-reviewed ([*Nucleic Acids Research*](https://academic.oup.com/nar/article/53/D1/D1356/7740584)), 300,000+ drug-drug interaction records with mechanism/management notes |
| [Open-I](https://openi.nlm.nih.gov/) | Clinical App 5 · Basic Science 8 | Free download/API (NLM, Indiana University) | De-identified chest X-ray radiology reports; public, no credentialing |
| [ClinicalTrials.gov API](https://clinicaltrials.gov/data-api/api) | Clinical App 6 | REST API, free, no key required | Official NIH/NLM registry of currently-recruiting trials, queried live |
| [MedQuAD](https://github.com/abachaa/MedQuAD) | Clinical App 7 | Clone/download from GitHub | Public medical Q&A pairs assembled from NIH sources for research use |
| [MedDialog (English)](https://huggingface.co/datasets/UCSD26/medical_dialog) | Basic Science 3 | `datasets.load_dataset` (Hugging Face) | ~260k real patient–doctor consultations, each with a genuine multi-turn `dialogue_turns` exchange; license unspecified on the HF card, treat as coursework-only |
| [HealthCareMagic-100k](https://huggingface.co/datasets/lavita/ChatDoctor-HealthCareMagic-100k) | Basic Science 7 | `datasets.load_dataset` (Hugging Face) | 100k+ real single-turn patient-question/doctor-answer pairs; open on Hugging Face |
| [DailyMed](https://dailymed.nlm.nih.gov/) | Basic Science 4 | Free download/API (NLM) | Official FDA drug label text (warnings, indications); public domain federal data |
| [PubMedQA](https://pubmedqa.github.io/) | Basic Science 6 | Free download | Yes/no/maybe biomedical QA over PubMed abstracts; open research dataset — contexts need curating down to end on a diagnosis term for this project's method, not usable as-is |
| [MedlinePlus](https://medlineplus.gov/) | Basic Science 9 | Free download/scrape (NLM) | Consumer-facing health articles, paired here against matched PubMed abstracts; public domain federal data |
| [NCBI E-utilities API](https://www.ncbi.nlm.nih.gov/books/NBK25501/) | Basic Science 9 | REST API (`esearch`/`efetch`), free, no key required for light use | Source for the matched PubMed abstracts paired against MedlinePlus articles above |
| [BioASQ](http://bioasq.org/) | Basic Science 10 | Free registration + download | Yes/no biomedical QA pairs from a long-running peer-reviewed challenge |

## A Note on Licensing

- This is not legal advice. `mtsamples` in particular has no formal license file — treat it as a teaching corpus, not something to redistribute or publish results from outside coursework.
- "Public domain" for CMS/NLM/FDA data (ICD-10-CM, DailyMed, MedlinePlus, openFDA) means the data itself carries no US copyright restriction; it doesn't waive the agency's own citation or data-quality guidance.
- Hugging Face-hosted datasets (`dair-ai/emotion`, Symptom2Disease, MedDialog) each carry their own dataset-card terms — check the card before reusing outside this project.
- APIs with no key requirement (openFDA, ClinicalTrials.gov) still have documented rate limits; don't hammer them in a tight loop.

## Related

- The [ML4LLM book](https://github.com/saurabhr/ML4LLM_book) pairs each Basic Science project with a reference notebook and its own dataset-loading code.
- [UF AIBHS Faculty Hub — Datasets](https://uf-aibhs.github.io/datasets/): a separate collection of classic tabular ML health datasets (Heart Disease, Diabetes, MIMIC-IV, etc.) used in the AIBHS coursework, not this project.

[← Back to home](index.md)

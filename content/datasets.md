# Datasets & APIs

Every dataset, model checkpoint, and public API named across the twenty projects, gathered in one place. All are free to access with no data-use agreement or credentialing required, so nothing blocks a cohort on paperwork — but "free to access" isn't the same as "free to reuse," so each row states its actual license, verified against the source rather than assumed.

## Overview Table

| Dataset / API | Used in | Access | License | Notes |
|---|---|---|---|---|
| [mtsamples](https://www.mtsamples.com/) | Foundations 1, 2 · Clinical App 2 · Basic Science 1, 2, 5 | Scrape/download from the site | None stated | Free medical transcription sample reports, widely used as a de-identified teaching corpus — treat as coursework-only |
| [CMS ICD-10-CM code descriptions](https://www.cms.gov/medicare/coding-billing/icd-10-codes) | Basic Science 1 | Free download from CMS | Public domain (17 U.S.C. §105) | US federal government public-use file |
| [dair-ai/emotion](https://huggingface.co/datasets/dair-ai/emotion) | Foundations 3 | `datasets.load_dataset` (Hugging Face) | Custom — HF card: "should be used for educational and research purposes only" | General-domain (not health-specific) emotion labels; fine for this coursework project, not for redistributing the fine-tuned classifier beyond it |
| [bhadresh-savani/distilbert-base-uncased-emotion](https://huggingface.co/bhadresh-savani/distilbert-base-uncased-emotion) | Foundations 3 | Hugging Face model hub | Apache-2.0 | Pre-trained checkpoint on `dair-ai/emotion`; base for further fine-tuning |
| [Symptom2Disease](https://huggingface.co/datasets/gretelai/symptom_to_diagnosis) | Clinical App 3 · Basic Science 7 | `datasets.load_dataset` (Hugging Face) | Apache-2.0 | Synthetic/Gretel-generated symptom-to-diagnosis pairs, 22 categories |
| [openFDA drug label API](https://open.fda.gov/apis/drug/label/) | Clinical App 4 | REST API, free, no key required | Public domain / CC0-1.0 (openFDA's own terms) | Official `drug_interactions` label sections per drug; 240 requests/min, 1,000/day without a key |
| [DDInter 2.0](https://ddinter2.scbdd.com/) | Clinical App 4 (cross-check) | Free download | Not stated | Peer-reviewed ([*Nucleic Acids Research*](https://academic.oup.com/nar/article/53/D1/D1356/7740584)), 300,000+ drug-drug interaction records with mechanism/management notes |
| [Open-I](https://openi.nlm.nih.gov/) | Clinical App 5 · Basic Science 8 | Free download/API (NLM, Indiana University) | Varies per item — Open-I's own FAQ: "Copyright remains with the authors or the journal" | De-identified chest X-ray reports are widely used in research, but NLM doesn't blanket-license Open-I content for reuse — check the per-item license link before redistributing |
| [ClinicalTrials.gov API](https://clinicaltrials.gov/data-api/api) | Clinical App 6 | REST API, free, no key required | US Government data, but not simple public domain — its Terms claim international copyright outside the US | Free to use, but redistribution requires attributing "ClinicalTrials.gov" and stating any modifications, per its own Terms and Conditions |
| [MedQuAD](https://github.com/abachaa/MedQuAD) | Clinical App 7 | Clone/download from GitHub | No LICENSE file (GitHub: unassessed/"Other") | Public medical Q&A pairs assembled from NIH sources for research use |
| [MTS-Dialog](https://github.com/abachaa/MTS-Dialog) | Basic Science 3 | Clone/download from GitHub | CC-BY-4.0 | ~1,200 expert-authored patient–doctor transcripts, each a genuine multi-turn `Doctor:`/`Patient:` exchange; attribution required on redistribution |
| [DailyMed](https://dailymed.nlm.nih.gov/) | Basic Science 4 | Free download/API (NLM) | Public domain (US government work) | Official FDA drug label text (warnings, indications) |
| [PubMedQA](https://pubmedqa.github.io/) | Basic Science 6 | Free download | MIT | Yes/no/maybe biomedical QA over PubMed abstracts; contexts need curating down to end on a diagnosis term for this project's method, not usable as-is |
| [MedlinePlus](https://medlineplus.gov/) | Basic Science 9 | Free download/scrape (NLM) | Public domain (US government work) | Consumer-facing health articles, paired here against matched PubMed abstracts |
| [NCBI E-utilities API](https://www.ncbi.nlm.nih.gov/books/NBK25501/) | Basic Science 9 | REST API (`esearch`/`efetch`), free, no key required for light use | Public domain data (NIH); the API itself is governed by NCBI's usage/rate-limit policy, not a separate data license | Source for the matched PubMed abstracts paired against MedlinePlus above |
| [BioASQ](http://bioasq.org/) | Basic Science 10 | Free registration + download | Not stated | Yes/no biomedical QA pairs from a long-running peer-reviewed challenge |

## A Note on Licensing

- This is not legal advice — it's what each source's own terms/card/FAQ actually says, checked directly rather than assumed. "Not stated" means no license was found on the source, not that reuse is unrestricted; treat those (mtsamples, DDInter 2.0, MedQuAD, BioASQ) as coursework-only, same caution.
- "Public domain" for CMS/NLM/FDA works (ICD-10-CM, DailyMed, MedlinePlus, openFDA) means the data carries no US copyright restriction domestically; it doesn't waive the agency's own citation or data-quality guidance. **ClinicalTrials.gov and Open-I are the two NLM-family exceptions to this** — both carry their own stricter terms (see table), not the blanket NLM public-domain policy.
- Hugging Face-hosted datasets (`dair-ai/emotion`, Symptom2Disease) each carry their own dataset-card terms — check the card before reusing outside this project.
- MTS-Dialog is CC-BY-4.0 — reuse and adaptation are fine, but any redistribution (including a published notebook with the data embedded) needs an attribution notice per the license.
- APIs with no key requirement (openFDA, ClinicalTrials.gov) still have documented rate limits; don't hammer them in a tight loop.

## Related

- The [ML4LLM book](https://github.com/saurabhr/ML4LLM_book) pairs each Basic Science project with a reference notebook and its own dataset-loading code.
- [More Datasets](more-datasets.md): a separate collection of classic, tabular ML health datasets (Heart Disease, Diabetes, MIMIC-IV, etc.) — not used by any project on this site, but useful for practicing core ML concepts before working with the messier text/clinical data above.

[← Back to home](index.md)

# Basic Science

Ten applied mini-projects, each adapting a mechanistic-interpretability technique from [Mike X Cohen's *50 ML projects to understand LLMs*](https://github.com/saurabhr/ML4LLM_book) to open, PHI-free health-science text. No fine-tuning, no APIs — every project treats an LLM's tokens, embeddings, attention, and hidden states as data to analyze and visualize.

Paired with the [ML4LLM book](https://github.com/saurabhr/ML4LLM_book), for the [UF AI Passport for Health Science](https://prismap.medicine.ufl.edu/research/ai-passport/).

| # | Project | ML4LLM Reference | Dataset | Purpose |
|---|---|---|---|---|
| 1 | [Tokenizer stress-test on medical jargon](basic-science-project-01-tokenizer-jargon.md) | Ch.2 · proj1 | mtsamples, CMS ICD-10-CM | How many extra tokens does a general-purpose tokenizer burn on drug names, dosages, and ICD codes vs. plain English? |
| 2 | [Verbosity drift across note types](basic-science-project-02-verbosity-drift.md) | Ch.2 · proj2 | mtsamples | Do discharge summaries, radiology reports, and visit notes differ in token-per-word ratio? |
| 3 | [Topic drift in patient–doctor chat](basic-science-project-03-topic-drift-chat.md) | Ch.3 · proj9 | MedDialog / HealthCareMagic-100k | Where does turn-to-turn embedding similarity drop, marking the symptom-gathering → diagnosis pivot? |
| 4 | [Drug-label embedding clusters](basic-science-project-04-drug-label-clusters.md) | Ch.3 · proj8 | DailyMed | Do black-box-warning drugs cluster in embedding space independent of pharmacological class? |
| 5 | [Perplexity of clinical language](basic-science-project-05-perplexity-clinical.md) | Ch.4 · proj20 | mtsamples | Is clinical jargon systematically higher-surprisal than plain English for a general-purpose LLM? |
| 6 | [Which layer "knows" the diagnosis](basic-science-project-06-layer-diagnosis.md) | Ch.5 · proj27 | PubMedQA | At what layer depth does noise injection collapse diagnosis-term prediction? |
| 7 | [Attention to symptom keywords](basic-science-project-07-attention-symptoms.md) | Ch.6 · proj35 | MedDialog | Does generation-time attention concentrate on clinically salient symptom words? |
| 8 | [Structural position of radiology findings](basic-science-project-08-radiology-position.md) | Ch.7 · proj45 | Open-I | Do "impression"/finding statements cluster at a predictable structural position? |
| 9 | [Health-literacy gap as embedding distance](basic-science-project-09-health-literacy-gap.md) | Ch.3 · proj13 | MedlinePlus vs. matched PubMed abstracts | Can the plain-language vs. clinical-language gap be measured as embedding distance? |
| 10 | [Capstone: full mechanism audit](basic-science-project-10-capstone.md) | Combines 1, 3, 6, 7 | BioASQ | Can tokenization, embedding, attention, and layer robustness together explain one model answer? |

All datasets are openly downloadable with no data-use agreement, so nothing blocks a 2-week cohort on credentialing paperwork.

[← Back to Clinical Application projects](clinical-application-index.md) · [Back to home →](index.md)

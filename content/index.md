# UF AI Passport Project Levels

Two tracks of mini-projects for the [UF AI Passport for Health Science](https://prismap.medicine.ufl.edu/research/ai-passport/), paired with the [ML4LLM book](https://github.com/saurabhr/ML4LLM_book). Pick a level based on what you want to build vs. what you want to understand — both are open-source end to end, no paid API required.

## The two levels

| | [Level 1: Prompting](level-1-index.md) | [Level 2: Model Internals](level-2-index.md) |
|---|---|---|
| **What you build** | Full applications — a frontend you build by prompting an AI coding agent, a backend on open-source models | Analyses — notebooks that inspect a model's tokens, embeddings, attention, and hidden states |
| **Model role** | A tool you call, prompt, and sometimes fine-tune | The object of study itself |
| **Training** | Light — a few projects fine-tune a small open classifier/NER model or a LoRA adapter | None — every project treats the model as fixed and probes it |
| **Best for** | Students who want a working app end to end | Students who want to understand *why* a model answers the way it does |
| **Start here** | [Project 1: Medical Term Definer](level-1-project-01-medical-term-definer.md) | [Project 1: Tokenizer stress-test](level-2-project-01-tokenizer-jargon.md) |

Both levels are 10 projects, ascending in complexity, ending in a capstone that combines everything before it.

## Before you start

New to the tooling? Read [Software Engineering Practices for Data Science](software-engineering-practices.md) first — virtual environments, keeping secrets out of git, version control, and a standard project layout. If you'll be collaborating with others on a project, also read [Using GitHub to Collaborate](github-collaboration.md) — branches, pull requests, issues, and code review.

## Get an AI coding agent

Level 1 projects assume you're building with one of these:

- [Claude Code](download-claude-code.md) — terminal agent from Anthropic
- [Codex](download-codex.md) — terminal agent from OpenAI
- [VS Code agent mode](download-vscode.md) — built into the editor (Copilot Chat), or run Claude Code/Codex as an extension inside it

## Related

- [UF AIBHS Faculty Hub](https://uf-aibhs.github.io/) — the AIBHS program's main site (Canvas Resources, Faculty Handbook, HiPerGator, datasets, and more).

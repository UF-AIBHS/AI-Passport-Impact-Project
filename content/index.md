# AI Passport Impact Project

Twenty mini-projects for the [UF AI Passport for Health Science](https://aipassport.org/).

![Three project tracks: Foundations, Clinical Application, Basic Science](images/three-tracks.svg)

## Choose a track

| | [Foundations](basic-index.md) | [Clinical Application](clinical-application-index.md) | [Basic Science](basic-science-index.md) |
|---|---|---|---|
| **What you build** | General-purpose prompting & fine-tuning skills on health-science text | Full clinical-workflow apps: a frontend you build by prompting an AI coding agent, plus a backend on open-source models | Analyses: notebooks that inspect a model's tokens, embeddings, attention, and hidden states |
| **Model role** | A tool you call and prompt | A tool you call, prompt, and sometimes fine-tune | The object of study itself |
| **Training** | Light (one project fine-tunes a small classifier) | Light (a few projects fine-tune a small open classifier/NER model or a LoRA adapter) | None. Every project treats the model as fixed and probes it. |
| **Best for** | Getting comfortable with an AI coding agent before tackling a clinical workflow | Students who want a working clinical app end to end | Students who want to understand *why* a model answers the way it does |
| **Start here** | [Project 1: Medical Term Definer](basic-project-01-medical-term-definer.md) | [Project 1: Appointment Prep Chatbot](clinical-application-project-01-appointment-prep-chatbot.md) | [Project 1: Tokenizer stress-test](basic-science-project-01-tokenizer-jargon.md) |

Not sure which one? Start with Foundations. Move to Clinical Application if you want to build, or Basic Science if you want to understand. Each track is a run of projects ascending in complexity, ending in a capstone that combines everything before it.

## Before you start

**Tooling**

- Looking for a specific dataset or API a project names? See [Datasets & APIs](datasets.md).
- New to the tooling? Start by picking an agent: [Claude Code](download-claude-code.md), [Codex](download-codex.md), or [VS Code agent mode](download-vscode.md).
- Building a Foundations or Clinical Application frontend? See [Streamlit & Gradio: A Beginner's Guide](streamlit-vs-gradio.md) to pick a UI framework.
- For hands-on environment setup, see [Virtual Environments & Packages with uv](uv-environments.md).
- Working in a notebook? [marimo AI Agents](marimo-agents.md) connects Claude Code, Codex, Gemini, or OpenCode directly to the notebook editor.

**Practices**

- Collaborating with others on a project? Read [Using GitHub to Collaborate](github-collaboration.md) for branches, pull requests, issues, and code review.
- Then read [Software Engineering Practices for Data Science](software-engineering-practices.md) for keeping secrets out of git and a standard project layout.
- And [Better Code, Better Science](better-code-better-science.md) for the deeper version of the same argument, including AI-assisted coding.

## Get an AI coding agent

All three tracks (Foundations, Clinical Application, and Basic Science) are done by prompting an AI coding agent, not by hand-writing every line yourself. Pick one:

- [Claude Code](download-claude-code.md): terminal agent from Anthropic
- [Codex](download-codex.md): terminal agent from OpenAI
- [VS Code agent mode](download-vscode.md): built into the editor (Copilot Chat), or run Claude Code/Codex as an extension inside it

### How to use it per track

| Track | What you paste as your first prompt | What the agent scaffolds |
|---|---|---|
| [Foundations](basic-index.md) | The project's brief (Problem/Context/Goals/Deliverables) | A single small app: one page, one model call |
| [Clinical Application](clinical-application-index.md) | The project's brief, plus which dataset/API it names | A full app: frontend (Streamlit/Gradio) + backend, wired to the named open dataset or API |
| [Basic Science](basic-science-index.md) | The project's brief (Problem/Context/Goals/Deliverables) | A notebook that runs the analysis end to end and produces the plot the project asks for |

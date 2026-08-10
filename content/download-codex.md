# Get Codex

![OpenAI Codex](images/codex-hero.png)

[Codex](https://developers.openai.com/codex/) is OpenAI's agentic coding tool: a terminal CLI (and IDE/cloud variants) that plans, edits multi-file changes, and runs commands in a sandbox on your behalf. Source: [github.com/openai/codex](https://github.com/openai/codex).

## Install

```bash
npm install -g @openai/codex
# or: brew install codex
```

Then, from inside a project folder:

```bash
codex
```

Sign in with your ChatGPT account (Plus/Pro/Team) or an API key. Other ways in: the IDE extension for VS Code/Cursor, or Codex Cloud for background/async tasks. Full docs: [developers.openai.com/codex](https://developers.openai.com/codex/).

## Using its agent on a Level 1/Level 2 project

1. `cd` into your project folder and run `codex`.
2. Paste the project brief from [Level 1](level-1-index.md) or [Level 2](level-2-index.md) as your first prompt.
3. Codex proposes and runs a plan inside its sandbox, asking approval before network access or destructive commands — review the diff before accepting.
4. Ask it to explain any generated code you don't recognize before you build on top of it.

[← Back to home](index.md)

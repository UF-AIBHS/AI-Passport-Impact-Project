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

## IDE extension

Install the [Codex extension](https://marketplace.visualstudio.com/items?itemName=openai.chatgpt) from the VS Code Marketplace (also works in Cursor and Windsurf; Xcode and JetBrains have their own native integrations) if you'd rather stay in an editor than the terminal:

- Sign in with your OpenAI account, then open the Codex sidebar.
- It pulls your open files and selection into the prompt automatically, so you don't have to restate what you're looking at.
- Edits show as an inline, focused diff you review in place, then follow up in the same chat.
- For a task that's going to take a while, hand it off to **Codex web** (cloud) from the sidebar: it keeps running, and the chat history is there when you come back.

Full docs: [learn.chatgpt.com/docs/codex/ide](https://learn.chatgpt.com/docs/codex/ide).

## Using its agent on a project

1. `cd` into your project folder and run `codex`.
2. Paste the project brief from [Foundations](basic-index.md), [Clinical Application](clinical-application-index.md), or [Basic Science](basic-science-index.md) as your first prompt.
3. Codex proposes and runs a plan inside its sandbox, asking approval before network access or destructive commands. Review the diff before accepting.
4. Ask it to explain any generated code you don't recognize before you build on top of it.

[← Back to home](index.md)

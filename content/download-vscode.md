# Get VS Code (+ agent mode)

![Visual Studio Code](images/vscode-hero.png)

[Visual Studio Code](https://code.visualstudio.com/) is the editor most of these projects assume. Its built-in **Copilot Chat agent mode** can plan multi-step changes, edit files, and run terminal commands directly in the editor — or you can drive the same project with the Claude Code / Codex extensions instead.

## Install

Download the macOS build (Intel/Apple silicon/Universal `.dmg`) from [code.visualstudio.com/download](https://code.visualstudio.com/download), or:

```bash
brew install --cask visual-studio-code
```

## Using its agent

1. Open your project folder in VS Code.
2. Open the Chat view (`⌘⇧I` on macOS) and switch the mode dropdown to **Agent**.
3. Describe the task — for these projects, paste the brief from [Basic](basic-index.md), [Clinical Application](clinical-application-index.md), or [Basic Science](basic-science-index.md). Agent mode will propose file edits and terminal commands; review each before applying.
4. Prefer a different agent? Install the [Claude Code](download-claude-code.md) or [Codex](download-codex.md) extension from the Marketplace and it runs inside the same editor.

## Copilot Chat features worth knowing

- **Inline chat** (`Ctrl+I`) edits code right where your cursor is, without leaving the file — faster than the sidebar for a one-line fix.
- **`#`-mentions** pull specific files, folders, or symbols into context; `#codebase` searches the whole project instead of just what's open.
- **`!` in chat** runs a terminal command directly from the conversation.
- **Diff checkpoints**: every agent edit is reviewable and revertible, so you can roll back a step without losing the rest of the session.
- **Multiple parallel sessions** keep separate conversation histories if you're working more than one task at once.

Full docs: [code.visualstudio.com/docs/copilot/chat](https://code.visualstudio.com/docs/copilot/chat/chat-agent-mode).

[← Back to home](index.md)

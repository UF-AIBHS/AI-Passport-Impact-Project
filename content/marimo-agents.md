# marimo AI Agents

marimo can connect external coding agents — Claude Code, Codex, Gemini, OpenCode — directly to its
notebook editor via the [Agent Client Protocol](https://agentclientprotocol.com/) (ACP), so they
can read and write your notebook from a chat panel instead of a separate terminal window. Full
docs: [docs.marimo.io/guides/editor_features/agents](https://docs.marimo.io/guides/editor_features/agents/).
This is an experimental marimo feature — the API is still evolving.

## Supported agents

| Agent | Install | Connect |
|---|---|---|
| **Claude Code** | `npm install -g @anthropic-ai/claude-code`, then `claude` → `/login` | `npx stdio-to-ws "npx @zed-industries/claude-code-acp" --port 3017` |
| **Codex** | `npm install -g @openai/codex`, then sign in (or set an API key) | `npx stdio-to-ws "npx codex-acp" --port 3021` |
| **Gemini** | Set up per the [Gemini CLI docs](https://github.com/google-gemini/gemini-cli) | `npx stdio-to-ws "npx @google/gemini-cli --experimental-acp" --port 3019` |
| **OpenCode** | `npm install -g opencode-ai@latest` (supports local Ollama models) | `npx stdio-to-ws "npx opencode-acp" --port 3023` |

## Setup

1. Install and authenticate your agent of choice (see table above).
2. Run its connect command in a terminal — leave it running.
3. In marimo, enable the agents feature flag under **Settings → Lab**.
4. Click the agents icon in the notebook editor to open the chat panel, then pick your agent from
   the dropdown.
5. Chat with it like any other coding agent — it can read and edit cells in the open notebook.

Optional: to have the notebook re-run automatically after an agent edit, add this to
`pyproject.toml`:

```toml
[tool.marimo]
watcher_on_save = "autorun"
```

[← Back to home](index.md)

# Get Claude Code

![Claude Code](images/claude-code-hero.jpg)

[Claude Code](https://claude.com/product/claude-code) is Anthropic's agentic coding tool. It runs in your terminal, reads and edits files in your project, runs commands, and iterates — you describe what you want in plain language and it does the work, asking before anything risky.

## Install

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

Then, from inside a project folder:

```bash
claude
```

Other ways in, if you'd rather stay in an editor:

- The [VS Code extension](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code) (Marketplace)
- JetBrains plugins
- The web at [claude.ai/code](https://claude.ai/code)

Full docs: [code.claude.com/docs](https://code.claude.com/docs/en/overview).

## Desktop app

The [Claude Desktop app](https://claude.com/download) (macOS, Windows, Linux beta) wraps the same agent in a GUI, under its **Code** tab. Install, sign in, click **Code**, and open a session against a project folder. Compared to the terminal:

- **Panes, not just text**: chat, diff viewer, integrated terminal, and file editor arranged side by side, plus a browser pane where Claude previews and clicks through your running app to verify its own changes.
- **Permission modes** in a dropdown instead of flags: Manual (asks before every edit), Accept edits, Plan (read-only, proposes first), Auto, and Bypass — same underlying settings as the CLI's `permissions.defaultMode`.
- **Parallel sessions**: each new session gets its own [git worktree](https://code.claude.com/docs/en/worktrees), so you can run several tasks on the same repo at once without them colliding.
- **Diff review**: comment on specific lines before Claude proceeds, or click **Review code** to have Claude self-review its own diff for bugs before you commit.

Full reference: [code.claude.com/docs/en/desktop](https://code.claude.com/docs/en/desktop).

## Using its agent on a project

1. `cd` into your project folder and run `claude`.
2. Paste the project brief from [Foundations](basic-index.md), [Clinical Application](clinical-application-index.md), or [Basic Science](basic-science-index.md) and ask it to scaffold the app/notebook.
3. Let it propose a plan before it touches files — Claude Code asks for confirmation on anything destructive (installs, deletes, pushes).
4. Iterate: point it at failing tests or unexpected output and ask it to fix the root cause, not just silence the symptom.

[← Back to home](index.md)

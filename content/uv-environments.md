# Virtual Environments & Packages with uv

[uv](https://docs.astral.sh/uv/) is a fast, single-binary replacement for `python -m venv` + `pip`. It creates the environment and installs packages into it, and it's what the project scaffolds in this book assume if you don't already have a preferred workflow.

**Source:** [docs.astral.sh/uv/pip/environments](https://docs.astral.sh/uv/pip/environments/)

## Install uv

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

(Windows, Homebrew, and other options: [astral.sh/uv#installation](https://docs.astral.sh/uv/getting-started/installation/).)

## Create an environment

```bash
uv venv
```

Creates `.venv` in the current directory. Options:

```bash
uv venv my-name          # custom location instead of .venv
uv venv --python 3.11    # pin a Python version (uv downloads it if missing)
```

## Install packages into it

```bash
uv pip install ruff
```

As long as the environment is named `.venv` in the current directory (or a parent), uv finds it automatically: no activation required for `uv pip` commands.

## Activate it for everything else

Running a script directly (`python foo.py`) or any non-uv tool still needs the environment activated:

```bash
source .venv/bin/activate      # macOS/Linux
.venv\Scripts\activate         # Windows (PowerShell)
```

Deactivate with:

```bash
deactivate
```

## How uv finds the right environment

In order:

1. `VIRTUAL_ENV`: an already-activated environment
2. `CONDA_PREFIX`: an active Conda environment
3. `.venv` in the current or a parent directory

If none exist, uv tells you to run `uv venv` rather than silently installing into system Python. Unlike plain `pip`, uv refuses to touch a non-virtual environment unless you pass `--system`.

[← Back to home](index.md)

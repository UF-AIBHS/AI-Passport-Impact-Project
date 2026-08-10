# UF AI Passport Project Levels

Two tracks of mini-projects for the [UF AI Passport for Health Science](https://prismap.medicine.ufl.edu/research/ai-passport/): Level 1 (build apps by prompting an AI coding agent) and Level 2 (analyze model internals on medical text, taken from [ai.passport.projects](https://github.com/UF-AIBHS/ai.passport.projects)).

Built with [marimo-book](https://marimobook.org/).

## Local development

```bash
python3.13 -m venv .venv  # marimo-book requires Python >=3.11
.venv/bin/pip install marimo-book

# Live-reload dev server
.venv/bin/marimo-book serve

# One-shot build (emits ./_site/)
.venv/bin/marimo-book build

# Validate book.yml + content without building
.venv/bin/marimo-book check

# book.yml has no custom-CSS hook, so the Palatino font and link color are
# patched onto the built site directly — run after every build, before
# previewing.
./scripts/fix-font.sh
./scripts/fix-links.sh
```

## Layout

- `book.yml` — table of contents (two `section` groups, Level 1 and Level 2, plus Setup & Resources), theme, branding
- `content/` — flat directory of page Markdown (marimo-book flattens `content/` into the built site's root, so cross-page links have no `../`); `level-1-*` and `level-2-*` prefixes group each track
- `images/` — illustration images at the book root (marimo-book's recognized static-asset dir), official product images from claude.com, github.com/openai/codex, code.visualstudio.com
- `scripts/` — post-build font and link-color patches (see above)

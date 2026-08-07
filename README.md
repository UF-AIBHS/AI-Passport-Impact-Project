# UF AI Passport Projects Resources

Mini-projects and open datasets for the [UF AI Passport for Health Science](https://prismap.medicine.ufl.edu/research/ai-passport/), paired with the [ML4LLM book](https://github.com/saurabhr/ML4LLM_book).

Built with [marimo-book](https://marimobook.org/).

## Local development

```bash
python3 -m venv .venv
.venv/bin/pip install marimo-book

# Live-reload dev server
.venv/bin/marimo-book serve

# One-shot build (emits ./_site/)
.venv/bin/marimo-book build

# Validate book.yml + content without building
.venv/bin/marimo-book check

# book.yml has no custom-CSS hook, so the Palatino font is patched onto
# the built site directly — run after every build, before previewing.
./scripts/fix-font.sh
```

## Layout

- `book.yml` — table of contents, theme, branding
- `content/` — page Markdown, one file per nav entry (see `book.yml`'s `toc:`)
- `scripts/` — post-build font patch (see above)
- `.github/workflows/build-site.yml` — builds and publishes to GitHub Pages on every push to `main`

Deployed automatically via GitHub Actions on push to `main`.

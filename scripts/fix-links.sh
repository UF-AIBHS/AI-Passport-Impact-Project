#!/usr/bin/env bash
# marimo-book's own stylesheet sets .md-typeset link color to
# --md-default-fg-color (same as body text) at rest, only switching to the
# theme's primary/blue color on hover/focus/active — so links are
# indistinguishable from plain text until you mouse over them. Same issue
# already patched in the UF-AIBHS.github.io sibling site's
# fix-theme-css.sh; this is the same fix for this book. Run after
# `marimo-book build` (or `serve`), before deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/stylesheets/extra.css <<'EOF'

/* Links: use the theme link color at rest (not just on hover), plus an
 * underline, so links are recognizable without hovering. */
.md-typeset a:not(.md-button):not(.headerlink) {
  color: var(--md-typeset-a-color);
  text-decoration: underline;
  text-underline-offset: 0.15em;
}
EOF

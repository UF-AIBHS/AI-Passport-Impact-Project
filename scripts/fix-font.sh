#!/usr/bin/env bash
# marimo-book's book.yml has no hook for custom CSS (only theme.palette), so
# this patches the built site directly. Run after `marimo-book build`, before
# deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

cat >> _site/stylesheets/extra.css <<'EOF'

/* Site font: Palatino Linotype, with a serif fallback stack for systems
 * that don't have it installed (it's not on Google Fonts, so there's no
 * webfont hook to fetch it from — set the family directly instead). */
body, .md-typeset, .md-header, .md-nav, .md-tabs {
  font-family: "Palatino Linotype", Palatino, "Book Antiqua", Georgia, serif !important;
}
EOF

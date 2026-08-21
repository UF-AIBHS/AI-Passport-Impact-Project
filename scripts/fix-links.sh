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

/* Dark mode: book.yml's palette injection hardcodes the raw AI Passport
 * navy (#1A2655) as --md-typeset-a-color / --md-primary-fg-color for the
 * slate scheme too, so every link (prose links above, nav links, the
 * active nav/TOC entry) reads as near-black-on-black — same issue already
 * fixed in the UF-AIBHS.github.io sibling site's fix-theme-css.sh. Reuse
 * that site's #7086ff: same hue as this navy, just lightened for contrast
 * against the near-black background, so the two sibling books' dark-mode
 * link color matches. */
[data-md-color-scheme="slate"] .md-nav__link--active,
[data-md-color-scheme="slate"] .md-nav__link--active .md-nav__icon {
  color: #7086ff !important;
}
[data-md-color-scheme="slate"] a.md-nav__link:not(.md-nav__link--active) {
  color: #7086ff;
}
[data-md-color-scheme="slate"] .md-typeset a:not(.md-button):not(.headerlink),
[data-md-color-scheme="slate"] .md-typeset a:not(.md-button):not(.headerlink):hover,
[data-md-color-scheme="slate"] .md-typeset a:not(.md-button):not(.headerlink):focus,
[data-md-color-scheme="slate"] .md-typeset a:not(.md-button):not(.headerlink):active {
  color: #7086ff;
}

/* Same contrast problem again, this time on titles: the page <h1> and the
 * header bar's site title both use --md-primary-fg-color, hardcoded to
 * the raw #1A2655 navy in slate too. h2/h3 already use
 * --md-default-fg-color (no fix needed there). Same #7086ff used for
 * links above. */
[data-md-color-scheme="slate"] .md-typeset h1,
[data-md-color-scheme="slate"] .md-header__topic .md-ellipsis,
[data-md-color-scheme="slate"] .md-header__topic > .md-header__button + .md-ellipsis {
  color: #7086ff;
}
EOF

#!/usr/bin/env bash
# marimo-book always emits Material's palette as [light(media: prefers-color-
# scheme:light), slate(media: prefers-color-scheme:dark)] (hardcoded in
# marimo-book itself — no book.yml hook to change it, same limitation as
# fix-font.sh). That means a visitor with a dark OS preference gets a dark
# site on first visit. This forces light as the default: an inline script in
# every page's <head> pre-seeds Material's localStorage key with the light
# scheme, but only if nothing is stored yet — so it never overrides a
# visitor's own toggle choice, light or dark, on later visits.
# Run after `marimo-book build`, before deploying/previewing.
set -euo pipefail
cd "$(dirname "$0")/.."

SNIPPET='<script>try{var k="/ai.passport.projects/.__palette";if(!localStorage.getItem(k)){localStorage.setItem(k,JSON.stringify({index:0,color:{media:"(prefers-color-scheme: light)",scheme:"default",primary:"custom",accent:"custom"}}))}}catch(e){}</script>'

find _site -name '*.html' -print0 | while IFS= read -r -d '' f; do
  perl -0pi -e "s{<head>}{<head>\n$SNIPPET}" "$f"
done

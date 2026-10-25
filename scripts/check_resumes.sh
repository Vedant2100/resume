#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
for name in research engineering; do
  echo "Checking ${name}.tex"
  latexmk -pdf -interaction=nonstopmode -halt-on-error "$name.tex" >/dev/null
  count="$(pdfinfo "${name}.pdf" | awk '/^Pages:/ {print $2}')"
  if [[ "$count" != "1" ]]; then echo "ERROR: $name produced $count pages" >&2; exit 1; fi
  text="$(pdftotext -layout "${name}.pdf" -)"
  for required in 'Vedant Borkute' 'CompFly AI' 'Finarb AI' 'Technical Skills'; do
    if ! grep -Fq "$required" <<< "$text"; then echo "ERROR: $name missing $required in extracted text" >&2; exit 1; fi
  done
  echo "PASS: one page and key text extractable: ${name}.pdf"
done

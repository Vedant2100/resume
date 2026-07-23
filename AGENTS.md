# resume

A single-file LaTeX résumé. The source is `main.tex`; building it produces `main.pdf`.

## Cursor Cloud specific instructions

- This repo is a LaTeX document, not a running service. "Building/running" means compiling `main.tex` to a PDF.
- Build with `latexmk -pdf -interaction=nonstopmode main.tex` (preferred, auto-runs passes) or `pdflatex main.tex`. Output is `main.pdf`.
- Preview/verify the PDF by rasterizing a page: `pdftoppm -png -r 150 main.pdf page` (poppler-utils).
- Clean build artifacts with `latexmk -C main.tex`. Build outputs (`*.pdf`, `*.aux`, `*.log`, etc.) are gitignored; do not commit them.
- The document requires these TeX packages: `fontawesome5`, `marvosym` (fonts-extra/recommended), `titlesec`, `enumitem`, `tabularx`, `multicol` (latex-extra/recommended), and `ulem` (plain-generic). These are installed by the update script.

# Resume repository guidance

This is a LaTeX resume repository, not a running service.

## Active resumes and source of truth

- `research.tex`: Research Engineer and ML Research Engineer applications.
- `engineering.tex`: AI/ML Engineer, agent systems and AI SWE applications.
- `shared/style.tex`: **common formatting**. Don't create two drifting visual styles.
- `shared/content.tex`: shared, evidence-constrained accomplishments and bullet content.
- `master.md`: documented experience/project ledger and limitations.
- `main.tex`: legacy resume, intentionally preserved for backward compatibility.

Before strengthening an accomplishment or metric, check Craft's canonical academic/work/research history and original project sources; avoid converting plans, student forks, inconclusive experiments, or paper submissions into successful deployed systems or accepted publications.

## Compile, check, review

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error research.tex
latexmk -pdf -interaction=nonstopmode -halt-on-error engineering.tex
bash scripts/check_resumes.sh
pdftoppm -png -r 150 research.pdf research-preview
pdftoppm -png -r 150 engineering.pdf engineering-preview
```

Check both full-size rendered images, verify even whitespace, right-aligned dates, unclipped lines, human-readable bullets, page count **1** each, and extracted text with `pdftotext -layout`. Don't equate one-page compliance with visual quality.

The LaTeX installation needs Source Sans Pro, titlesec, enumitem, geometry, hyperref, microtype and glyph-to-Unicode support. Build artifacts (`*.pdf`, `*.aux`, `*.log`) should remain ignored.

Switch the Overleaf Main document between `research.tex` and `engineering.tex`; never copy/paste divergent experience descriptions to separate projects.

# Vedant Borkute — resumes

Two maintained, **one-page**, ATS-conscious LaTeX resume variants with a shared bullet bank and layout.

| Resume | Target roles |
| --- | --- |
| [research.tex](research.tex) | Research Engineer / ML Research Engineer, AI evaluations, post-training, agents |
| [engineering.tex](engineering.tex) | Agentic AI Engineer / ML Engineer, AI systems, applied AI, agent SWE |

The historical [main.tex](main.tex) remains untouched. [VARIANTS.md](VARIANTS.md) explains what goes into each version, how to switch versions in Overleaf, and how to maintain both. [master.md](master.md) inventories additional verified/pending projects so relevant work is not lost.

Build and check locally:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error research.tex
latexmk -pdf -interaction=nonstopmode -halt-on-error engineering.tex
bash scripts/check_resumes.sh
```

The layout, contact block and section styling live in [shared/style.tex](shared/style.tex); reused experience and research claims live in [shared/content.tex](shared/content.tex). **Edit facts once**, then select the right bullets in each variant. PDFs are build artifacts, not tracked in Git.

# Maintaining the two resumes

Keep **two** applications-ready, one-page resumes with **one visual design**. These are *different selections of real experience*, not conflicting descriptions of work:

| Source | Use for | Emphasis |
| --- | --- | --- |
| `research.tex` | Research Engineer, ML Research Engineer, model evaluations, agents, safety, post-training | Methods, controlled comparisons, measurable results and failure analysis |
| `engineering.tex` | AI/ML Engineer, Agent Systems Engineer, technical MTS, SWE building AI products | Implemented agents, pipelines, systems, debugging and deployment |

No separate AI Research / ML Research Scientist resume now. A scientist CV often requires a deeper publication record and can be longer; these are early-career **Research Engineer** / **AI Engineer** resumes. Data Science can be derived from the shared bank if it becomes a substantial application category; don't maintain a third file yet.

## Layout and build

- `shared/style.tex`: all layout, dates, section typography, header; keep it common to both.
- `shared/content.tex`: **single source of truth** for factual accomplishments and measurable outcomes.
- `research.tex`, `engineering.tex`: project selection and ordering only.
- `main.tex`: original resume; intentionally preserved, not silently overwritten.
- `master.md`: research/work/project evidence ledger, including omitted material and cautions.

The active variants use **10pt Source Sans Pro**, single-column US Letter, real searchable/selectable text, consistent right-aligned dates, and no graphics or tables for experience. One page was confirmed with `pdfinfo`; text extraction checked with `pdftotext` and both pages visually reviewed after rasterization.

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error research.tex
latexmk -pdf -interaction=nonstopmode -halt-on-error engineering.tex
pdfinfo research.pdf | grep Pages
pdfinfo engineering.pdf | grep Pages
pdftotext -layout research.pdf -
pdftotext -layout engineering.pdf -
```

`bash scripts/check_resumes.sh` automates the page-count, extraction, and key-content checks when the LaTeX / Poppler packages are installed. It does not replace looking at the rendered PDFs before applying.

**Overleaf**: select `research.tex` or `engineering.tex` as the **Main document** in Menu / Settings. The other variant remains available in the same Overleaf project. Export the PDF. If an employer explicitly requires a Word document, produce and check a DOCX rather than pretending that renaming a PDF changes its file type.

## Project selection (not all projects must fit)

| Project | Research | Engineering |
| --- | --- | --- |
| MiniGrid LLM navigation / Buffer-of-Thought | Evaluation, outcome metrics | Implemented planner + eval harness |
| Concept erasure in diffusion models | Yes | Only for CV/model-safety engineering jobs |
| Coding-agent memory governance | Controlled evaluation and limitations | Reproducible agent experiment runs |
| CLIP deepfake detector + purifier | Adversarial robustness | Implemented pipeline, Grad-CAM |
| Alien-arithmetic reasoning / GRPO / LLaDA | Quantitative model comparison | Only for model-training jobs |
| Satellite vegetation data platform | Only for geo/data research | PySpark, S3, transformation/evaluation |
| Online programming judge | Not typically | SWE/backend evaluation systems |

Additional projects in `master.md` are selectively pulled into an application *instead of*, not in addition to, everything above. Retain the most job-relevant evidence and avoid stuffing every school project into one page. The resume should be personally reviewed before final applications.

**Evidence rule:** never claim accepted publications, released datasets, full production deployment, unverified customer savings, or improvements in coding-agent task resolution not supported by experimental results. Reported Finarb outcomes must preserve their comparison baselines and project scope. The memory pilot did **not** demonstrate a resolution improvement.

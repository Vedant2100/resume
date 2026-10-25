# Resume variants

Maintain **two** one-page resumes with the **same format**. Each emphasizes relevant work, not a new job title or invented result.

| File | Use for | Examples from the October 2026 Craft jobs board |
| --- | --- | --- |
| `research.tex` | Research Engineer, ML Research Engineer, evaluations, model behavior, agent reliability, post-training research engineering | Greptile, HUD Research Engineer, Mem0, Waddle Labs, Sweep |
| `engineering.tex` | AI Engineer, ML Engineer, Agent Systems Engineer, technical MTS, SWE on AI-agent teams | Pinterest MLE, Quora MLE, NeoSigma, Sierra agent engineering, WorkOS |

These are **not** separate AI Research vs. ML Research Scientist resumes. A Research Engineer generally builds and evaluates experiments and systems; a Research Scientist role may prioritize publication history and research novelty, so do not automatically use the research variant as a scientist CV.

**Data Science:** No third maintained variant yet. For a significant run of DS applications, derive a tailored copy from the shared material (Finarb models, metrics, SQL, feature engineering, dashboards).

## Editing

- `shared/style.tex` — single-column, ATS-conscious layout shared by both.
- `shared/content.tex` — reusable, evidence-backed bullet bank. Update facts here once.
- `research.tex`, `engineering.tex` — order/select the relevant bullets and projects.
- `main.tex` — historical original, deliberately unchanged during migration.
- `master.md` — fuller accomplishments and evidence cautions.

Compile locally:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error research.tex
latexmk -pdf -interaction=nonstopmode -halt-on-error engineering.tex
pdftotext -layout research.pdf -
pdftotext -layout engineering.pdf -
```

In Overleaf, select `research.tex` or `engineering.tex` as the **Main document** in the project settings. Download the compiled PDF for the application; respect any explicitly required DOCX file type. Both PDFs should be one page, readable as extracted text, and reviewed for each job description.

Do not add claimed accepted papers, publication metrics, GPA, unverified productivity improvements, or ongoing research outcomes without evidence. December 2026 graduation is **expected**, not completed.

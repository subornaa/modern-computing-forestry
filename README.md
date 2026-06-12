# Modern R for Forestry and Natural Resources Data

*Efficient Coding, Data Analysis, and AI-Assisted Debugging*

An open educational resource (OER) that takes learners from spreadsheets
to a modern, reproducible R workflow on **real, openly licensed Canadian
forestry and natural-resources data**. It is the primary (free) text for
**FRST 232 — Computer Applications in Forestry** at UBC, and a
pre-learning / refresher resource for **FRST 531**.

📖 **Read the book:** <https://subornaa.github.io/modern-computing-forestry/>

[![License: CC BY 4.0](https://img.shields.io/badge/Content-CC%20BY%204.0-blue)](https://creativecommons.org/licenses/by/4.0/)
[![Code: MIT](https://img.shields.io/badge/Code-MIT-green)](https://opensource.org/licenses/MIT)

## What's inside

A 13-chapter Quarto book that bridges Excel → R → the tidyverse → spatial
mapping, with an "Excel-to-R" thread throughout:

| Part | Chapters |
|---|---|
| Excel foundations | 1 Workbench · 2 Clean & summarize · 3 PivotTables & charts |
| R foundations | 4 Getting started · 5 Import / inspect / Quarto · 6 dplyr cleaning |
| Summarise, combine, visualize | 7 Group summaries · 8 Joins & reshape · 9 ggplot2 |
| Spatial & communication | 10 sf · 11 leaflet maps · 12 Presentations & portfolio · 13 Wrap-up & exam prep |

Each chapter includes learning goals, an expected-output deliverable, an
"Excel→R" bridge, worked examples on real data, a group lab, take-home
exercises, a **self-assessment quiz with progressive "Guided Answer"
hints**, and an *AI as a debugging companion* section.

## Datasets (all open government data)

See [`data/README.md`](data/README.md) for full provenance. In short:
BC silviculture (Environmental Reporting BC), Ontario forest statistics,
BC hourly air quality, ECCC daily weather (YVR), NRCan wildfire records,
and Columbia Shuswap Regional District parks. Reproducible download /
build scripts live in [`scripts/`](scripts/).

## Repository layout

```
index.qmd            Preface (book landing page)
frontmatter/         Land acknowledgment, Indigenous data sovereignty,
                     accessibility, EDI, how-to-use
chapters/            01–13 chapter sources (.qmd)
workbooks/           Learner + solutions workbooks (distributed via Canvas)
quizzes/             Standalone self-assessment quizzes
data/                Datasets (raw/, clean/) + provenance
scripts/             Reproducible data download / build scripts
templates/           Reusable forestry-report and learner-workbook templates
assets/              Book-wide quiz enhancement (Guided Answer hints, a11y)
references.bib       Bibliography
_quarto.yml          Book configuration
```

## Build it locally

Requires **R ≥ 4.3** and **Quarto ≥ 1.4**.

```r
# 1. Install the R packages the book uses
install.packages(c(
  "tidyverse", "readxl", "here", "knitr", "rmarkdown", "scales",
  "janitor", "sf", "leaflet", "kableExtra", "gt"
))
```

```bash
# 2. Render the whole book to docs/
quarto render
```

The rendered site is written to `docs/`. (Generated output and caches —
`docs/`, `_freeze/`, `.quarto/` — are git-ignored; CI rebuilds them.)

## Publishing

A GitHub Actions workflow ([`.github/workflows/publish-book.yml`](.github/workflows/publish-book.yml))
renders the book and deploys it to GitHub Pages on every push to `main`.
The repo owner enables this once via **Settings → Pages → Source: GitHub
Actions**.

## Accessibility & EDI

The book targets **WCAG 2.1 AA**: alt text on every figure, keyboard-
operable quizzes with non-colour feedback, high-contrast palettes, and
single-file HTML. It opens with a land acknowledgment and an Indigenous
data-sovereignty (OCAP® / CARE) section. See the front-matter pages.
Accessibility reports are welcome via GitHub issues.

## Contributing

Bug reports, accessibility concerns, and pull requests are welcome under
the licences below.

## Licence

- **Content** (prose, chapters): [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
- **Code** (R, Quarto sources, quiz JavaScript): [MIT](https://opensource.org/licenses/MIT)

Developed at the **UBC Faculty of Forestry** with support from the **UBC
OER Fund**. Cite as: Ahmed, S. (2026). *Modern R for Forestry and Natural
Resources Data.* UBC Faculty of Forestry. CC BY 4.0.

# FRST 232 — Transition Matrix (Modernized 2026, v2)

This matrix shows, for each chapter of the course, how the curriculum
moves from the legacy approach to the modernized approach. It is the
planning document that drives the syllabus and the chapter-by-chapter
teaching packages.

**What changed from v1:** Incorporates reviewer feedback from Jiaxin
Wen and Peace U.

1. New **Expected output** column — one concrete artifact per chapter,
   so the deliverable arc is visible at a glance.
2. **Excel-to-R bridge** sentences prepended to Chapters 4–6, naming
   the Excel skill each R move replaces.
3. **Forestry relevance** sentences added to the OER Open-Data
   column for the air-quality (Ch 6) and air + weather (Ch 9, 10) cells.
4. **Multi-jurisdiction note** added under *Datasets used* so the
   national / provincial mix is explicit.

**Conventions used throughout:**

- **Excel** runs Chapters 1–3 only. **Chapter 4 starts R** (install,
  RStudio Project, `here`, first import). No Excel content is taught
  after Chapter 3.
- All datasets are **open Canadian and BC public data**. We do not use
  any custodial inventory extract; instead we use Environmental
  Reporting BC, BC Ministry of Environment (air quality), Ontario
  Open Data, Statistics Canada, Environment and Climate Change
  Canada (ECCC), and similar publicly downloadable sources.
- Labs follow a deliberate **one-chapter offset**: the lab in
  chapter *n* applies the lecture material from chapter *n−1* on a
  larger, often messier, dataset.
- The Chapter 1 lab is **orientation and setup**, not graded
  analysis.
- The Chapter 5 lab is the **Excel midterm**.
- In-course active learning runs through **in-class coding
  activities and self-assessment quizzes** on the course site — there
  are no learnr tutorials.
- AI support is treated as a **debugging and verification companion**
  in every chapter, not as a one-time workshop.

---

| Chapter / Theme | Legacy Approach | Modernized Approach | Expected Output | OER Open-Data Strategy | Lab Plan (one-chapter offset) | AI / Debugging Strategy |
|---|---|---|---|---|---|---|
| **Ch 1 — Course launch and Excel as a data-analysis workbench** | Orientation, software installation, Piazza setup, and the start of MS Word document processing. Computing introduced through office-tool fluency before data analysis began. | Begin with Excel immediately as a reproducible data-analysis workbench. Learners import tabular files, inspect data types and number formats, define named ranges, build a data dictionary, and set up Posit Cloud for the later R transition. Word / reporting is no longer the opening technical focus. | A Posit Cloud account, a lab group, and a guided pass through an open Excel workbook with About / ReadMe / Data sheets identified. | **`bc_disturbance_reforestation.xlsx`** — Environmental Reporting BC, *Trends in Silviculture in B.C.* Annual provincial summary, 37 rows × 8 columns, fiscal years 1987–2023. Open Government Licence — BC. Learners identify records, variables, units, and column meanings before doing analysis. | **Orientation and setup lab — no graded analysis.** Learners meet the teaching team and TAs, walk through lab procedures and submission workflow, form their lab group (which is also their presentation group), open the BC silviculture Excel file together for low-stakes exploration, create a free Posit Cloud account that will be used for every R lab, practice sharing a reproducible file with group mates and the teaching team, and try one simple AI-assisted task to discuss verification. | Introduce the *"Guided Answer"* habit: inspect first, compute second, verify always. AI can explain an unfamiliar formula or code snippet, but learners must verify against the spreadsheet structure and the data dictionary. |
| **Ch 2 — Excel cleaning, formulas, and safe referencing** | Word processing labs continued while Excel began with data types, number formats, text / CSV import, sorting, filtering, duplicate detection, data dictionaries, metadata, and spreadsheet navigation. | Keep the Excel curriculum but modernize it around reproducibility: structured tables, explicit cleaning logs, safe relative / absolute cell references, summary statistics, conditional logic, and lookup tables. | A data dictionary built by hand on the BC silviculture file, plus a one-page memo describing what is in the file. | **`bc_disturbance_reforestation.xlsx`** (carried forward from Ch 1) **and `on_forest_statistics_1.xlsx`** — Government of Ontario, *Forest Resources of Ontario 2021 — Statistics 1*. Teaching extract for Region 3E, ~175 rows × 8 columns with categorical depth (ownership × seral stage × forest type × age class). Open Government Licence — Ontario. Learners produce a one-page cleaning log. | **Applies Ch 1 lecture material.** Excel familiarity lab on the BC silviculture file: learners open the file, navigate it confidently, recognize data types and number formats, build a data dictionary, and write in plain language what is in the file (variables, units, observations). | Guided hints focus on formula logic: *"Check whether the reference should move when copied," "Confirm the lookup key exists once,"* and *"Compare row counts before and after filtering."* AI is used to translate formula errors or explain lookup behavior, not to replace manual checks. |
| **Ch 3 — Excel visualization and PivotTables** | Excel visualization expanded through formula structure, random sampling, nested `IF` / `AND` / `OR`, lookup functions, bar / line / scatter charts, chart design, and real-world forestry / natural-resources examples. | Excel becomes the bridge to later tidy-data thinking. Learners choose chart types based on questions, build PivotTables and PivotCharts, export figures with captions, and connect each chart to the underlying data dictionary and cleaning log. | A PivotTable and PivotChart answering one chosen forestry question, exported as PNG with a proper caption. | **`bc_disturbance_reforestation.xlsx`** (for time-series charts) and **`on_forest_statistics_1.xlsx`** (for PivotTables with multiple categorical dimensions — exactly what PivotTables are for). PivotTables answer questions such as mean harvested area by decade, total area by forest type and seral stage, and reforestation totals by harvest system. | **Applies Ch 2 lecture material.** Excel cleaning and summarizing lab on the Ontario forest statistics file: learners clean a messier file, apply conditional logic to recode and classify values, and produce a one-page summary table that another reader could understand without seeing the raw file. | Guided prompts target common analysis mistakes: wrong aggregation level, hidden filters, missing units, chart axes that imply the wrong comparison, and PivotTable fields in the wrong role. AI can critique chart clarity, but learners must justify the final chart from the data question. |
| **Ch 4 — Start of computing in R: install, project, first import** | Legacy Chapter 4 remained within Excel data visualization and Excel data-handling labs, including sorting, filtering, named ranges, formatted tables, exported results, and comparison of volume estimates. | **From Excel to R:** what learners did with `=SUM(H2:H38)` and AutoFilter in Excel last chapter, they now do with `sum(bc$Reforestation_ha)` and `filter()` in R — same data, more reproducible workflow.<br><br>**Chapter 4 is the start of R.** No Excel module is taught this chapter. Learners reflect briefly on Excel's strengths and limits (one short discussion), then move directly into installing R, RStudio, and Quarto; creating an RStudio Project; using the `here` package for portable paths; and writing their very first lines of R code on a real open dataset. | A working RStudio Project with the BC silviculture file read into R and confirmed identical to the Excel version learners used in Chapters 1–3. | The same **`bc_disturbance_reforestation.xlsx`** from Ch 1–3 is re-imported into R as the first reproducible read. Learners see exactly the same data on both sides of the Excel-to-R bridge — the same column names, the same rows — and confirm that the import preserves them. | **Applies Ch 3 lecture material.** Excel graphing lab on the Ontario forest statistics file (extended): learners produce a set of charts, PivotTables, and PivotCharts that answer a specific forestry question (for example, *"How has the share of clearcutting-with-reserves changed over the decades?"* on the BC file or *"Which forest type has the largest mature-stage area?"* on Ontario). The midterm on Excel is held in next chapter's lab session (Ch 5) and is announced in this lab. | Guided Answer logic asks learners to locate which step would be hard to audit in Excel and how a Quarto / R script would record it. AI is used for *"what might break?"* checks on file paths, data types, and hidden spreadsheet state. |
| **Ch 5 — Import and inspect forestry data with R and Quarto** | Legacy Chapter 5 focused on Excel PivotTables, PivotCharts, chart customization, summary functions, and midterm review. The midterm covered Word, Excel data handling, and Excel visualization. | **From Excel to R:** where Excel's status bar showed `Count`, `Sum`, and `Average` at the bottom of the window, R now gives you `dim()`, `summary()`, and `colSums(is.na(...))` — the same canonical inspection moves, but scriptable and reproducible.<br><br>The modernized course moves the Excel midterm into the lab and starts R fundamentals proper: vectors, the native pipe `\|>`, core data structures, reproducible CSV / Excel import with `readr` / `readxl`, column-type inspection, missing-value checks, data dictionaries, and a first Quarto HTML report. | A first rendered Quarto HTML report inspecting the BC silviculture file — the same data learners knew in Excel, now described reproducibly. | **`bc_disturbance_reforestation.xlsx`** — same file learners used in Excel for Ch 1–3 — now imported into R via `readxl::read_excel()`. Learners document column names, units, types, missingness, and expected keys in Quarto. | **Excel midterm — held in the lab session.** Covers Excel: importing, cleaning, summarising, and visualising data (Ch 1–3 material). No separate practice lab this chapter beyond the midterm. | Guided hints handle first R barriers: working directory, file path, package load, object name, column type, and rendering errors. Learners use an AI prompt template that includes R version, package context, code tried, and the exact error, then verify with `glimpse()`, `summary()`, and row counts. |
| **Ch 6 — Clean and prepare forestry data in R** | Legacy Chapter 6 introduced RStudio and R Markdown, using R as a calculator, saving and knitting Rmd files, assigning variables, exploring object types, and midterm Q&A / review labs. | **From Excel to R:** where Excel had `VLOOKUP`, AutoFilter, and per-cell manual edits, R has `left_join()`, `filter()`, and `mutate()` — same intent, but every cleaning step is now logged in code rather than buried in spreadsheet clicks.<br><br>Learners now use tidyverse workflows to standardize names, filter, rename, arrange, handle missing values, detect outliers with domain knowledge, create derived variables, and maintain a reproducible cleaning log in Quarto. | A reproducible cleaning log in Quarto plus a cleaned air-quality CSV saved in `outputs/`. | **`airdata3.csv`** — BC Ministry of Environment hourly air-quality observations from multiple Lower Mainland stations (Burnaby South, Vancouver, etc.), 11,904 rows × 26 columns. Real, field-realistic problems: many missing values across pollutants, mixed date / time formats, an unnamed index column. Open Government Licence — British Columbia. **Forestry relevance:** PM2.5 from wildfire smoke is the most visible cross-sector indicator of fire severity. An inventory analyst who can read this file can connect a fire season's hectares-burned to its smoke days — directly linking the BC silviculture data (Ch 1–5) to its on-the-ground air-quality footprint. | **Applies Ch 5 lecture material.** Importing and inspecting lab on **`bc_disturbance_reforestation.xlsx`** in R: learners load it via `read_excel()`, document its structure with a data dictionary, run the canonical inspection moves (`glimpse`, `summary`, `dim`, `names`, missingness check), and produce a short reproducible Quarto report describing what is in it. | Guided hints move from syntax to reasoning: *"Check the column name after cleaning," "Decide whether NA should be removed or flagged,"* and *"Confirm units before deriving."* AI-generated fixes must be audited line by line and annotated in the cleaning log. |
| **Reading Break** | Reading Break with no class. | Reading Break with no class. Optional self-paced OER review can reinforce the Excel-to-R transition without adding new assessed content. | (No new artifact.) Optional self-check: re-render any Quarto report from Ch 5 or Ch 6 from a clean project. | Optional practice dataset: a tiny open sample for low-stakes import and inspection review. No new data concept is introduced. | **No lab — Reading Break.** | Optional Guided Answer self-checks revisit path errors, object names, missing values, and formula-to-code translation. AI use is reflective: learners compare their own explanation to an AI explanation and identify any unsupported assumptions. |
| **Ch 7 — Summarize forestry data overall and by group** | Legacy Chapter 7 resumed R: import / export datasets, set / check working directory, explore environment, summarize datasets, use logical operators and subsets, create vectors / factors / matrices / data frames, do arithmetic, and introduce basic R plotting. | The modernized course centers on tidy summaries: single-variable summaries, multiple-variable summaries, grouped summaries by category or location, interpretation of `NA` and `NaN`, and reporting group size with every mean. | A grouped summary table (e.g., mean PM2.5 by station × month, with `n()` reported alongside every mean) saved to `outputs/`. | **`airdata3.csv`** (cleaned in Ch 6 lab) — learners summarize PM2.5, NOx, and O3 by station, by month, and by season. Optional second file **`on_forest_statistics_1.xlsx`** for `group_by(PFTName) \|> summarise()` practice on a categorical-heavy file. | **Applies Ch 6 lecture material.** Cleaning lab on **`airdata3.csv`**: learners build a documented cleaning pipeline (rename columns, parse dates, filter to one station, handle missing pollutants); save both the cleaned data and a transparent cleaning log. | Guided hints catch common summary errors: forgotten `na.rm`, summarizing the wrong table, grouping left in place, small group sizes, and confusing missing values with zero. AI can suggest tidyverse verbs, but learners must verify each summary with spot checks and `n()`. |
| **Ch 8 — Reshape and combine forestry datasets safely** | Legacy Chapter 8 focused on base R / R Markdown graphical presentation: plot size, axis limits, margins, legends, annotations, plotting multiple datasets, subsets, side-by-side plots, and highlighting min / max / mean values. | The new chapter teaches data shape and relational thinking before advanced graphics: long versus wide data, joins across records, lookups, site attributes, and diagnostic checks for duplicate keys and unexpected many-to-many relationships. | A joined air-quality + weather table with pre- and post-join row counts documented in the Quarto file, ready for visualization in the next chapter. | **`airdata3.csv`** (hourly air quality, Vancouver station) joined with **`inter_air_van_weather.csv`** — ECCC daily weather for Vancouver International Airport (366 daily records, 31 columns including max / min / mean temp, precipitation, snow). Real-world many-to-one join (24 hourly readings per daily weather row), perfect for teaching pre- / post-join row-count checks and the dangers of unexpected many-to-many. **Forestry relevance:** growing-degree-days, frost dates, and precipitation totals from ECCC are the standard climate inputs to BC forestry growth-and-yield models. Joining hourly air to daily weather is the same shape as joining tree records to plot-level weather summaries — the technique transfers directly to the inventory + climate work many learners will do in later courses or jobs. | **Applies Ch 7 lecture material.** Summarizing lab on the cleaned air-quality data: learners produce stratified summaries (mean PM2.5 by month, by station, by hour-of-day), with diagnostic checks for missing data and small group sizes. | Guided Answer logic emphasizes join safety: *"Is the key unique in each table?", "Did the number of rows change?", "Which records failed to match?",* and *"Are duplicates expected biologically or caused by data structure?"* AI can explain join warnings, but learners must produce pre- / post-join diagnostics. |
| **Ch 9 — Visualize forestry data with `ggplot2`** | Legacy Chapter 9 continued base R plotting and R Markdown export: saving plots, controlling resolution and dimensions, using `legend()`, `text()`, `abline()`, bar plots, percentage tables, rotated labels, and label-size control. | Visualization shifts to the grammar of graphics: layered `ggplot2`, geoms chosen by question, facets for group comparison, custom themes, accessible color palettes, and publication-ready figure export. | A set of publication-quality figures saved as PNG: one time-series plot, one faceted plot, and one bar chart. | Learners create figures from the **BC silviculture** time-series, the **Canadian wildfire summary** annual totals, and (optionally) the joined **air-quality + weather** data from Ch 8: time-series of disturbance and reforestation, area-burned bar charts faceted by year, faceted PM2.5-vs-temperature scatterplots. **Forestry relevance:** the visualization patterns in this chapter — time series of disturbance, faceting by site / region, two-axis charts comparing fire and weather — are the same patterns used in BC fire-weather analysis (does the drought code on day *t* predict fire activity on day *t+1*?) and in growth-and-yield reporting. | **Applies Ch 8 lecture material.** Combining-data lab on the **`airdata3.csv` + `inter_air_van_weather.csv`** pair: learners join the two files on Date (after extracting the date component from the air-quality timestamp) to produce an analysis-ready table that answers *"On rainy days, is the air at YVR cleaner?"* | Guided hints address aesthetic mapping, missing values, overplotting, scale choice, inappropriate geoms, and export dimensions. AI can propose alternative chart types or explain a `ggplot2` error, but learners must defend the final figure against the data question and accessibility criteria. |
| **Ch 10 — Spatial forestry data in R** | Legacy Chapter 10 still focused on R Markdown graphical presentation: pie charts, histograms, built-in datasets, boxplots, grouped boxplots, point and line graphs, subsetting seasonal trends, combining plots, and exporting visuals. | The modernized course introduces spatial data with `sf`: points, lines, polygons, coordinate reference systems, reading BC spatial layers from open catalogues, inspecting geometry and attributes, joining attributes to features, filtering, summarizing, transforming, and reprojecting. | A working `sf` object of CSRD parks, inspected for CRS and bounding box and reprojected from WGS 84 to BC Albers. | A small **CSRD Open Data Parks** GeoJSON (66 points) downloaded directly from the Columbia Shuswap Regional District portal — single file, no shapefile bundle, no repo clone. Optional: BC Wildfire historical perimeters. The **`download_eccc_yvr_climate.R`** script also lives here as a reproducibility reference. | **Applies Ch 9 lecture material.** Visualization lab on the BC silviculture and Canadian wildfire summary files: learners produce a set of publication-quality figures, including a faceted figure that compares groups or years. | Guided hints focus on spatial failure modes: missing CRS, wrong CRS, invalid geometry, latitude / longitude reversal, failed spatial joins, and maps that look plausible but are projected incorrectly. AI can help interpret CRS errors, while learners verify with `st_crs()`, bounding boxes, and known BC geography. |
| **Ch 11 — Map forestry data and prepare project work** | Legacy Chapter 11 moved into presentation development and continued R Markdown graphical presentation labs, asking learners to explore data patterns with graphs and summary statistics in structured R Markdown reports. | Learners make static thematic maps with `ggplot2` and `geom_sf()`, layer multiple spatial datasets, add legends / labels / scale information, and build interactive `leaflet` maps when interactivity serves the question. Presentation topics are tied to lab-section groups and analysis outputs. | One static thematic map and one interactive `leaflet` map of the CSRD parks layer, each with caption, source, and alt text. | The CSRD parks layer mapped with `leaflet`; optionally the BC Wildfire perimeters as a polygon layer for a static `geom_sf()` choropleth. Each group produces one static map and one interactive map that answers a forestry question. | **Applies Ch 10 lecture material.** Spatial data lab on the CSRD Open Data parks GeoJSON: learners import the layer, inspect its structure and projection, and join park attributes (classification, area, amenity) to produce a thematic map. | Guided Answer hints target layer order, missing geometries, color-scale misuse, legend clarity, accessibility, and whether interactivity improves interpretation. AI may debug layer-ordering or `leaflet` syntax, but learners must verify map meaning and include alt text or descriptive captions. |
| **Ch 12 — Group presentations and portfolio outputs** | Legacy Chapters 12–14 were dominated by in-class group presentations on programming tools or code not covered in class, with peer review and reduced lab activity. | Group presentations now showcase a forestry or natural-resources data-analysis question using the modern workflow. Deliverables include code, figures / maps, slides, and peer review. Public-domain open data supports GitHub portfolio-style outputs. | A group presentation deliverable: rendered Quarto report + slides + the data used + a short AI acknowledgement statement. | Groups use any combination of the curated open datasets used in the course (BC silviculture, Ontario forest stats, BC air quality, ECCC weather, NRCan wildfire summary, CSRD parks). Projects may combine open silviculture, climate, fire, and spatial layers in a single end-to-end analysis. | **Applies Ch 11 lecture material.** Mapping lab on the CSRD parks layer: learners produce a set of publication-quality maps (one static thematic map and one interactive `leaflet` map) that answer a specific spatial question. Remaining time is a project work session for lab-section groups to finalize their analysis and presentation slides. | Guided review checklists ask whether the workflow renders from a clean project, whether joins and summaries are diagnosed, whether AI assistance is acknowledged, and whether another learner could reproduce the output. AI is positioned as a code-review partner, not an author of unverified analysis. |
| **Ch 13 — Wrap-up and final exam preparation** | Legacy Chapter 13 finished presentations, observed holidays, and reviewed for a final exam focused on R / RStudio / R Markdown data handling and graphical presentation. | The modernized wrap-up reviews the full reproducible pipeline: import, clean, summarize, reshape, join, visualize, map, render, and explain forestry data with R, the tidyverse, Quarto, and spatial tools. | A complete end-to-end case study walkthrough on any one course dataset, from raw file to rendered Quarto report — used as both review and exam practice. | A compact end-to-end open-data case study as final review: take any one of the course datasets, start from raw, document cleaning, summarize by group, join metadata, produce one figure and one map, and render a Quarto report. | **No lab — exam preparation week.** | Final Guided Answer ladder: read the error, identify the object / function / data step, inspect the data, reduce to a minimal example, test one fix, and document the verification. AI can be used during study to explain errors and generate practice variants, with explicit citation when it substantially contributes. |

---

## Active-learning approach (replaces learnr)

There are **no learnr tutorials** in this version of the course.
Active learning is supported by two recurring practices:

- **In-class activities.** Short coding tasks and structured
  discussions embedded in every lecture session. They are submitted
  live and contribute to the *Class Activities* grade (20 %).
- **Self-assessment quizzes.** Short course-site quizzes after each
  chapter (typically one per chapter). Learners take these on their
  own time. They are formative and ungraded, designed to surface
  misunderstandings before the lab.

## Datasets used (all open, all public)

| Source | File(s) | Used in |
|---|---|---|
| Environmental Reporting BC — *Trends in Silviculture in B.C.* | `bc_disturbance_reforestation.xlsx` | Ch 1, 2, 3, 4, 5, 6, 9 |
| Government of Ontario — *Forest Resources of Ontario 2021 — Statistics 1* | `on_forest_statistics_1.xlsx` | Ch 2, 3, 7 |
| BC Ministry of Environment — Hourly air-quality monitoring | `airdata3.csv` | Ch 6, 7, 8, 9 |
| Environment and Climate Change Canada — Daily climate, station 51442 (YVR) | `inter_air_van_weather.csv` | Ch 8, 9 |
| National Forestry Database / NRCan — Annual wildfire summary | `canada_annual_wildfire_summary.xlsx` | Ch 9 |
| Columbia Shuswap Regional District Open Data — Parks | `csrd_parks.geojson` (downloaded in Ch 10) | Ch 10, 11, 12 |
| ECCC bulk-download utility (R script) | `download_eccc_yvr_climate.R` | Ch 10 |

Every dataset is **directly downloadable** (no repository clone, no
account required) and licensed under an open government licence or
equivalent.

::: {.callout-note}
### A note on jurisdictional coverage

The course deliberately includes datasets from **British Columbia**
(silviculture, air quality), **Ontario** (forest statistics), and
**federal sources** (ECCC climate, NRCan / NFD wildfire summary,
CSRD regional parks). This exposes learners to how open forestry and
natural-resources data is structured across multiple Canadian
jurisdictions — useful preparation for any forestry analyst role,
where the next dataset on your desk could come from any provincial
or federal program. A learner who can read all six files in this
course can read most Canadian open forestry data.
:::

---

## Expected output column at a glance

For quick reference, every chapter's concrete artifact:

| Chapter | Expected output |
|---|---|
| Ch 1 | Posit Cloud account, lab group formed, About / ReadMe / Data sheets identified in a real BC workbook. |
| Ch 2 | Hand-built data dictionary + one-page memo describing the BC silviculture file. |
| Ch 3 | PivotTable + PivotChart answering one chosen forestry question, exported as PNG with caption. |
| Ch 4 | Working RStudio Project with the BC file read into R and confirmed identical to Excel. |
| Ch 5 | First rendered Quarto HTML report inspecting the BC silviculture file. |
| Ch 6 | Reproducible cleaning log in Quarto + cleaned air-quality CSV in `outputs/`. |
| Reading Break | (No new artifact.) |
| Ch 7 | Grouped summary table (mean PM2.5 by station × month, with `n()`) saved to `outputs/`. |
| Ch 8 | Joined air-quality + weather table with pre- / post-join row counts documented. |
| Ch 9 | Three publication-quality figures: one time-series, one faceted, one bar chart. |
| Ch 10 | Working `sf` object of CSRD parks, inspected and reprojected. |
| Ch 11 | One static thematic map + one interactive `leaflet` map. |
| Ch 12 | Group presentation deliverable: Quarto report + slides + data + AI acknowledgement. |
| Ch 13 | Complete end-to-end case study walkthrough on any one course dataset. |

---

## Version history

- **v2 (this version).** Added Expected output column. Added
  Excel-to-R bridge sentences to Ch 4–6. Added forestry-relevance
  sentences to Ch 6, 8, 9 OER cells. Added multi-jurisdiction note
  under *Datasets used*. Replaced "student" / "week" / "Canvas"
  terminology with "learner" / "chapter" / "course site"
  throughout. Renumbered chapters (Reading Break is no longer a
  numbered week).
- **v1 (May 2026, finalized).** First public version. Aligned with
  the modernized FRST 232 syllabus and the OER book *Modern R for
  Forestry and Natural Resources Data*.

---

*Aligned with the modernized FRST 232 syllabus and the OER book
"Modern R for Forestry and Natural Resources Data."*

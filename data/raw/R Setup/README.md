# Chapter 1 — Why R? Why Now? Setting Up Your Reproducible Workspace

This bundle accompanies Chapter 1 of *Modern R for Forestry and Natural
Resources Data*. It walks students through installing R, RStudio, Quarto,
and the `tidyverse`, setting up an RStudio Project, and producing a first
reproducible plot using a real Canadian wildfire dataset.

## Contents

```
ch01-setup.qmd                   Main Quarto source for the chapter
data/
  nfdb_fires_2021_2024.csv       Canadian NFDB wildfire records, 2021–2024
images/
  r_rstudio_quarto.png           Diagram explaining R / RStudio / Quarto
```

## To render

1. Open `ch01-setup.qmd` in RStudio.
2. Click **Render**, or run in the Console:

```r
quarto::quarto_render("ch01-setup.qmd")
```

## Open data source

- Canadian National Forestry Database (NFDB):
  https://cwfis.cfs.nrcan.gc.ca/datamart

The attribute table of the NFDB polygon shapefile (2021–2024) is included
in `data/` so the visualization runs without any extra download.

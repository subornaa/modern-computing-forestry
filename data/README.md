# Data provenance — *Modern R for Forestry and Natural Resources Data*

All datasets are **open, public-domain Canadian / BC / Ontario / federal**
data, used under open government licences. This file records what each
file is, where it came from, and which chapters use it. The annual
**May data refresh** (grant sustainability commitment) re-runs the
download/build scripts in `../scripts/` and updates `clean/`.

> **Retrieval dates / exact download URLs marked “confirm”** still need
> to be filled in by the teaching team for the final provenance record.

## Layout

| Folder | Contents |
|---|---|
| `data/` (root) | Working copies the chapters read via `here("data", …)`. |
| `data/raw/` | Pristine, untouched downloads (archive — never edited in place). |
| `data/clean/` | Cleaned / derived outputs produced by `scripts/` (reproducible). |

## Datasets

### `bc_disturbance_reforestation.xlsx`
- **What:** BC silviculture — annual disturbance and reforestation, fiscal
  years 1987–2023. ~37 rows × 8 columns (Data sheet); includes About /
  ReadMe / Data sheets.
- **Source:** Environmental Reporting BC — *Trends in Silviculture in B.C.*
  <https://catalogue.data.gov.bc.ca/dataset/indicator-summary-data-trends-in-silviculture-in-b-c->
- **Licence:** Open Government Licence — British Columbia.
- **Used in:** Ch 1, 2, 3, 4, 5, 8, 9, 12. (`_learner` / `_solutions`
  variants are Canvas-only Excel workbooks.)

### `on_forest_statistics_1.xlsx`
- **What:** Ontario forest statistics, Region 3E teaching extract.
  **179 rows × 8 columns**, categorical depth (ownership × seral stage ×
  forest type × age class).
- **Source:** Government of Ontario — *Forest Resources of Ontario 2021 —
  Statistics 1*. (URL: confirm.)
- **Licence:** Open Government Licence — Ontario.
- **Used in:** Ch 2, 3, 4, 5, 8.

### `airdata3.csv`
- **What:** BC hourly air-quality observations, 16 Lower Mainland stations.
  ~11,904 rows × 26 columns. Real field-realistic missingness.
- **Source:** BC Ministry of Environment / BC air-quality monitoring
  network (BC Data Catalogue). (URL: confirm.)
- **Licence:** Open Government Licence — British Columbia.
- **Used in:** Ch 6, 7, 8, 9, 11.
- **⚠ Coverage caveat (verified 2026-06-10):** pollutant completeness is
  uneven across stations — **PM2.5 has data for only 1 station**
  (“Vancouver International Airport #2”, 742 rows), whereas **O₃ and NO₂
  each have 8 stations** (O₃ 5,677 obs; NO₂ 5,826), NO 8, CO 7, PM10 6,
  SO₂ 4. `NOx`, `TEMP_MEAN`, `HUMIDITY`, `PRECIP_TOTAL` are entirely NA.
  The “by station / by region” teaching examples need a multi-station
  pollutant — **O₃ recommended** (8 stations + forestry-relevant: ozone
  damages foliage). See `plan/plan.md` §10 Phase B.

### `inter_air_van_weather.csv`
- **What:** ECCC daily climate for Vancouver International Airport
  (Climate ID 1108447). ~366 rows × 31 columns (max/min/mean temp,
  precipitation, snow, gust).
- **Source:** Environment and Climate Change Canada — daily climate data.
  Reproducibly downloadable via `scripts/download_eccc_yvr_climate.R`
  (to be written). 
- **Licence:** ECCC open data.
- **Used in:** Ch 8, 9 (air + weather join).

### `nfdb_fires_2021_2024.csv`
- **What:** Per-fire point records, 2021–2024 (7,361 fires). Columns
  include SRC_AGENCY, FIRE_ID, YEAR, SIZE_HA, CALC_HA, CAUSE.
- **Source:** Natural Resources Canada — Canadian Wildland Fire
  Information System (CWFIS), National Fire Database (NFDB). (URL: confirm.)
- **Licence:** open (NRCan / CWFIS terms).
- **Used in:** Ch 4 (first import), Ch 9 (via the derived annual summary).

### `clean/canada_annual_wildfire_summary.csv` + `clean/canada_annual_wildfire_by_cause.csv`
- **What:** Annual area-burned and fire counts (and a year × cause
  breakdown) derived from `nfdb_fires_2021_2024.csv`.
- **Built by:** `scripts/build_wildfire_summary.R` (re-runnable).
- **Note:** 2023 dominates (≈16.5M ha) — Canada’s record wildfire season.

## Datasets still to add (Phase B)
- **`csrd_parks.geojson`** — Columbia Shuswap Regional District Open Data,
  Parks (66 points). Needed for Ch 10/11 live maps. Download URL: confirm.
- **`scripts/download_eccc_yvr_climate.R`** — ECCC bulk-download utility
  that regenerates `inter_air_van_weather.csv`.

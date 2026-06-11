# build_wildfire_summary.R
# ---------------------------------------------------------------------------
# Aggregate the raw NRCan / National Forestry Database (NFDB) per-fire point
# records into an ANNUAL wildfire summary for teaching use (Chapter 9).
#
# Implements OER plan decision §12.1 (Option A): derive the annual summary
# the transition matrix expects from the raw fires CSV we actually hold.
#
# Input : data/nfdb_fires_2021_2024.csv         (raw per-fire records)
# Output: data/clean/canada_annual_wildfire_summary.csv   (by year)
#         data/clean/canada_annual_wildfire_by_cause.csv  (by year x cause)
#
# Source : Natural Resources Canada — Canadian Wildland Fire Information
#          System (CWFIS), National Fire Database (NFDB) point data.
# Licence: open (NRCan / CWFIS data-sharing terms).
#
# Run:  Rscript scripts/build_wildfire_summary.R
# ---------------------------------------------------------------------------

suppressMessages({
  library(tidyverse)
  library(here)
})

raw <- read_csv(here("data", "nfdb_fires_2021_2024.csv"),
                show_col_types = FALSE)

# Final reported size (SIZE_HA); fall back to the calculated polygon area
# (CALC_HA) only where the reported size is missing.
fires <- raw |>
  mutate(area_ha = coalesce(SIZE_HA, CALC_HA)) |>
  filter(!is.na(YEAR))

# Map single-letter NFDB cause codes to readable labels.
cause_labels <- c(
  H  = "Human",
  L  = "Lightning",
  U  = "Unknown",
  H_PB = "Prescribed burn",
  Re = "Reburn"
)

annual <- fires |>
  group_by(YEAR) |>
  summarise(
    n_fires       = n(),
    total_area_ha = sum(area_ha, na.rm = TRUE),
    mean_area_ha  = mean(area_ha, na.rm = TRUE),
    .groups = "drop"
  ) |>
  arrange(YEAR)

by_cause <- fires |>
  mutate(cause = coalesce(cause_labels[CAUSE], CAUSE, "Unknown")) |>
  group_by(YEAR, cause) |>
  summarise(
    n_fires       = n(),
    total_area_ha = sum(area_ha, na.rm = TRUE),
    .groups = "drop"
  ) |>
  arrange(YEAR, cause)

dir.create(here("data", "clean"), showWarnings = FALSE, recursive = TRUE)
write_csv(annual,   here("data", "clean", "canada_annual_wildfire_summary.csv"))
write_csv(by_cause, here("data", "clean", "canada_annual_wildfire_by_cause.csv"))

cat("Wrote ", nrow(annual), "-year annual summary and ", nrow(by_cause),
    " year x cause rows to data/clean/.\n\n", sep = "")
print(annual)

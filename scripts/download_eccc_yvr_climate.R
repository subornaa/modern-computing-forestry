# download_eccc_yvr_climate.R
# ---------------------------------------------------------------------------
# Reproducibly download daily climate data for Vancouver International Airport
# (YVR) from Environment and Climate Change Canada (ECCC), and write the
# teaching file data/inter_air_van_weather.csv.
#
# Station: Vancouver Int'l A — ECCC web stationID 51442 (Climate ID 1108447).
# Source : ECCC Historical Climate Data, bulk-download endpoint.
# Licence: Environment and Climate Change Canada open data.
#
# Run:  Rscript scripts/download_eccc_yvr_climate.R
# ---------------------------------------------------------------------------

suppressMessages({
  library(tidyverse)
  library(here)
})

station_id <- 51442   # YVR (web stationID, not the 1108447 Climate ID)
year       <- 2000    # the teaching year used throughout the book
timeframe  <- 2       # 1 = hourly, 2 = daily, 3 = monthly

# One daily request returns the whole calendar year. The Day value is
# ignored for daily data but the endpoint requires it.
url <- paste0(
  "https://climate.weather.gc.ca/climate_data/bulk_data_e.html",
  "?format=csv&stationID=", station_id,
  "&Year=", year, "&Month=1&Day=1&timeframe=", timeframe,
  "&submit=Download+Data"
)

dest <- here("data", "inter_air_van_weather.csv")
message("Downloading ECCC daily climate for station ", station_id,
        " (", year, ") ...")
download.file(url, dest, mode = "wb")

# Quick confirmation
wx <- readr::read_csv(dest, show_col_types = FALSE)
message("Wrote ", dest, " — ", nrow(wx), " rows x ", ncol(wx), " columns.")

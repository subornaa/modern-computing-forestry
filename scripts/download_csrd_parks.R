# download_csrd_parks.R
# ---------------------------------------------------------------------------
# Reproducibly download the Columbia Shuswap Regional District (CSRD) park
# point locations as GeoJSON, and write data/csrd_parks.geojson.
#
# Source : CSRD Open Data Portal (ArcGIS Hub) — "Park Locations" feature layer
#          https://data-csrd.opendata.arcgis.com/
# Licence: open (CSRD Open Data terms).
#
# Run:  Rscript scripts/download_csrd_parks.R
# ---------------------------------------------------------------------------

suppressMessages({
  library(sf)
  library(here)
})

# FeatureServer layer 0, queried for all features as GeoJSON.
url <- paste0(
  "https://services5.arcgis.com/wjH30HL7rqC55zVw/arcgis/rest/services/",
  "Park_Locations/FeatureServer/0/query",
  "?where=1=1&outFields=*&f=geojson"
)

dest <- here("data", "csrd_parks.geojson")
message("Downloading CSRD Park Locations GeoJSON ...")
download.file(url, dest, mode = "wb")

parks <- st_read(dest, quiet = TRUE)
message("Wrote ", dest, " — ", nrow(parks), " park points in ",
        st_crs(parks)$input, ".")

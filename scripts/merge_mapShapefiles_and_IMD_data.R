
## Join district seeking numbers to the shapefile (as a test. this will eventually be the IMD data).

### select the columns I want (count, long,. lat) 
seekcount <-  postcode_full_District %>%
  select(TotalResponsesDistrict,longitude,latitude)

### turn it into a simple features item specifiying coordinate columns and the right CRS

sf_seek <-st_as_sf(seekcount, coords=c("longitude","latitude"))
sf_seek <- sf_seek %>% st_set_crs(27700)

## Join based on polygon 

sf_district <- st_join(sf_seek,UK_ll)

## Make a new dataframe that just has districts and counts

sf_counts <- sf_district %>%
  select(NAME,TotalResponsesDistrict) %>%
  st_drop_geometry()

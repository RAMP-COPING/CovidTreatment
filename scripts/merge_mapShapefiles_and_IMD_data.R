codearea <- read_csv(paste0(MDIpaths,"/PCD_OA_LSOA_MSOA_LAD_NOV19_UK_LU.csv"))

codes <- codearea %>% 
  rename(Postcode = pcds,
         CODE = lsoa11cd,
         District = ladnm) %>%
  mutate(Postcode = str_replace(Postcode," ",""),
         Outcode = str_sub(Postcode,0,-4)) %>%
  select(Outcode,CODE,District) %>%
  arrange(CODE)

## merge district info to the IMD file

outcode_IMD <- inner_join(IMD,codes) %>%
  filter(!is.na(Rank))

## add IMD data to our postcode data

### this gives us something with longitude, latitude, LSOA code, Outcode, IMD rank, and all our other treatment data

postcode_IMD <- inner_join(postcode_full_District,outcode_IMD)

# select columns for IMD and turn it into a simple features file, setting he right CRS

IMD_shape <- postcode_IMD %>%
  st_as_sf(coords=c("longitude","latitude")) %>%
  st_set_crs(27700) 

# Now join to the UK map polygon data

IMD_mapdat <- st_join(IMD_shape,UK_ll)

IMD_mapdat <- IMD_mapdat %>%
  rename(CODE = CODE.x)

## Make a new dataframe that just has districts and IMD rank

IMD_only <- IMD_mapdat %>%
  select(CODE,Rank) %>%
  st_drop_geometry() 

test <- UK_ll %>%
  
# Choropleth map of UK districts (test for treatment paper)
# KLP
# 10/04/2021

# steps from https://bookdown.org/yann_ryan/r-for-newspaper-data/mapping-with-r-geocode-and-map-the-british-librarys-newspaper-collection.html

# download shapefiles (https://www.ordnancesurvey.co.uk/business-government/products/boundaryline) for GB (exc ireland)
# download shapefile for ireland 

# turn into sf object (sf is an r package called shapefile)
# Get boundary information
# join to title list
#retain only 


if(!require(sf)){
  install.packages("sf")
  library(sf)
}


## read in district shapefile

shape_GB <- st_read(paste0(postpath,"/GB_ordnancesurvey_shapefile/Data/GB/district_borough_unitary_region.shp"))
shape_IRE <- st_read(paste0(postpath,"/OSNI_Open_Data_shapefile/ce800a0a-cd74-4576-8183-86ebee08e876202044-1-n83mn4.9mdj.shp"))


# transform from UTM (universal transver mercator) to lat/long
## use crs (i.e.d code for which of the 60 projects UMT regions this map comes from) Ordnance Survey Great Britain 1936 system (OSGB36 - EPSG code: 27700)

GB_ll <- shape_GB %>%
  st_set_crs(27700)

IRE_ll <- st_transform(shape_IRE,crs = 27700)

## Restructure the IRE shapefile so it matches the UK one.

IRE_ll <- IRE_ll %>%
  rename(NAME = WARDNAME,
         FILE_NAME = LGDName,
         CODE = WardCode,
         NUMBER = OBJECTID) %>%
  relocate(NAME,FILE_NAME,NUMBER,CODE,AREA,Shape_Leng,Shape_Area,geometry) %>%
  select(NAME,FILE_NAME,NUMBER,AREA,geometry)

GB_ll <- GB_ll %>%
  select(NAME,FILE_NAME,NUMBER,CODE,AREA,geometry)

## create full shapefile
UK_ll <- rbind(GB_ll,IRE_ll) 






  

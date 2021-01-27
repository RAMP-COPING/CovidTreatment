## treatment maps 



## read in downloaded publically available UK outcode data and city names

postcode_df <- read_csv("/Users/kirstin/Dropbox/SGDP/RAMP/data/Postcode/postcode_outcodes.csv")
city_labels <- fread("/Users/kirstin/Dropbox/SGDP/RAMP/data/Postcode/postcodes.csv",
                     select  = c("Postcode area", "District", "County","Postcode district"))

## Rename city label columns
names(city_labels) <- c("Area","District","County","Outcode")

### fill district into county for scottish regions
city_labels$County <- ifelse(city_labels$County == "",city_labels$District,city_labels$County)


### flatten city labels

city_label_flat <-
  city_labels %>% 
  group_by(Outcode) %>% 
  slice(1)

## create postcode area columns

postcode_df_area <- 
  postcode_df %>%
  mutate(Area = sub("[0-9.]+","",postcode))

names(postcode_df_area)[2] <- "Outcode"

## Merge area and county data
postcode_df_area <- left_join(postcode_df_area,city_label_flat,by=c("Outcode","Area"))

## clean up

rm(postcode_df,city_labels,city_label_flat)


# Add count per area (county) for treatment seeking and receipt

postcode_full_seek$County <- ifelse(postcode_full_seek$District == "York","North Yorkshire",postcode_full_seek$County) 
postcode_full_seek$County <- ifelse(nchar(postcode_full_seek$Area) >2,"Greater London",postcode_full_seek$County) #Ensure long area codes that indicate London regions are identified as Lonond

lon_pat <- "([A-Z]{1})([[0-9]{1}])([A-Z]{1})" # detect london postcode patterns where it is letter_digit_letter in first half
postcode_full_seek$County <- ifelse(str_detect(postcode_full_seek$Outcode,lon_pat) == TRUE,"Greater London",postcode_full_seek$County) 

## count number of people in postcode area for each county

area_count_seek <- postcode_full_seek %>%
  group_by(County) %>%
  mutate(nCounty = sum(n))

## drop NA
area_count_seek <- area_count_seek[(area_count_seek$County != "" & !is.na(area_count_seek$County)),]

## keep only first row per county 

area_count_seek <-
  area_count_seek %>% 
  group_by(County) %>% 
  slice(1) %>%
  select(County,nCounty)

## barrier

postcode_full_barrier$County <- ifelse(postcode_full_barrier$District == "York","North Yorkshire",postcode_full_barrier$County) 
postcode_full_barrier$County <- ifelse(nchar(postcode_full_barrier$Area) >2,"Greater London",postcode_full_barrier$County) #Ensure long area codes that indicate London regions are identified as Lonond

lon_pat <- "([A-Z]{1})([[0-9]{1}])([A-Z]{1})" # detect london postcode patterns where it is letter_digit_letter in first half
postcode_full_barrier$County <- ifelse(str_detect(postcode_full_barrier$Outcode,lon_pat) == TRUE,"Greater London",postcode_full_barrier$County) 

## count number of people in postcode area for each county

area_count_barrier <- postcode_full_barrier %>%
  group_by(County) %>%
  mutate(nCounty = sum(n))

## drop NA
area_count_barrier <- area_count_barrier[(area_count_barrier$County != "" & !is.na(area_count_barrier$County)),]

## keep only first row per county 

area_count_barrier <-
  area_count_barrier %>% 
  group_by(County) %>% 
  slice(1) %>%
  select(County,nCounty)

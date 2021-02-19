# Add count per area (county) for treatment seeking and receipt

## count number of people in postcode area for each county
postcode_full_County <- postcode_full %>%
  group_by(County) %>%
  summarise(SeekCountyTotal = sum(TotalAreaSought),
            ReceiveCountyTotal = sum(TotalAreaReceived)) 

## add the gap between seeking and receipt per county 

postcode_full_County <- postcode_full_County %>%
  mutate(CountyGap =  SeekCountyTotal - ReceiveCountyTotal)



### there are negative numbers. Likely because of errors when I filled in county where there were typos/blanks (see RAMP_postcode_cleaning).
##For now, zero these, but should investigate

postcode_full_County$CountyGap <- ifelse(postcode_full_County$CountyGap < 0,0,postcode_full_County$CountyGap)


## count number of people in postcode area for each district

postcode_full_District<- postcode_full %>%
  group_by(District) %>%
  summarise(SeekDistrictTotal = sum(TotalAreaSought),
            ReceiveDistrictTotal = sum(TotalAreaReceived))

## add the gap between seeking and receipt per District

postcode_full_District <- postcode_full_District %>%
  mutate(DistrictGap =  SeekDistrictTotal - ReceiveDistrictTotal)

### there are negative numbers. Likely because of errors when I filled in county where there were typos/blanks (see RAMP_postcode_cleaning).
##For now, zero these, but should investigate

postcode_full_District$DistrictGap <- ifelse(postcode_full_District$DistrictGap < 0,0,postcode_full_District$DistrictGap)


## add lat and long back onto datasets

### slice first row for each county and distrcti

longlatcounty <- postcode_df_area %>%
  group_by(County) %>%
  slice(1) %>%
  select("County","longitude","latitude")

longlatdistrict <- postcode_df_area %>%
  group_by(District) %>%
  slice(1) %>%
  select("District","longitude","latitude")

### merge long lat onto the count daatsets


postcode_full_County <- left_join(postcode_full_County,longlatcounty)

postcode_full_District <- left_join(postcode_full_District,longlatdistrict)

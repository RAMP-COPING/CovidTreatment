## treatment maps postcode dataset creation for RAMP

## Add postcode to the treatment data

treat_dat <- merge(treat_dat,dem,all = TRUE)

## ensure all letters are uppercase. rename postcode to outcode and trim whitespace

treat_dat <- treat_dat %>%
  mutate(Outcode = toupper(Postcode))

treat_dat$Outcode <- str_squish(treat_dat$Outcode)

## Any treatment sought counts by region (i.e. how many people sought treatment at least once)

### first gather so we have whether they sought by ID
  
wide_seek <- treat_dat %>%
    group_by(ID,Outcode) %>%
    summarise(TimesSought = paste(AnySought,collapse=",")) %>%
    mutate(AnySought = case_when(grepl("1",TimesSought) ~ 1,
                                 grepl("0",TimesSought) ~ 0,
                                 TRUE ~ NA_real_)) 

### then gather by postcode

postcode_seek <- wide_seek %>%
  group_by(Outcode) %>%
  summarise(AreaSought = paste(AnySought,collapse=",")) %>%
  mutate(TotalAreaSought =  str_count(AreaSought,"1"))

## sought but did not receive by area (ie hving sought, count of any one whor eceived treatment at least once)


### first gather so we have whether they sought by ID

wide_receive <- treat_dat %>%
  group_by(ID,Outcode) %>%
  summarise(TimesReceived = paste(AnyReceived,collapse=",")) %>%
  mutate(AnyReceived = case_when(grepl("1",TimesReceived) ~ 1,
                               grepl("0",TimesReceived) ~ 0,
                               TRUE ~ NA_real_)) 

### then gather by postcode

postcode_receive <- wide_receive %>%
  group_by(Outcode) %>%
  summarise(AreaReceived = paste(AnyReceived,collapse=",")) %>%
  mutate(TotalAreaReceived =  str_count(AreaReceived,"1"))

## drop number only, prefer not to say, and other null rows
postcode_seek <- postcode_seek[(!is.na(postcode_seek$Outcode) == T),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "-"),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "..."),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "-77"),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "0751"),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "20"),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "217"),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "2334"),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "44"),]
postcode_seek <- postcode_seek[(postcode_seek$Outcode != "68"),]


postcode_receive <- postcode_receive[(!is.na(postcode_receive$Outcode) == T),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "-"),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "..."),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "-77"),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "0751"),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "20"),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "217"),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "2334"),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "44"),]
postcode_receive <- postcode_receive[(postcode_receive$Outcode != "68"),]

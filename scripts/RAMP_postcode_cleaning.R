## treatment maps postcode dataset creation for RAMP

## Add postcode to the treatment data

treat_dat <- merge(treat_dat,dem,all = TRUE)

# ensure all letters are uppercase. rename postcode to outcode

treat_dat <- treat_dat %>%
  mutate(Outcode = toupper(Postcode))

## Gather postcode data and add counts of people who sopught treatment at any time (at least once)

postcode_seek <- treat_dat %>%
  group_by(Outcode) %>%
  count(AnyReceived) %>% 
  select("Outcode","n")


## Gather postcode data and add counts of those who at some point sought but did not receive treatment (any time, at least once)

postcode_barrier <- treat_dat %>%
  group_by(Outcode) %>%
  count(AnyNoReceipt) %>% 
  select("Outcode","n")

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


postcode_barrier <- postcode_barrier[(!is.na(postcode_barrier$Outcode) == T),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "-"),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "..."),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "-77"),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "0751"),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "20"),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "217"),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "2334"),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "44"),]
postcode_barrier <- postcode_barrier[(postcode_barrier$Outcode != "68"),]

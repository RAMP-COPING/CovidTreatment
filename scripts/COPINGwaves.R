## Create wave column in COPING
## use start dates for data distribution emails to identify waves from the RAMP study to ensure that the waves are comparable time periods 
## across the two studies

## that means COPING will have no data for wave 1 (RAMP sent out a wave before COPING in set B)
## but will have a 6th wave as the set a questionnaire has already gone out for this sample, but RAMPS equivalent only goes out at the end of this month


# May
start1 <- as.POSIXct("2020-05-01")
end1 <-  as.POSIXct("2020-06-01")

# June
start2 <- as.POSIXct("2020-06-01")
end2 <-  as.POSIXct("2020-07-01")

#July
start3 <- as.POSIXct("2020-07-01")
end3 <-  as.POSIXct("2020-08-01")

#August
start4 <- as.POSIXct("2020-08-01")
end4 <-  as.POSIXct("2020-09-01")

#September
start5 <- as.POSIXct("2020-09-01")
end5 <-  as.POSIXct("2020-10-01")

#October
start6 <- as.POSIXct("2020-10-01")
end6 <-   as.POSIXct("2020-11-01") 

#November
start7 <- as.POSIXct("2020-11-01")
end7 <-   as.POSIXct("2020-12-01") 

#December
start8 <- as.POSIXct("2020-12-01")
end8 <-   as.POSIXct("2021-01-01") 

#January
start9 <- as.POSIXct("2021-01-01")
end9 <-   as.POSIXct("2021-02-01") 

treatCOPE <- 
  treatCOPE %>%
  mutate(wave =  case_when(startDate >= start1 & startDate < end1 ~ "May 2020",
                           startDate >= start2 & startDate < end2 ~ "June 2020",
                           startDate >= start3 & startDate < end3 ~ "July 2020",
                           startDate >= start4 & startDate < end4 ~ "August 2020",
                           startDate >= start5 & startDate < end5 ~ "September 2020",
                           startDate >= start6 & startDate < end6 ~ "October 2020",
                           startDate >= start7 & startDate < end7 ~ "November 2020",
                           startDate >= start8 & startDate < end8 ~ "December 2020",
                           startDate >= start9 & startDate < end9 ~ "January 2021"))
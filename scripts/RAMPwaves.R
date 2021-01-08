## Create wave column in RAMP
## Rather than using wave email outs, we will look at respondents by month
## Will be easier to comapre to covid across the year and to compare across samples


# May
start1 <- as.POSIXct("2020-05-01")
end1 <-  as.POSIXct("2020-05-31")

# June
start2 <- as.POSIXct("2020-06-01")
end2 <-  as.POSIXct("2020-06-30")

#July
start3 <- as.POSIXct("2020-06-30")
end3 <-  as.POSIXct("2020-07-31")

#August
start4 <- as.POSIXct("2020-08-01")
end4 <-  as.POSIXct("2020-09-01")

#September
start5 <- as.POSIXct("2020-09-01")
end5 <-  as.POSIXct("2020-09-30")

#October
start6 <- as.POSIXct("2020-10-01")
end6 <-   as.POSIXct("2021-10-31") 

#November
start7 <- as.POSIXct("2020-11-01")
end7 <-   as.POSIXct("2021-11-30") 

#December
start8 <- as.POSIXct("2020-12-01")
end8 <-   as.POSIXct("2020-12-31") 

#January
start9 <- as.POSIXct("2021-01-01")
end9 <-   as.POSIXct("2021-01-31") 


treatRAMP <- 
  treatRAMP %>%
  mutate(wave =  case_when(startDate >= start1 & startDate <= end1 ~ "May 2020",
                           startDate >= start2 & startDate < end2 ~ "June 2020",
                           startDate >= start3 & startDate < end3 ~ "July 2020",
                           startDate >= start4 & startDate < end4 ~ "August 2020",
                           startDate >= start5 & startDate < end5 ~ "September 2020",
                           startDate >= start6 & startDate < end6 ~ "October 2020",
                           startDate >= start7 & startDate < end7 ~ "November 2020",
                           startDate >= start8 & startDate < end8 ~ "December 2020",
                           startDate >= start9 & startDate < end9 ~ "January 2021"))
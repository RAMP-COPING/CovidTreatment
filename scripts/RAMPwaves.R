## Create wave column in RAMP


## Roughly by month.Some day discerpancies from pure calendar month to make sure there is no confusion with 
### survey send out dates

# June
start2 <- as.POSIXct("2020-06-01")
end2 <-  as.POSIXct("2020-06-29")  ## both RAMP and COPING ended by now, new RAMP started at 30 June

#July
start3 <- as.POSIXct("2020-06-30")
end3 <-  as.POSIXct("2020-07-27")

#August
start4 <- as.POSIXct("2020-07-28")
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

#February
start10 <- as.POSIXct("2021-02-01")
end10 <-   as.POSIXct("2021-03-01") 

#March
start11 <- as.POSIXct("2021-03-01")
end11 <-   as.POSIXct("2021-04-01") 

#April
start12 <- as.POSIXct("2021-04-01")
end12 <-   as.POSIXct("2021-05-01") 

#May
start13 <- as.POSIXct("2021-06-01")
end13 <-   as.POSIXct("2021-07-01") 

#June
start14 <- as.POSIXct("2021-06-01")
end14 <-   as.POSIXct("2021-07-01") 

#July
start15 <- as.POSIXct("2021-07-01")
end15 <-   as.POSIXct("2021-08-01") 

#August
start16 <- as.POSIXct("2021-08-01")
end16 <-   as.POSIXct("2021-09-01") 

#September
start17 <- as.POSIXct("2021-09-01")
end17 <-   as.POSIXct("2021-10-01") 

#October
start18 <- as.POSIXct("2021-10-01")
end18 <-   as.POSIXct("2021-11-01") 

#November
start19 <- as.POSIXct("2021-11-01")
end19 <-   as.POSIXct("2021-12-01") 

treatRAMP <- 
  treatRAMP %>%
  mutate(wave =  case_when(startDate >= start2 & startDate < end2 ~ "June 2020",
                           startDate >= start3 & startDate < end3 ~ "July 2020",
                           startDate >= start4 & startDate < end4 ~ "August 2020",
                           startDate >= start5 & startDate < end5 ~ "September 2020",
                           startDate >= start6 & startDate < end6 ~ "October 2020",
                           startDate >= start7 & startDate < end7 ~ "November 2020",
                           startDate >= start8 & startDate < end8 ~ "December 2020",
                           startDate >= start9 & startDate < end9 ~ "January 2021",
                           startDate >= start10 & startDate < end10 ~ "February 2021",
                           startDate >= start11 & startDate < end11 ~ "March 2021",
                           startDate >= start12 & startDate < end12 ~ "April 2021",
                           startDate >= start13 & startDate < end13 ~ "May 2021",
                           startDate >= start14 & startDate < end14 ~ "June 2021",
                           startDate >= start15 & startDate < end15 ~ "July 2021",
                           startDate >= start16 & startDate < end16 ~ "August 2021",
                           startDate >= start17 & startDate < end17 ~ "September 2021",
                           startDate >= start18 & startDate < end18 ~ "October 2021",
                           startDate >= start19 & startDate < end19 ~ "November 2021"))
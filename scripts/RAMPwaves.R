## Create wave column in RAMP
## use start dates for data distribution emails to identify waves


start1 <- as.POSIXct("2020-05-05")
end1 <-  as.POSIXct("2020-06-01")

start2 <- as.POSIXct("2020-06-02")
end2 <-  as.POSIXct("2020-06-29")

start3 <- as.POSIXct("2020-06-30")
end3 <-  as.POSIXct("2020-09-21")

start4 <- as.POSIXct("2020-09-22")
end4 <-  as.POSIXct("2020-11-016")

start5 <- as.POSIXct("2020-11-17")
end5 <-  as.POSIXct("2020-12-17")

treatRAMP <- 
  treatRAMP %>%
  mutate(wave =  case_when(startDate >= start1 & startDate <= end1 ~ 1,
                           startDate >= start2 & startDate <= end2 ~ 2,
                           startDate >= start3 & startDate <= end3 ~ 3,
                           startDate >= start4 & startDate <= end4 ~ 4,
                           startDate >= start5 & startDate <= end5 ~ 5,
                           TRUE ~ NA_real_))
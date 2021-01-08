## Creater wave column in RAMP

start1 <- as.POSIXct("2020-05-05")
end1 <-  as.POSIXct("2020-05-06")

start2 <- as.POSIXct("2020-05-05")
end2 <-  as.POSIXct("2020-05-06")

start3 <- as.POSIXct("2020-05-05")
end3 <-  as.POSIXct("2020-05-06")

start4 <- as.POSIXct("2020-05-05")
end4 <-  as.POSIXct("2020-05-06")

start5 <- as.POSIXct("2020-05-05")
end5 <-  as.POSIXct("2020-05-06")

start6 <- as.POSIXct("2020-05-05")
end6 <-  as.POSIXct("2020-05-06")

start7 <- as.POSIXct("2020-05-05")
end7 <-  as.POSIXct("2020-05-06")

treatRAMP <- 
  treatRAMP %>%
  mutate(wave =  case_when(startDate >= start1 & startDate <= end1 ~ 1,
                           startDate >= start2 & startDate <= end2 ~ 2,
                           startDate >= start3 & startDate <= end3 ~ 3,
                           startDate >= start4 & startDate <= end4 ~ 4,
                           startDate >= start5 & startDate <= end5 ~ 5,
                           startDate >= start6 & startDate <= end6 ~ 6,
                           startDate >= start7 & startDate <= end7 ~ 7,
                           TRUE ~ NA_real_))
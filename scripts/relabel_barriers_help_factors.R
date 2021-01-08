## label barrier and helpfulness factors


prevent_labels <-c("Could not get an appointment",
                   "Waiting list was too long",
                   "Was assessed and was unable to be offered support",
                   "None of the support options were relevant",
                   "Support option was unavailable when tried to access it",
                   "Didn't feel well enough to engage",
                   "Was too busy to engage",
                   "Felt better",
                   "Other")


helpful_labels <- c("Extremely unhelpful", "Very unhelpful", "Somewhat unhelpful", 
                    "Neither helpful nor unhelpful", "Somewhat helpful", "Very helpful", "Extremely helpful")

treat_dat[grep("prevent",names(treat_dat))] <- data.frame(treat_dat[grep("prevent",names(treat_dat))] %>%
                                                map(lfactor, levels = c(1,2,3,4,5,6,7,8,9), labels = prevent_labels))


treat_dat[grep("helpful",names(treat_dat))] <- data.frame(treat_dat[grep("helpful",names(treat_dat))] %>%
                                                            map(lfactor, levels = c(1,2,3,4,5,6,7), labels = helpful_labels))



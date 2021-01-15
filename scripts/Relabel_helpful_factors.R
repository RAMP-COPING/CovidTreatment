## relabel helpfullness factors for treatment data
    
helpful_labels <- c("Extremely unhelpful", "Very unhelpful", "Somewhat unhelpful", "Neither helpful nor unhelpful", "Somewhat helpful", "Very helpful", "Extremely helpful")


treat_dat[grep("helpful",names(treat_dat))] <- apply(treat_dat[grep("helpful",names(treat_dat))],2,function(x) ifelse(x == -77,NA,x))  
  
treat_dat[grep("helpful",names(treat_dat))] <- data.frame(treat_dat[grep("helpful",names(treat_dat))] %>%
                                                map(lfactor, levels = c(1,2,3,4,5,6,7), labels = helpful_labels))    
  
    
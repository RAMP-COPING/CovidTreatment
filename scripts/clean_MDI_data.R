# Clean MDI data
EngMDI <- read_csv(paste0(MDIpaths,"/IMD_England_2019.csv"))
ScotMDI <- read_csv(paste0(MDIpaths,"/IMD_Scotland_2020.csv"))
WaleMDI <- read_csv(paste0(MDIpaths,"/IMD_Wales_2019.csv"))
NIreMDI <- read_csv(paste0(MDIpaths,"/IMD_NI_2017.csv"))

## clean england data

names(EngMDI) <- c("CODE","DATE","Measurement","Units","Value","Indices")

### drop all rows except IMD rank
EngMDI <- EngMDI %>%
  filter(Indices == "a. Index of Multiple Deprivation (IMD)") %>%
  spread(Measurement,Value) %>%
  select(-c(Indices,DATE,Units,Decile,Score)) 

## Wales

names(WaleMDI) <- c("County","District","Rank","Income", "Employment", "Health", 
                    "Education", "Access to Services", "Community Safety", "Physical Environment", 
                    "Housing")

WaleMDI <- WaleMDI %>%
  select(-c("Income", "Employment", "Health", 
            "Education", "Access to Services", "Community Safety", "Physical Environment", 
            "Housing"))

## Scotland

names(ScotMDI) <- c("CODE","County","District","Total_population", 
                    "Working_age_population", "Rank", "SIMD2020v2_Income_Domain_Rank", 
                    "SIMD2020_Employment_Domain_Rank", "SIMD2020_Health_Domain_Rank", 
                    "SIMD2020_Education_Domain_Rank", "SIMD2020_Access_Domain_Rank", 
                    "SIMD2020_Crime_Domain_Rank", "SIMD2020_Housing_Domain_Rank")

ScotMDI <- ScotMDI %>%
  select(-c("Total_population", 
            "Working_age_population","SIMD2020v2_Income_Domain_Rank", 
            "SIMD2020_Employment_Domain_Rank", "SIMD2020_Health_Domain_Rank", 
            "SIMD2020_Education_Domain_Rank", "SIMD2020_Access_Domain_Rank", 
            "SIMD2020_Crime_Domain_Rank", "SIMD2020_Housing_Domain_Rank"))

## Northern Ireland

names(NIreMDI) <- c("County", "2015 Default Urban/Rural", "CODE", "District", 
                    "Rank", 
                    "Income Domain Rank \n(where 1 is most deprived)", "Employment Domain Rank (where 1 is most deprived)", 
                    "Health Deprivation and Disability Domain Rank (where 1 is most deprived)", 
                    "Education, Skills and Training Domain Rank (where 1 is most deprived)", 
                    "Access to Services Domain Rank (where 1 is most deprived)", 
                    "Living Environment Domain Rank (where 1 is most deprived)", 
                    "Crime and Disorder Domain Rank (where 1 is most deprived)", 
                    "X13")

NIreMDI <- NIreMDI %>%
  select(County,CODE,District,Rank)

## merge these together, keeping all of their information but into one file

IMD <- full_join(EngMDI,WaleMDI)
IMD <- full_join(IMD,ScotMDI)
IMD <- full_join(IMD,NIreMDI)





# libraries
if(!require(tidyverse)){
  install.packages("tidyverse")
  library(tidyverse)
}


if(!require(data.table)){
  install.packages("data.table")
  library(data.table)
}

if(!require(knitr)){
  install.packages("knitr")
  library(knitr)
}

if(!require(psych)){
  install.packages("psych")
  library(psych)
}

if(!require(polycor)){
  install.packages("polycor")
  library(polycor)
}

if(!require(corrplot)){
  install.packages("corrplot")
  library(corrplot)
}

if(!require(patchwork)){
  install.packages("patchwork")
  library(patchwork)
}

if(!require(ggpubr)){
  install.packages("ggpubr")
  library(ggpubr)
}

#if(!require(summarytools)){
#  install.packages("summarytools")
#}
#  library(summarytools)

if(!require(skimr)){
  install.packages("skimr")
  library(skimr)
}

if(!require(lfactors)){
  install.packages("lfactors")
  library(lfactors)
}

if(!require(Rfast)){
  install.packages("Rfast")
  library(Rfast)
}

## these overwrite map in dplyr, so only load when needed
# 
# if(!require(maps)){
#   install.packages("maps")
#   library(maps)
# }
# # get Uk from maps
# 
# UK <- map_data("world") %>% filter(region=="UK")
# 
# 
# if(!require(mapproj)){
#   install.packages("mapproj")
#   library(mapproj)
# }

if(!require(forcats)){
  install.packages("forcats")
  library(forcats)
}


if(!require(viridis)){
  install.packages("viridis")
  library(viridis)
}

# if(!require(ggformula)){
#   install.packages("ggformula")
#   library(ggformula)
# }


if(!require(ggpubr)){
  install.packages("ggpubr")
  library(ggpubr)
}

# if(!require(ggrepel)){
#   install.packages("ggrepel")
#   library(ggrepel)
# }



if(!require(stringi)){
  install.packages("stringi")
  library(stringi)
}

if(!require(eeptools)){
  install.packages("eeptools")
  library(eeptools)
}

# if(!require(Cairo)){
#   install.packages("Cairo")
#   library(Cairo)
# }

#if(!require(ggrepel)){
#  install.packages("ggrepel")
#  library(ggrepel)
#}

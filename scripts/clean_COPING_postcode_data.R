## clean the GLAD, EDGI and NBR postcode data
## first make everything all caps and remove spaces

## ensure all letters are uppercase. rename postcode to outcode and trim whitespace

GLADpostcode <- GLADpostcode %>%
  mutate(Postcode = toupper(Postcode)) %>%
  mutate(Postcode = str_replace(Postcode," ",""))


EDGIpostcode <- EDGIpostcode %>%
  mutate(Postcode = toupper(Postcode)) %>%
  mutate(Postcode = str_replace(Postcode," ",""))



## keep outcode only
##Drop last 3 letters

EDGIpostcode <- EDGIpostcode %>%
  mutate(Postcode = str_sub(Postcode,0,-4))

GLADpostcode <- GLADpostcode %>%
  mutate(Postcode = str_sub(Postcode,0,-4))

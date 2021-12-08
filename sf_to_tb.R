library(sf)
library(dplyr)

veg <- st_read('C:/Users/Contreras/Downloads/ZEE_PUNO_covegetal/zee_puno_covegetal.shp')
veg <- veg %>% select(-geometry)
tb <- as.data.frame(veg)

write.csv(tb, 'C:/Users/Contreras/Downloads/ZEE_PUNO_covegetal/tabla.csv')
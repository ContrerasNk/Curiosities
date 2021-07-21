jm1 <- st_read("/home/contreras/Desktop/BaseDatos/JesusMaria/JMSectores.shp")
jm1 <- geojsonsf::sf_geojson(jm1) 

# Como el hacer asset de GEE desde R
# resultado <- c(so2_antes,so2_despues)
# resultado <- jm1
# assetid <- paste0(ee_get_assethome(), 'jm1')
task_sf <- ee_table_to_asset(jm1,assetId = 'users/juliocontreras1/shapes/jm1',overwrite = FALSE)
task_sf$start()
ee_monitoring(task_sf)
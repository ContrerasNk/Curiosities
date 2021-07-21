# Generate Paths
setwd("/home/contreras/Desktop/EstadisticaDescriptivaR/r-basic/scripts/tema1/")

# Convert from IPYNB to RMD
file_nb_rmd = rmarkdown:::convert_ipynb(input = "07-io.ipynb")
st_nb_rmd = xfun::file_string(file_nb_rmd)

# Save RMD
fileConn <- file("07-io..rmd")
writeLines(st_nb_rmd, fileConn)
close(fileConn)

# Rmd to R
knitr::purl("07-io..rmd")694949461
# Generate Paths
setwd("C:/Users/Contreras/Desktop/Repos/EstadisticaDescriptiva/scripts/tema3")

# Convert from IPYNB to RMD
file_nb_rmd = rmarkdown:::convert_ipynb(input = "02-numpy.ipynb")
st_nb_rmd = xfun::file_string(file_nb_rmd)

# Save RMD
fileConn <- file("02-numpy.rmd")
writeLines(st_nb_rmd, fileConn)
close(fileConn)

# Rmd to R
# knitr::purl("05-math-python.rmd")

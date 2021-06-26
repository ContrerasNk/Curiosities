# Generate Paths
setwd("/home/contreras/Desktop/EstadisticaDescriptivaR/r-basic/scripts/tema1/")

# Convert from IPYNB to RMD
file_nb_rmd = rmarkdown:::convert_ipynb(input = "05-math-python.ipynb")
st_nb_rmd = xfun::file_string(file_nb_rmd)

# Save RMD
fileConn <- file("05-math-python.rmd")
writeLines(st_nb_rmd, fileConn)
close(fileConn)


# 13.
data(co2)
means = aggregate(co2, FUN = mean)
year = as.vector(time(means))
co2 = as.vector(means)
dif_co2 = diff(co2)

x = c(50:59)
y = c(2,9,25,3,100,77,62,54,19,40)
plot(year[-1],
     dif_co2, 
     pch = 23, 
     cex = 1, 
     col = "blueviolet", 
     type = "b", 
     bg = "black", 
     lwd = 2, 
     xaxp = c(1960,2020,60),
     main = "Diferencias consecutivas de CO2 1959 - 1997",
     xlab = "Años",
     ylab = "CO2 [ppm]",
     xlim = c(1960, 2020),
     ylim = c(0, 3))
points(2020, 2.64, col = "red", cex = 2, pch = 4)
arrows(2016.5, 1.8,2019.5,2.5, col = " blue", length = 0.3, angle = 5, code = 2, lty = 1)
text(2016, 1.7, labels = c("Diferencia en 2020"), cex = 0.8)

# 14.
rain = read.csv("C:/Users/Contreras/Downloads/rainfall.csv") #cambia la ruta
rain = rain[,3:12]
x = c()
for(i in 1:nrow(rain)){
  if(sum(rain[i,1:9] > 180) >= 1) {
    x = append(x, rain[i,10])
  }
}
x  


# 47
# Horizontal Bar Plot for 
# Ozone concentration in air 
barplot(airquality$Ozone, 
        main = 'Ozone Concenteration in air', 
        xlab = 'ozone levels', horiz = TRUE)

# 48
# Ozone concentration in air 
barplot(airquality$Ozone, main = 'Ozone Concenteration in air', 
        xlab = 'ozone levels', col ='blue', horiz = FALSE)

# 49
data(airquality) 

hist(airquality$Temp, main ="La Guardia Airport's\ 
Maximum Temperature(Daily)", 
     xlab ="Temperature(Fahrenheit)", 
     xlim = c(50, 125), col ="yellow", 
     freq = TRUE)

# 50
data(airquality) 

boxplot(airquality$Wind, main = "Average wind speed\ 
at La Guardia Airport", 
        xlab = "Miles per hour", ylab = "Wind", 
        col = "orange", border = "brown", 
        horizontal = TRUE, notch = TRUE)

# 51
# an Air Quality Parameter 
boxplot(airquality[, 0:4], 
        main ='Box Plots for Air Quality Parameters')

# 52
data(airquality) 

plot(airquality$Ozone, airquality$Month, 
     main ="Scatterplot Example", 
     xlab ="Ozone Concentration in parts per billion", 
     ylab =" Month of observation ", pch = 19)


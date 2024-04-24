# 41
temperatures <- c(22, 27, 26, 24, 23, 26, 28)

result <- barplot(temperatures, 
                  main = "Maximum Temperatures in a Week", 
                  xlab = "Day",
                  ylab = "Degree Celsius",
                  names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
                  col = "blue"
)

print(result)

# 42
temperatures <- c(67 ,72 ,74 ,62 ,76 ,66 ,65 ,59 ,61 ,69 )

# histogram of temperatures vector
result <- hist(temperatures,
               main = "Histogram of Temperature",
               xlab = "Temperature in degrees Fahrenheit",
               col = "red",
               xlim = c(50,100),
               ylim = c(0, 5))

print(result)

# 43
expenditure <- c(600, 300, 150, 100, 200)

result <- pie(expenditure,
              main = "Monthly Expenditure Breakdown",
              labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
              col = c("red", "orange", "yellow", "blue", "green")
)

print(result)

# 44
# add title, label, new color to boxplot
boxplot(mtcars$mpg,
        main="Mileage Data Boxplot",
        ylab="Miles Per Gallon(mpg)",
        xlab="No. of Cylinders",
        col="orange")

# 45
# add title, label, new color to strip chart
stripchart(airquality$Ozone,
           main="Mean ozone in parts per billion at Roosevelt Island",
           xlab="Parts Per Billion",
           ylab="Ozone",
           col="orange")

# 46
# create an empty vector a
a=c()

# display it
print(a)

# adding numbers from 1 to 
# 20 to a vector
a=1:20

# display a
print(a)








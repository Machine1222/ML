# Load required datasets
data(iris)
data(Titanic)
data(airquality)
data(mtcars)

# 36
pairs(
  mtcars,
  main = "Scatter Plot Matrix of mtcars",
  labels = colnames(mtcars),  # Label the axes with the variable names
  pch = 16,  # Point shape
  col = "blue"  # Color of the points
)
# 37
plot(iris$Petal.Length, iris$Petal.Width, col = iris$Species, 
     xlab = "Petal Length", ylab = "Petal Width", 
     main = "Petal Length vs. Petal Width")

legend("bottomright", legend = levels(iris$Species), col = 1:3, pch = 1, title = "Species")
# 38
# Load the built-in Titanic dataset
data("Titanic", package = "datasets")

# Convert the multi-dimensional table to a data frame
titanic_df <- as.data.frame(Titanic)

# Aggregate the data by survival status
survival_counts <- aggregate(Freq ~ Survived, data = titanic_df, sum)

# Create a bar plot showing the count of passengers by survival status
barplot(
  survival_counts$Freq,
  names.arg = survival_counts$Survived,
  xlab = "Survival Status",
  ylab = "Count",
  main = "Count of Passengers by Survival Status",
  col = c("blue", "red")
)

# 39
plot(airquality$Temp, airquality$Ozone, 
     col = ifelse(airquality$Wind > 10, "red", "blue"), 
     xlab = "Temperature", ylab = "Ozone Concentration", 
     main = "Relationship between Temperature and Ozone Concentration")

legend("topright", legend = c("Low Wind", "High Wind"), 
       col = c("blue", "red"), pch = 1, title = "Wind Speed")

# 40
boxplot(hp ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "Horsepower", main = "Distribution of Horsepower by Number of Cylinders")







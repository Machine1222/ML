# Load required datasets
data(iris)
data(Titanic)
data(airquality)
data(mtcars)

# 31

corr_matrix <- cor(airquality[, -5], use = "complete.obs")

# Check the resulting correlation matrix for any missing or infinite values
if (any(is.na(corr_matrix) | is.infinite(corr_matrix))) {
  stop("Correlation matrix contains missing or infinite values")
}

# Create a heatmap
heatmap(corr_matrix, xlab = "Variables", ylab = "Variables", main = "Correlation Heatmap",
        Rowv = NA, Colv = NA)


# 32
hist(mtcars$wt, xlab = "Car Weight", ylab = "Frequency", main = "Distribution of Car Weights")

# 33
my_data <- data.frame(
  Time = 1:150,
  Sepal.Length = iris$Sepal.Length
)

# Check that lengths are consistent
if (length(my_data$Time) == length(my_data$Sepal.Length)) {
  plot(my_data$Time, my_data$Sepal.Length, type = "l", 
       xlab = "Time", 
       ylab = "Sepal Length", 
       main = "Trend of Sepal Length over Time")
} else {
  stop("Lengths of 'Time' and 'Sepal.Length' do not match")
}
# 34
# Load the built-in Titanic dataset
data("Titanic", package = "datasets")

# Convert the multi-dimensional table to a data frame
titanic_df <- as.data.frame(Titanic)

# Summarize the total counts for each gender
gender_counts <- aggregate(Freq ~ Sex, data = titanic_df, sum)

# Create a pie chart showing the proportion of male and female passengers
pie(
  gender_counts$Freq,
  labels = gender_counts$Sex,
  main = "Proportion of Male and Female Passengers",
  col = c("pink", "lightblue")
)

# Creating a donut chart
pie(
  gender_counts$Freq,
  labels = gender_counts$Sex,
  main = "Donut Chart",
  col = c("pink", "lightblue"),
  radius = 0.8  # Adjust the radius to create space in the center
)

# Add a white circle to create the donut effect
symbols(0, 0, circles = 0.6, add = TRUE, inches = FALSE, bg = "white")

# 35
plot(density(airquality$Temp), main = "Density Plot of Temperature Values")

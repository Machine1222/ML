# Load required datasets
data(iris)
data(Titanic)
data(airquality)
data(mtcars)

# 21
plot(iris$Sepal.Length, iris$Sepal.Width, col = iris$Species, xlab = "Sepal Length", ylab = "Sepal Width", main = "Sepal Length vs. Sepal Width")
# 22
Titanic <- data.frame(
  PassengerID = 1:1000,
  Age = sample(1:80, 1000, replace = TRUE),
  Survived = sample(c("yes", "no"), 1000, replace = TRUE)
)

# Histogram for survived
hist(Titanic$Age[Titanic$Survived == "yes"], col = "blue",
     xlab = "Age", main = "Age Distribution for Survived and Not Survived Passengers",
     xlim = c(0, 80), ylim = c(0, 200), breaks = 20)

# Add histogram for not survived
hist(Titanic$Age[Titanic$Survived == "no"], col = "red", add = TRUE)

# Add legend
legend("topright", legend = c("Survived", "Not Survived"), fill = c("blue", "red"))


# 23
plot(airquality$Day, airquality$Ozone, type = "l", xlab = "Day", ylab = "Ozone Concentration", main = "Ozone Concentration over Time")
# 24
boxplot(mpg ~ am, data = mtcars, xlab = "Transmission", ylab = "Miles per Gallon", main = "Distribution of Miles per Gallon by Transmission Type")
# 25
pairs(iris[,1:4], col = iris$Species)



#22
Titanic <- data.frame(
  PassengerID = 1:1000,
  Age = sample(1:80, 1000, replace = TRUE),
  Survived = sample(c("yes", "no"), 1000, replace = TRUE)
)

# Histogram for survived
hist(Titanic$Age[Titanic$Survived == "yes"], col = "blue",
     xlab = "Age", ylab = "Frequency", main = "Age Distribution for Survived and Not Survived Passengers",
     xlim = c(0, 80), ylim = c(0, 120), breaks = seq(0, 80, by = 5), 
     border = "white",  # Add white borders for better separation
     density = 20,      # Increase density for better visualization
     angle = 45         # Rotate patterns for better differentiation
)

# Add histogram for not survived
hist(Titanic$Age[Titanic$Survived == "no"], col = "red", add = TRUE, 
     border = "white", density = 20, angle = 45)

# Add legend
legend("topright", legend = c("Survived", "Not Survived"), fill = c("blue", "red"))


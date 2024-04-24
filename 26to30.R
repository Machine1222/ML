# Load required datasets
data(iris)
data(Titanic)
data(airquality)
data(mtcars)

# 26
data("Titanic", package = "datasets")

# Convert the 4-dimensional table to a data frame
titanic_df <- as.data.frame(Titanic)

# Aggregate the data to get a count of survival status by passenger class
survival_by_class <- xtabs(Freq ~ Class + Survived, data = titanic_df)

# Create the barplot
barplot(
  survival_by_class,
  beside = FALSE,
  legend = rownames(survival_by_class),
  col = c("blue", "red"),
  xlab = "Passenger Class",
  ylab = "Count",
  main = "Survival Status by Passenger Class"
)
# 27
boxplot(Ozone ~ Month, data = airquality, xlab = "Month", ylab = "Ozone Concentration", main = "Distribution of Ozone Concentration Across Months")
# 28
barplot(table(mtcars$cyl), xlab = "Number of Cylinders", ylab = "Count", main = "Count of Cars by Number of Cylinders")
# 29
install.packages("ggplot2")
library(ggplot2)
ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_violin() +
  labs(title = "Violin Plot of Petal Length by Species", x = "Species", y = "Petal Length")
# 30
# Load the built-in Titanic dataset
data("Titanic", package = "datasets")

# Convert the 4D table to a data frame
titanic_df <- as.data.frame(Titanic)

# Sum the counts by class
class_counts <- aggregate(Freq ~ Class, data = titanic_df, sum)

# Create the pie chart
pie(class_counts$Freq, labels = class_counts$Class,
    main = "Proportion of Passengers by Class")


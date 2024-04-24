11
#install the package first
install.packages("reshape2")
library(reshape2)
# Sample data
stacked_data <- data.frame(
  Group = rep(c("Group A", "Group B"), each = 3),
  Category = c("X", "Y", "Z", "X", "Y", "Z"),
  Value = c(10, 15, 20, 5, 10, 15)
)

# Corrected acast call with 'sum' as the aggregation function
aggregated_data <- reshape2::acast(stacked_data, Group ~ Category, value.var = "Value", fun.aggregate = sum)

# Create the barplot
barplot(as.matrix(aggregated_data),
        main = "Composition of Different Groups",
        xlab = "Group", ylab = "Value", beside = FALSE, legend = TRUE,
        col = c("#F8766D", "#00BFC4", "#619CFF"))

12
hospital_data <- data.frame(Age = c(25, 30, 35, 40, 45),
                            Expenses = c(500, 600, 700, 800, 900))
plot(hospital_data$Age, hospital_data$Expenses, main = "Relationship Between Patient Age and Medical Expenses", 
     xlab = "Age", ylab = "Expenses", pch = 16)

13
employee_data <- data.frame(Department = c("HR", "Finance", "IT"),
                            Performance_Rating = c(3.5, 4.0, 3.8))
barplot(employee_data$Performance_Rating, names.arg = employee_data$Department, 
        main = "Average Performance Rating Across Departments", xlab = "Department", ylab = "Performance Rating")

14
student_data <- data.frame(Subject = c("Math", "Science", "History"),
                           Average_Score = c(75, 80, 85))
barplot(student_data$Average_Score, names.arg = student_data$Subject, 
        main = "Average Exam Scores Across Subjects", xlab = "Subject", ylab = "Average Score")

15
hospital_resources <- data.frame(Department = c("HR", "Finance", "IT"),
                                 Resources = c(50, 60, 70))
barplot(hospital_resources$Resources, names.arg = hospital_resources$Department, 
        main = "Distribution of Hospital Resources Across Departments", xlab = "Department", ylab = "Resources")


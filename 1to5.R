#1
stock_prices <- data.frame(Date = seq(as.Date("2023-01-01"), by = "month", length.out = 12),
                           Price = c(100, 105, 110, 115, 120, 125, 130, 135, 140, 145, 150, 155))
plot(stock_prices$Date, stock_prices$Price, type = "l", main = "Stock Prices Over Time", xlab = "Date", ylab = "Price")

#2
age_income <- data.frame(Age = c(25, 30, 35, 40, 45),
                         Income = c(40000, 45000, 50000, 55000, 60000))
plot(age_income$Age, age_income$Income, main = "Relationship Between Age and Income", xlab = "Age", ylab = "Income")

#3
grade_levels <- data.frame(Grade = c("1st", "2nd", "3rd", "4th", "5th"),
                           Number_of_Students = c(30, 35, 40, 45, 50))
barplot(grade_levels$Number_of_Students, names.arg = grade_levels$Grade, main = "Number of Students in Different Grade Levels", xlab = "Grade", ylab = "Number of Students")

#4
ages <- c(25, 28, 30, 32, 35, 38, 40, 42, 45, 48, 50, 52, 55)
hist(ages, main = "Distribution of Ages", xlab = "Age", ylab = "Frequency", col = "skyblue")

#5
heights <- data.frame(Gender = rep(c("Male", "Female"), each = 10),
                      Height = c(170, 175, 180, 185, 190, 165, 170, 175, 180, 185))
boxplot(Height ~ Gender, data = heights, main = "Comparison of Heights Between Males and Females", xlab = "Gender", ylab = "Height")


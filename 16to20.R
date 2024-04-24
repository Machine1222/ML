# 16
employee_hierarchy <- data.frame(Managerial_Level = c("Manager", "Supervisor", "Staff"),
                                 Employee_Count = c(10, 20, 30))
barplot(employee_hierarchy$Employee_Count, names.arg = employee_hierarchy$Managerial_Level, 
        main = "Employee Hierarchy Within the Organization", xlab = "Managerial Level", ylab = "Employee Count")

# 17
student_activities <- data.frame(Activity = c("Sports", "Arts", "Clubs"),
                                 Performance = c(80, 85, 90))
barplot(student_activities$Performance, names.arg = student_activities$Activity, 
        main = "Student Performance in Extracurricular Activities", xlab = "Activity", ylab = "Performance")

# 18
hospital_daily_count <- data.frame(Date = seq(as.Date("2023-01-01"), by = "day", length.out = 24),
                                   Patient_Count = c(20, 30, 35, 40, 45, 50, 55, 60, 65,
                                                     70, 75, 90, 95, 100, 105,  115,
                                                     120, 125, 130,  140, 145, 150, 160, 165))

# Plotting with improved aesthetics
plot(hospital_daily_count$Date, hospital_daily_count$Patient_Count, type = "l", 
     main = "Daily Patient Count in the Hospital", xlab = "Date", ylab = "Patient Count", 
     xaxt = "n", ylim = c(0, max(hospital_daily_count$Patient_Count) * 1.1), 
     col = "blue", lwd = 2)
axis.Date(side = 1, at = hospital_daily_count$Date, format = "%b %d", las = 2)
grid()

# 19
employee_salary_trend <- data.frame(
  Year = 2000:2020,
  Average_Salary = seq(50000, 80000, length.out = 21)
)

# Now create the plot
plot(employee_salary_trend$Year, employee_salary_trend$Average_Salary, type = "l",
     main = "Trend of Average Salary Over Time", xlab = "Year", ylab = "Average Salary")

# 20
student_age_data <- data.frame(Age = c(20, 22, 25, 28, 30, 32, 35, 38, 40, 42, 45))
hist(student_age_data$Age, main = "Distribution of Student Ages", xlab = "Age", ylab = "Frequency", col = "skyblue")








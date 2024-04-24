# 6
market_share <- data.frame(Company = c("Company A", "Company B", "Company C", "Company D"),
                           Market_Share = c(30, 25, 20, 25))
pie(market_share$Market_Share, labels = market_share$Company, main = "Market Share of Different Companies")

# 7
weights <- c(60, 65, 70, 75, 80, 85, 90, 95, 100, 105)
density <- density(weights)
plot(density, main = "Density Plot of Weights", xlab = "Weight")

# 8
correlation_matrix <- cor(mtcars)
image(correlation_matrix, main = "Correlation Matrix Heatmap")

# 9
bubble_data <- data.frame(Population = c(100000, 200000, 300000, 400000, 500000),
                          Income = c(40000, 45000, 50000, 55000, 60000),
                          Life_Expectancy = c(75, 78, 80, 82, 85))
plot(bubble_data$Income, bubble_data$Life_Expectancy, main = "Bubble Chart: Population vs. Income vs. Life Expectancy", xlab = "Income", ylab = "Life Expectancy", 
     pch = 20, cex = bubble_data$Population/100000, col = "blue")
legend("topright", legend = bubble_data$Population, title = "Population", pch = 20, col = "blue", pt.cex = bubble_data$Population/100000)

# 10
# if shows error install using command ->install.packages("vioplot")
library(vioplot)
violin_data <- data.frame(Group = rep(c("Group A", "Group B"), each = 50),
                          Value = c(rnorm(50), rnorm(50, mean = 2)))
vioplot(Value ~ Group, data = violin_data, main = "Comparison of Variable Distribution Across Groups", xlab = "Group", ylab = "Value")

# Load necessary library
library(ggplot2)
data <- data.frame(
  goals = c(10, 15, 8, 12, 20, 14, 18),
  training_hours = c(20, 25, 18, 22, 30, 24, 28),
  age = c(22, 24, 20, 23, 26, 25, 27),
  experience = c(2, 4, 1, 3, 5, 4, 6)
)
# Build regression model
model <- lm(goals ~ training_hours + age + experience, data = data)
# Summary of the regression model
summary(model)
# Plot regression results
ggplot(data, aes(x = training_hours, y = goals)) +
  geom_point() +
  geom_smooth(method = "lm", col = "blue") +
  labs(title = "Regression: Training Hours vs Goals", x = "Training Hours", y = "Goals Scored")
# Example dataset
fitness_data <- data.frame(
  fitness_score = c(80, 85, 75, 90, 95, 78, 88),
  performance_score = c(85, 90, 70, 95, 98, 76, 91)
)
# Compute Pearson correlation coefficient
correlation <- cor(fitness_data$fitness_score, fitness_data$performance_score, method = "pearson")
print(paste("Pearson Correlation Coefficient:", correlation))
home <- c(2, 3, 4, 1, 5, 3, 2)
away <- c(1, 2, 2, 0, 3, 2, 1)
# Perform t-test and print results  
t.test(home, away, alternative = "greater")
# Explanation:
 "greater" Tests whether the mean of the first group is significantly higher than the mean of the second group.
 • H₀: The mean home team score is less than or equal to the mean away team score.
 • H₁: The mean home team score is greater than the mean away team score.
 • Example: t.test(home, away, alternative = "greater")
 # Sample data
 data <- data.frame(
   team_type = c("Home", "Away", "Home", "Away", "Home", "Away", "Home", "Away"),
   goals = c(3, 1, 4, 2, 5, 1, 4, 2)
 )
 # Create boxplot
 ggplot(data, aes(x = team_type, y = goals, fill = team_type)) +
   geom_boxplot() +
   labs(title = "Boxplot: Home vs Away Goals",
        x = "Team Type",
        y = "Goals Scored")
 # Sample data showing goals scored over match weeks
 trend_data <- data.frame(
   match_week = 1:7,
   goals_scored = c(2, 3, 4, 1, 5, 3, 4)
 )
 library("ggplot2")
 trend_data <- data.frame(
   match_week = rep(1:7, 2),
   goals_scored = c(2, 3, 4, 1, 5, 3, 4, 1, 2, 3, 2, 4, 3, 5),
   player = rep(c("Player A", "Player B"), each = 7)
 )
 ggplot(trend_data, aes(x = match_week, y = goals_scored)) +
   geom_line(color = "darkgreen", size = 1.2) +
   geom_point(size = 3, color = "blue") +
   labs(title = "Trend of Goals Scored Over Matches",
        x = "Match Week",
        y = "Goals Scored")                                               
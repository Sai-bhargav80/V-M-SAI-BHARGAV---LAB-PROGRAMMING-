# EXPERIMENT 19: Simple Linear Regression (Sales ~ Spend)
# INPUT DATA: An illustrative advertising dataset is created below.
# Spend = 100,200,...,800; Sales = 20,30,40,50,55,65,75,85.
# Prediction inputs: Spend = 250, 450, 750.
# This is sample data, not the original external Advertising dataset.

advertising <- data.frame(
  Spend=c(100, 200, 300, 400, 500, 600, 700, 800),
  Sales=c(20, 30, 40, 50, 55, 65, 75, 85)
)

model <- lm(Sales ~ Spend, data=advertising)
print(summary(model))

new_data <- data.frame(Spend=c(250, 450, 750))
predictions <- predict(model, newdata=new_data)
print(predictions)

plot(advertising$Spend, advertising$Sales,
     main="Advertising Spend vs Sales",
     xlab="Spend", ylab="Sales")
abline(model, col="red")

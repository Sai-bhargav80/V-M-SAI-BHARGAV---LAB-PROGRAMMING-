# EXPERIMENT 20: Multiple Regression Using ChickWeight
# INPUT DATASET: ChickWeight is included with base R (datasets package).
# Response: weight; predictors: Time and Diet.
# Prediction inputs: Time = 10,15,20 and Diet = 1,2,3.

data("ChickWeight", package="datasets")
ChickWeight$Diet <- factor(ChickWeight$Diet)

model <- lm(weight ~ Time + Diet, data=ChickWeight)
print(summary(model))

new_data <- data.frame(
  Time=c(10, 15, 20),
  Diet=factor(c(1, 2, 3), levels=levels(ChickWeight$Diet))
)
predictions <- predict(model, newdata=new_data)
print(predictions)

actual <- ChickWeight$weight
predicted <- predict(model)
mse <- mean((actual - predicted)^2)
rmse <- sqrt(mse)

cat("Mean Squared Error:", mse, "\n")
cat("Root Mean Squared Error:", rmse, "\n")

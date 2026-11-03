# EXPERIMENT 21: Multinomial Logistic Regression Using iris
# INPUT DATASET: iris is included with base R (datasets package).
# Predictors: Petal.Length and Petal.Width.
# Target: Species (setosa, versicolor, virginica).
# Split: 80% training and 20% testing; random seed = 123.
# nnet package is installed automatically if it is not available.

if (!requireNamespace("nnet", quietly=TRUE)) {
  install.packages("nnet")
}
library(nnet)

data("iris", package="datasets")
set.seed(123)

sample_index <- sample(
  seq_len(nrow(iris)),
  size=floor(0.8 * nrow(iris))
)
train_data <- iris[sample_index, ]
test_data <- iris[-sample_index, ]

model <- multinom(
  Species ~ Petal.Length + Petal.Width,
  data=train_data,
  trace=FALSE
)
print(summary(model))

predictions <- predict(model, newdata=test_data)

confusion_matrix <- table(
  Actual=test_data$Species,
  Predicted=predictions
)
print(confusion_matrix)

accuracy <- sum(predictions == test_data$Species) / nrow(test_data)
cat("Accuracy:", round(accuracy * 100, 2), "%\n")

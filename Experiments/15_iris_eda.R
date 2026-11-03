# EXPERIMENT 15: Exploratory Data Analysis on iris Dataset
# INPUT DATASET: iris is included with base R (datasets package).
# Variables: Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, Species.
# Sepal length categories are created in this script.

data("iris", package="datasets")

print(dim(iris))
print(summary(iris))
print(sapply(iris[, 1:4], sd))
print(sapply(iris[, 1:4], quantile))

species_avg <- aggregate(. ~ Species, data=iris, FUN=mean)
print(species_avg)

iris$Sepal_Category <- cut(
  iris$Sepal.Length,
  breaks=c(0, 5, 6, 8),
  labels=c("Short", "Medium", "Long")
)

pivot_table <- xtabs(~ Species + Sepal_Category, data=iris)
print(pivot_table)
print(table(iris$Sepal_Category))

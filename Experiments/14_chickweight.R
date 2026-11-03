# EXPERIMENT 14: Explore and Manipulate ChickWeight Dataset
# INPUT DATASET: ChickWeight is included with base R (datasets package).
# Variables used: Chick, Time, Diet, weight.
# reshape2 is installed automatically if it is not available.

data("ChickWeight", package="datasets")
print(head(ChickWeight))

sorted_data <- ChickWeight[order(ChickWeight$weight), ]
cat("Sorted observations:\n"); print(head(sorted_data))

if (!requireNamespace("reshape2", quietly=TRUE)) {
  install.packages("reshape2")
}
library(reshape2)

melt_chick <- melt(
  ChickWeight,
  id.vars=c("Chick", "Time", "Diet"),
  measure.vars="weight"
)
print(head(melt_chick))

cast_chick <- dcast(
  melt_chick, Diet ~ Time,
  value.var="value", fun.aggregate=mean
)
print(cast_chick)

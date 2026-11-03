# EXPERIMENT 17: Explore the Titanic Dataset
# INPUT DATASET: Titanic is included with base R (datasets package).
# It is an aggregate frequency table with Class, Sex, Age category,
# Survived, and Freq. It does NOT contain individual passenger ages.
# The age histogram below uses an explicitly labeled illustrative sample.

data("Titanic", package="datasets")
titanic_data <- as.data.frame(Titanic)

barplot(
  xtabs(Freq ~ Class + Survived, data=titanic_data),
  beside=TRUE, legend=TRUE,
  main="Survival vs Passenger Class",
  xlab="Passenger Class", ylab="Number of Passengers"
)

barplot(
  xtabs(Freq ~ Sex + Survived, data=titanic_data),
  beside=TRUE, legend=TRUE,
  main="Survival by Gender",
  xlab="Gender", ylab="Number of Passengers"
)

# Illustrative age values (not actual Titanic passenger records)
titanic_age_sample <- c(
  2, 4, 8, 12, 15, 18, 21, 25, 28, 30,
  32, 35, 38, 40, 42, 45, 48, 50, 55, 60,
  65, 70, 75, 22, 27, 33, 36, 44, 52, 58
)

hist(titanic_age_sample,
     main="Illustrative Passenger Age Sample",
     xlab="Age", col="lightblue")

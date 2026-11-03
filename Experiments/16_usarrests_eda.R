# EXPERIMENT 16: EDA and Visualization Using USArrests
# INPUT DATASET: USArrests is included with base R (datasets package).
# Variables: Murder, Assault, UrbanPop, Rape.
# All statistics and plots use this built-in dataset.

data("USArrests", package="datasets")

print(summary(USArrests))
cat("State with largest Rape value:\n")
print(rownames(USArrests)[which.max(USArrests$Rape)])

cat("Maximum and minimum Murder rates:\n")
print(max(USArrests$Murder))
print(min(USArrests$Murder))

cat("Correlation matrix:\n")
print(cor(USArrests))

median_assault <- median(USArrests$Assault)
cat("States above median Assault:\n")
print(rownames(USArrests)[USArrests$Assault > median_assault])

q25 <- quantile(USArrests$Murder, 0.25)
cat("States in bottom 25% for Murder:\n")
print(rownames(USArrests)[USArrests$Murder <= q25])

hist(USArrests$Murder,
     main="Murder Rate Distribution", xlab="Murder Rate")
plot(density(USArrests$Murder), main="Murder Rate Density")
plot(USArrests$Murder, USArrests$Assault,
     main="Murder vs Assault", xlab="Murder", ylab="Assault")
barplot(USArrests$Murder[1:10],
        names.arg=rownames(USArrests)[1:10],
        las=2, main="Murder Rates of First 10 States")

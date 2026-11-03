# EXPERIMENT 12: Data Reshaping Using airquality Dataset
# INPUT DATASET: airquality is included with base R (datasets package).
# Variables: Ozone, Solar.R, Wind, Temp; identifiers: Month and Day.
# reshape2 is installed automatically if it is not available.

if (!requireNamespace("reshape2", quietly=TRUE)) {
  install.packages("reshape2")
}
library(reshape2)

data("airquality", package="datasets")
print(head(airquality))

melt_data <- melt(airquality, id.vars=c("Month", "Day"))
print(head(melt_data))

cast_data <- dcast(
  melt_data, Month ~ variable,
  fun.aggregate=mean, na.rm=TRUE
)
print(cast_data)

monthly_avg <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data=airquality, FUN=mean, na.rm=TRUE
)
print(monthly_avg)

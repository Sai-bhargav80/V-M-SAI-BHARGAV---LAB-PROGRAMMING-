# EXPERIMENT 11: Read a CSV File and Display Its Contents
# INPUT DATA: This script creates exam_data.csv with sample records
# if it does not already exist. It then reads that CSV file.
# No external CSV download is required.

csv_file <- "exam_data.csv"

if (!file.exists(csv_file)) {
  exam_data <- data.frame(
    name=c("Arun", "Bala", "Charan", "David", "Esha"),
    score=c(85, 70, 45, 90, 60),
    attempts=c(1, 2, 3, 1, 2),
    qualify=c(TRUE, TRUE, FALSE, TRUE, TRUE)
  )
  write.csv(exam_data, csv_file, row.names=FALSE)
}

data_csv <- read.csv(csv_file)
print(data_csv)
str(data_csv)
summary(data_csv)

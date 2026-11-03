# EXPERIMENT 10: Create and Manipulate exam_data Data Frame
# INPUT DATA: All five original records are entered below.
# An additional record and grade column are also added by this script.

exam_data <- data.frame(
  name=c("Arun", "Bala", "Charan", "David", "Esha"),
  score=c(85, 70, 45, 90, 60),
  attempts=c(1, 2, 3, 1, 2),
  qualify=c(TRUE, TRUE, FALSE, TRUE, TRUE)
)

cat("Original data:\n"); print(exam_data)
cat("Names:\n"); print(exam_data$name)
cat("First row:\n"); print(exam_data[1, ])
cat("Score column:\n"); print(exam_data[, 2])

exam_data[nrow(exam_data) + 1, ] <- list("Farhan", 75, 1, TRUE)
exam_data$grade <- c("A", "B", "C", "A", "B", "B")

cat("After adding row and column:\n"); print(exam_data)

sorted_data <- exam_data[order(exam_data$score), ]
cat("Sorted by score:\n"); print(sorted_data)

write.csv(exam_data, "exam_data.csv", row.names=FALSE)
cat("Saved file: exam_data.csv in the current working directory.\n")

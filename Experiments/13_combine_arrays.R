# EXPERIMENT 13: Combine Multiple Arrays Row-Wise
# INPUTS: Array 1 = 1:6; Array 2 = 7:12; Array 3 = 13:18.
# Each array has 2 rows and 3 columns. Inputs are created below.

arr1 <- array(1:6, dim=c(2, 3))
arr2 <- array(7:12, dim=c(2, 3))
arr3 <- array(13:18, dim=c(2, 3))

combined_array <- rbind(arr1, arr2, arr3)

cat("Array 1:\n"); print(arr1)
cat("Array 2:\n"); print(arr2)
cat("Array 3:\n"); print(arr3)
cat("Combined array:\n"); print(combined_array)

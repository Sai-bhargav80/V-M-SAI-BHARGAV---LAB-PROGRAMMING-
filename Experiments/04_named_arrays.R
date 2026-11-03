# EXPERIMENT 4: Arrays with Dimension Names and Element Extraction
# INPUTS: Values 1:12; dimensions 3 x 2 x 2.
# Row, column, and table names are defined inside the script.

arr <- array(
  1:12,
  dim=c(3, 2, 2),
  dimnames=list(
    c("Row1", "Row2", "Row3"),
    c("Col1", "Col2"),
    c("Table1", "Table2")
  )
)

print(arr)
cat("Element at [2,1,1]:\n"); print(arr[2, 1, 1])
cat("Element at [3,2,2]:\n"); print(arr[3, 2, 2])

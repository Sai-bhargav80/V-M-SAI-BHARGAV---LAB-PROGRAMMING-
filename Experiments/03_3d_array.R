# EXPERIMENT 3: Create and Display a 3D Array
# INPUTS: Values 1:24; rows = 3; columns = 4; tables = 2.
# All input values and dimensions are defined in this script.

array_values <- 1:24
array_dimensions <- c(3, 4, 2)
arr <- array(array_values, dim=array_dimensions)

print(arr)
cat("Dimensions (rows, columns, tables):\n")
print(dim(arr))

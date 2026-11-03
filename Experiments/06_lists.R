# EXPERIMENT 6: Create a List Containing Vectors, Matrices, and Functions
# INPUTS: Vector c(10,20,30,40); matrix values 1:9; function input 5.
# Every input object is created in this script.

my_vector <- c(10, 20, 30, 40)
my_matrix <- matrix(1:9, nrow=3)

my_function <- function(x) {
  return(x * x)
}

my_list <- list(Vector=my_vector, Matrix=my_matrix, Function=my_function)

print(my_list)
print(my_list$Vector)
print(my_list$Matrix)
cat("Function result for input 5:\n")
print(my_list$Function(5))

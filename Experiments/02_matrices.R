# EXPERIMENT 2: Create Labeled Matrices (5x4, 3x3, 2x2)
# INPUTS: Values 1:20, 1:9, and 1:4 are created in this script.
# Matrix 1 is filled by row; Matrix 2 by column; Matrix 3 by row.

mat1 <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE)
rownames(mat1) <- paste("Row", 1:5)
colnames(mat1) <- paste("Col", 1:4)

mat2 <- matrix(1:9, nrow=3, ncol=3, byrow=FALSE)
rownames(mat2) <- paste("R", 1:3)
colnames(mat2) <- paste("C", 1:3)

mat3 <- matrix(1:4, nrow=2, ncol=2, byrow=TRUE)

print(mat1); print(mat2); print(mat3)

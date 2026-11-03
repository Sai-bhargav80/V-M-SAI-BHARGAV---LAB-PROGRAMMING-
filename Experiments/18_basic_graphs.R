# EXPERIMENT 18: Create Different Types of Graphs in R
# INPUTS: X = 10,20,30,40,50; Y = 15,25,35,45,55.
# These vectors are defined below and used in all five graphs.

x <- c(10, 20, 30, 40, 50)
y <- c(15, 25, 35, 45, 55)

boxplot(x, main="Box Plot", ylab="Values")
hist(x, main="Histogram", xlab="Values")
barplot(x, main="Bar Plot", xlab="Categories", ylab="Values")
plot(x, y, type="l", main="Line Chart", xlab="X Values", ylab="Y Values")
plot(x, y, main="Scatter Plot", xlab="X Values", ylab="Y Values")

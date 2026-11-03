# EXPERIMENT 8: Generate Random Numbers from a Normal Distribution
# INPUTS: n = 100; mean = 50; standard deviation = 10; seed = 123.
# These values are set below; no external input is required.

set.seed(123)
sample_size <- 100
distribution_mean <- 50
distribution_sd <- 10

numbers <- rnorm(sample_size, mean=distribution_mean, sd=distribution_sd)
print(numbers)

cat("Frequency of rounded values:\n")
print(table(round(numbers)))

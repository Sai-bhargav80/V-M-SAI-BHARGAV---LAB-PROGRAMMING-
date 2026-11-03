# EXPERIMENT 7: Factors, Random Integers, and FizzBuzz
# INPUTS: Number = 24; random integer range = -50 to 50;
# count = 10; FizzBuzz range = 1 to 100.
# All inputs are assigned in this script.

num <- 24
cat("Factors of", num, ":\n")
for (i in seq_len(num)) {
  if (num %% i == 0) print(i)
}

set.seed(123)
random_numbers <- sample(-50:50, 10)
cat("10 random integers:\n"); print(random_numbers)

cat("FizzBuzz from 1 to 100:\n")
for (i in 1:100) {
  if (i %% 15 == 0) {
    print("FizzBuzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}

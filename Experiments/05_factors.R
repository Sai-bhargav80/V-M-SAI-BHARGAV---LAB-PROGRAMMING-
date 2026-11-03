# EXPERIMENT 5: Create and Manipulate Factor Variables
# INPUT DATASET: Base R built-in dataset women (height and weight).
# INPUTS: Heights are categorized as Short, Medium, or Tall.
# A reproducible random sample of 10 uppercase letters is also created.

data("women", package="datasets")

height_factor <- factor(
  cut(women$height,
      breaks=c(0, 60, 65, 75),
      labels=c("Short", "Medium", "Tall"))
)

cat("Built-in women dataset:\n")
print(women)
cat("Height factor:\n"); print(height_factor)
cat("Factor levels:\n"); print(levels(height_factor))
cat("Frequency table:\n"); print(table(height_factor))

set.seed(123)
letters_sample <- factor(sample(LETTERS, 10))
cat("Random LETTERS sample:\n"); print(letters_sample)
cat("Levels:\n"); print(levels(letters_sample))

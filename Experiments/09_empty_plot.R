# EXPERIMENT 9: Create an Empty Plot with Axis Limits
# INPUTS: X-axis limits 0 to 10; Y-axis limits 0 to 20.
# Plot labels and limits are specified in the plot command.

plot(
  1, 1, type="n",
  xlim=c(0, 10), ylim=c(0, 20),
  xlab="X Axis", ylab="Y Axis",
  main="Empty Plot"
)

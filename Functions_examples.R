# --Defining functions--

# You will encounter situations in which the function you need does
# not already exist. R permits you to write your own. 

# Let's practice one such situation, in which you first 
# need to define the function to be used. The functions you define
# can have multiple arguments as well as default values.

# To define functions we use function. 
# For example the following function adds 1 to the number 
# it receives as an argument:

my_func <- function(x){
  y <- x + 1
  y
}
my_func(5)


# --Example-- 

# We will define a function sum_n for this exercise.

# Create a function sum_n that for any given value, 
# say n, creates the vector 1:n, and then computes the
# sum of the integers from 1 to n.

# Use the function you just defined to determine the sum of
# integers from 1 to 5,000.

# Create function called `sum_n`

sum_n <- function(n)
{
  y <- n*(n+1)/2
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)


# We will make another function for this exercise.

# We will define a function altman_plot that takes two arguments
# x and y and plots the difference y-x in the y-axis
# against the sum x+y in the x-axis.

log_plot <- function(x, y){
  plot(log10(x), log10(y))
}



#We will make another function for this exercise.

# --Example--

# Create a function altman_plot that takes two arguments
# x and y and plots y-x (on the y-axis) against x+y (on the x-axis).

# Note: don't use parentheses around the arguments in 
# the plot function because you will confuse R.

# Create `altman_plot` 
altman_plot <- function(x,y)
{
  plot(x+y,y-x)
}




# --Sequences--

# The : operator helps us create sequences of numbers. 
# For example, 32:99 would create a list of numbers from 32 to 99.

#Then, if we want to know the length of this sequence, all we need to do is use the length command.

# Create a vector m of integers that starts at 32 and ends at 99.
m <- 32:99

# Determine the length of object m.
length(m)


# We can also create different types of sequences in R. 
# For example, in seq(7, 49, 7), the first argument defines the start, 
# and the second the end. The default is to go up in increments of 1, 
#but a third argument lets us tell it by what interval.

# Create a vector with the multiples of 7, smaller than 50.
seq(7, 49, 7) 

# Create a vector containing all the positive odd numbers smaller than 100.
# The numbers should be in ascending order
seq(1, 99, 2) 

# --Example--
# Create a vector of numbers that starts at 6, 
# does not go beyond 55, and adds numbers in increments of 4/7. 
#So the first three numbers will be 6, 6+4/7, and 6+8/7. 
#How many numbers does the list have? 

x <- seq(6,55,4/7)
length(x)


# --Sequences of certain length--

# The seq() function has another useful argument. 
# The argument length.out. This argument lets us generate sequences that are increasing 
# by the same amount but are of the prespecified length.

#For example, this line of code

a <- seq(0, 100, length.out = 5)    #produces the numbers 0, 25, 50, 75, 100.
lenght(a)
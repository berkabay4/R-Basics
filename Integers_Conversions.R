# --Integers--

# We have discussed the numeric class. 
# We just saw that the seq function can generate objects of this class. 
# For another example, type
class(seq(1, 10, 0.5))

# into the console and note that the class is numeric. 
# R has another type of vector we have not described, the integer class. 
#You can create an integer by adding the letter L after a whole number. If you type
class(3L)

# in the console, you see this is an integer and not a numeric. 
# For most practical purposes, integers and numerics are indistinguishable. 
# For example 3, the integer, minus 3 the numeric is 0. To see this type this in the console
3L - 3

# Check the class of 1, assigned to the object a
class(1)

# Confirm the class of 1L is integer
class(1L)

# --Coercion/Conversions--

# The concept of coercion is a very important one. 
# Watching the video, we learned that when an entry does not match what an R function is expecting,
# R tries to guess what we meant before throwing an error. 

#This might get confusing at times.

# As we've discussed in earlier questions, there are numeric and character vectors. 
# The character vectors are placed in quotes and the numerics are not.

# We can avoid issues with coercion in R by changing characters to numerics and vice-versa. 
# This is known as typecasting. The code, as.numeric(x) helps us convert character strings to numbers. 
# There is an equivalent function that converts its argument to a string, as.character(x).

# Define the vector mx
mx <- c(1, 3, 5,"a")

# Note that the x is character vector
mx

# Redefine `mx` to typecast it to get an integer vector using `as.numeric`.
# You will get a warning but that is okay

mx <- as.numeric(mx)



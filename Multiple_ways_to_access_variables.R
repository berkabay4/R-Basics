# An important lesson you should learn early on is that there are multiple ways to do things in R. 
# For example, to generate the first five integers we note that 1:5 and seq(1,5) return the same result.

# There are also multiple ways to access variables in a data frame. 
# For example we can use the square brackets [[ instead of the accessor $. 
                                      
# If you instead try to access a column with just one bracket

library(dslabs)
data(murders)

# We extract the population like this:
p <- murders$population

# This is how we do the same with the square brackets:
o <- murders[["population"]] 

# We can confirm these two are the same
identical(o, p)

# Use square brackets to extract `abb` from `murders` and assign it to b

a <- murders$abb

b <- murders[["abb"]]

identical(a,b)

# Check if `a` and `b` are identical 

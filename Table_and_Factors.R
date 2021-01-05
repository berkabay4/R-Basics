# --Factors & Tables--

library(murders)
dslabs(murders)


# --Factors--

# Using the str() command, we saw that the region column stores a factor. 
# You can corroborate this by using the class command on the region column.

# The function levels shows us the categories for the factor.

# We can see the class of the region variable using class
class(murders$region)

# Determine the number of regions included in this variable 
a <- levels(murders$region)

length(a)


# --Table--

# The function table takes a vector as input and returns the frequency of 
# each unique element in the vector.

# We will use the table function to answer this question.

# Use the table function in one line of code to 
# create a table showing the number of states per region.

# The "c" in `c()` is short for "concatenate," which is the action of connecting items into a chain
# The function `c()` connects all of the strings within it into a single vector, which we can assign to `x`

x <- c("a", "a", "b", "b", "b", "c")

# Here is an example of what the table function does
table(x)


# Write one line of code to show the number of states per region
murder_regiontable <- table(murders$region)

#Shown Table "murder_regiontable"
murder_regiontable

library(murders)
dslabs(murders)


# -- Sort -- 

# When looking at a dataset, we may want to sort the data in an order that makes more sense for analysis.
# Let's learn to do this using the murders dataset as an example

# Access the `state` variable and store it in an object 
states <- murders$state 

# Sort the object alphabetically and redefine the object 
states <- sort(states) 

# Report the first alphabetical value  
states[1]

# Access population values from the dataset and store it in pop
pop <- murders$pop

# Sort the object and save it in the same object 
pop <- sort(pop)

# Report the smallest population size 
pop[1]


# --Order--

# The function order() returns the index vector needed to sort the vector. 
# This implies that sort(x) and x[order(x)] give the same result.

# This can be useful for finding row numbers with certain properties 
# such as "the row for the state with the smallest population". 
# Remember that when we extract a variable from a data frame the order of the resulting vector
# is the same as the order of the rows of the data frame. So for example, 
# the entries of the vector murders$state are ordered in the same way as the states
# if you go down the rows of murders.

# Access population from the dataset and store it in pop
pop2 <- murders$population

# Use the command order to find the vector of indexes that order pop and store in object ord
sort <- sort(pop2)
ord <- order(pop2)

# Find the index number of the entry with the smallest population size
ord[1]

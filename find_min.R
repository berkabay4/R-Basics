library(murders)
dslabs(murders)

# --Which.min--

# We can actually perform the same operation as in the previous exercise using the function which.min.
# It basically tells us which is the minimum value.

# Find the index of the smallest value for variable total 
which.min(murders$total)

# Find the index of the smallest value for population
which.min(murders$population)

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define variable states to hold the states
states <- murders$state

# Use the index you just defined to find the state with the smallest population
states[i]
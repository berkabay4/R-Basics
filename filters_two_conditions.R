# -- filter with %in% --


# Load dplyr
library(dplyr)
library(dslabs)
data(murders)

# We can also use the %in% to filter with dplyr.
# For example you can see the data from New York and Texas like this:

filter(murders, state %in% c("New York", "Texas"))

# --Example--

# Create a new data frame called murders_nw with only the states 
# from the Northeast and the West.
#How many states are in this category?

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c("Northeast", "West"))


# Number of states (rows) in this category 
nrow(murders_nw)



# -- filtering by two conditions --

# Suppose you want to live in the Northeast or West and want the murder rate
# to be less than 1. We want to see the data for the states satisfying these options.
# Note that you can use logical operators with filter:

filter(murders, population < 5000000 & region == "Northeast")


# -- Example--

# Add a murder rate column and a rank column as done before
# Create a table, call it my_states, that satisfies both 
# the conditions: it is in the Northeast or West and the murder rate is less than 1.

# Use select to show only the state name, the rate and the rank

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 

# Use select to show only the state name, the murder rate and the rank

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 
my_states2 <- filter(murders, rate < 1 & region %in% c("Northeast", "West"))

# Use select to show only the state name, the murder rate and the rank
select(my_states2, state, rate, rank)








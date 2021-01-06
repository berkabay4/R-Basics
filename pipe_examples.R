# --Using the pipe %>%--

# The pipe %>% can be used to perform operations sequentially 
# without having to define intermediate objects. 

# After redefining murder to include rate and rank.

library(dplyr)
murders <- mutate(murders, rate =  total / population * 100000, rank = (-rate))

# in the solution to the previous exercise we did the following:

# Created a table 
my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1)

# Used select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)

# The pipe %>% permits us to perform both operation sequentially
# and without having to define an intermediate variable my_states

# For example we could have mutated and selected in the same line like this:

mutate(murders, rate =  total / population * 100000, rank = (-rate)) %>% select(state, rate, rank)
  
  
# Note that select no longer has a data frame as the first argument. 
# The first argument is assumed to be the result of the operation 
# conducted right before the %>%


# --Example--

# Repeat the previous exercise, but now instead of creating a new object, 
# show the result and only include the state, rate, and rank columns in that order.
# Use a pipe %>% to do this in just one line.


# Load library
library(dplyr)

## Define the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line, in that order
filter(murders, region %in% c("Northeast", "West") & rate < 1) %>% 
select(state, rate, rank)


# --mutate, filter and select--

#Now we will reset murders to the original table by using data(murders).



# --Example--

# Use one line of code to create a new data frame, called my_states, 
# that has murder rate and rank columns (with the rank ordered from highest to lowest), considers only states in the Northeast or West which have a murder rate lower than 1, and contain only the state, rate, and rank columns. The line should have four components separated by three %>% operators:
  
# The original dataset murders

# A call to mutate to add the murder rate and the rank.
# A call to filter to keep only the states from the Northeast or West 
# and that have a murder rate below 1.

# A call to select that keeps only the columns with the state name, 
#the murder rate, and the rank.

# The line should look something like this
# my_states <- murders %>% mutate something %>% filter something %>% select 
# something. Columns in the final data frame MUST be in the order: state, rate, rank.

# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states (with specifications in the instructions)
my_states_pipe <- murders %>% mutate(rate =  total / population * 100000, rank = rank(-rate)) %>%
  
filter(region %in% c("Northeast", "West") & rate < 1) %>% 
  
select(state, rate, rank)

my_states_pipe

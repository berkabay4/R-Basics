library(murders)
dslabs(murders)

# --Ranks--

# You can create a data frame using the data.frame function. Here is a quick example:

# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define a variable states to be the state names from the murders data frame
states <- murders$state

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Create a data frame my_df with the state name and its rank
my_df <- data.frame(states = states, ranks = ranks)



# --Data Frames, Ranks and Orders--

# his exercise is somewhat more challenging. We are going to repeat the previous exercise
# but this time order my_df so that the states are ordered from least populous to most.

# Create variables states and ranks to store the state names and ranks by population size 
# respectively.
# Create an object ind that stores the indexes needed to order the population values, 
# using the order command. 
# For example we could define o <- order(murders$population)

# Create a data frame with both variables following the correct order. 
# Use the bracket operator [ to re-order each column in the data frame.
# For example, states[o] orders the abbreviations based by population size.

# The columns of the data frame must be in the specific 
# order and have the specific names: states, ranks.

# Define a variable states to be the state names from the murders data frame
states <- murders$state

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)

# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(states = states[ind], ranks = ranks[ind])

                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                

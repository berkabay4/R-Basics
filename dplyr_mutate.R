# --dplyr--

# Load the dplyr package and the murders dataset.

library(dplyr)
library(dslabs)
data(murders)

# You can add columns using the dplyr function mutate. 
# This function is aware of the column names and inside 
# the function you can call them unquoted. 
# Like this:
# murders <- mutate(murders, population_in_millions = population / 10^6)

# Note that we can write population rather than murders$population. 
# The function mutate knows we are grabing columns from murders.

# Example

# Use the function mutate to add a murders 
# column named rate with the per 100,000 murder rate.

# Make sure you redefine murders as done in the example code above.

# Remember the murder rate is defined as the total 
# murders divided by the population size times 100,000.

# Redefine murders so that it includes a column named rate with the per 100,000 murder rates
# murders <- mutate(murders, murder_rate = murders$total / murders$population * 100000)


# --mutate--

# Note that if rank(x) gives you the ranks of x from lowest to highest, 
# rank(-x) gives you the ranks from highest to lowest.

# Use the function mutate to add a column rank containing the rank, 
# from highest to lowest murder rate. Make sure you redefine murders

# Note that if you want ranks from highest to 
# lowest you can take the negative and then compute the ranks 

x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <-  murders$total/ murders$population * 100000


# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
rank_rate <- rank(-rate)
murders <- mutate(murders, rank = rank_rate)





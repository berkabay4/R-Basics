# --Logical Vectors--

# Load the data
library(dslabs)
data(murders)

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 
low <-  murder_rate < 1

# Get the indices of entries that are below 1
which(murder_rate<1)

# Names of states with murder rates lower than 1
murders$state[low]

# States in the Northeast with murder rates lower than 1; store in 'ind'
ind <- low & murders$region=="Northeast"

# Names of states in `ind`
murders$state[ind]


# --Exaple--

# In a previous exercise we computed the murder rate for each state and the average of these numbers.
# How many states are below the average?

murder_rate <- murders$total/murders$population*100000

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000


# Compute the average murder rate using `mean` and store it in object named `avg`
avg <- mean(murder_rate)

# How many states have murder rates below avg ? Check using sum 
x <- murder_rate < avg 
sum(x)

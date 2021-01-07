library(dslabs)
data(murders)

# --Histograms--


# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population/10^6


# Create a histogram of this variable
hist(population_in_millions)

# --Boxplots--

# Boxplots are useful when we want a summary of several variables or several 
# strata of the same variables. Making too many histograms can become too cumbersome.

#In one line of code:

# Stratify the state populations by region.

# Generate boxplots for the strata.

# Note that you can achieve this using this population~region

# inside boxplot to generate the strata and specify the 
# dataset with the data argument.


# Create a boxplot of state populations by region for the murders dataset
boxplot(murders$population~murders$region)


#or boxplot(population~region, data = murders)












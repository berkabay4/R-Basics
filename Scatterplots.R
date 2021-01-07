# --Scatterplots--


# We made a plot of total murders versus population and noted a strong relationship: 
# not surprisingly states with larger populations had more murders. 
# You can run the code in the console to get the plot.

# Load the datasets and define some variables

library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

# Note that many states have populations below 5 million and are bunched up in the plot. 
# We may gain further insights from making this plot in the log scale.


# --Example--

# Transform the variables using the log base 10 transformation

# Plot the log transformed total murders versus population


# Transform population using the log10 transformation and save to object log10_population
log10_population <- log10(murders$population)

# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log10(murders$total)
# Create a scatterplot with the log scale transformed population and murders 
plot(log10_population, log10_total_gun_murders)





library(dslabs)
data(murders)

# --Histograms--

population_in_millions <- murders$population/10^6


# histogram oluþturma
hist(population_in_millions)

# --Boxplots--


boxplot(murders$population~murders$region)


#veya boxplot(population~region, data = murders)












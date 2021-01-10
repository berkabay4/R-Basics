# --Scatterplots--




library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)       # plot(x, y) 


log10_population <- log10(murders$population)

log10_total_gun_murders <- log10(murders$total)
 
plot(log10_population, log10_total_gun_murders)





library(dslabs)
dslabs(murders)


# -- Sort -- 

states <- murders$state 

# State de�erlerini alfabetik olarak s�rala .
states <- sort(states) 

# 1. de�eri g�ster.
states[1]

pop <- murders$pop

# K���kten b�y��e s�rala.
pop <- sort(pop)

# En d���k pop�lasyon de�erini g�ster.
pop[1]


# --Order--

#order() komutu ile indexlerine g�re s�ralama yap�labilir.

pop2 <- murders$population

sort <- sort(pop2)
ord <- order(pop2)

ord[1]

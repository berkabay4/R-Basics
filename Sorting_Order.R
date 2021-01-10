library(dslabs)
dslabs(murders)


# -- Sort -- 

states <- murders$state 

# State deðerlerini alfabetik olarak sýrala .
states <- sort(states) 

# 1. deðeri göster.
states[1]

pop <- murders$pop

# Küçükten büyüðe sýrala.
pop <- sort(pop)

# En düþük popülasyon deðerini göster.
pop[1]


# --Order--

#order() komutu ile indexlerine göre sýralama yapýlabilir.

pop2 <- murders$population

sort <- sort(pop2)
ord <- order(pop2)

ord[1]

library(dslabs)
dslabs(murders)

# --Which.min--

# which.min() ile en küçük deðerin indexine ulaþýlabilir.

# minimum deðerin indexini verir
which.min(murders$total)

which.min(murders$population)


# en düþük popülasyona sahip þehirin ismini bulmak için ;

# min popülasyon deðerinin indexi i deðiþkenine aktarýlýr.
i <- which.min(murders$population)

# Þehir isimlerini içeren states oluþturulur.
states <- murders$state

# States içerisinde i indexli deðer gösterilir.
states[i]
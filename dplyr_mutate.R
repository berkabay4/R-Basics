# --dplyr--


library(dplyr)
library(dslabs)
data(murders)



# --mutate--

# rank(x) x vektörü(n elemanlý) içerisindeki en küçük deðere "1" en düþük deðere ise "n" deðeri yazar
# rank(-x) yazarak en yüksek deðere "1" en düþük deðere "n" yazdýrýlabilir.

x <- c(88, 100, 83, 92, 94)
rank(-x)

rate <-  murders$total/ murders$population * 100000


rank_rate <- rank(-rate)
murders <- mutate(murders, rank = rank_rate)





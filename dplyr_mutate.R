# --dplyr--


library(dplyr)
library(dslabs)
data(murders)



# --mutate--

# rank(x) x vekt�r�(n elemanl�) i�erisindeki en k���k de�ere "1" en d���k de�ere ise "n" de�eri yazar
# rank(-x) yazarak en y�ksek de�ere "1" en d���k de�ere "n" yazd�r�labilir.

x <- c(88, 100, 83, 92, 94)
rank(-x)

rate <-  murders$total/ murders$population * 100000


rank_rate <- rank(-rate)
murders <- mutate(murders, rank = rank_rate)





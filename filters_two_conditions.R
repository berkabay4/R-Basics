# -- %in% ile filtreleme --

library(dplyr)
library(dslabs)
data(murders)


filter(murders, state %in% c("New York", "Texas"))



# Sadece Northeast ve West bölgelerinde bulunan cinayetleri içeren murders_nw tablosu
murders_nw <- filter(murders, region %in% c("Northeast", "West"))


nrow(murders_nw)



# -- 2 koþula göre filtreleme --


# populasyonu 5000000 'den küçük olan ve Northeast bölgesinde bulunan deðerleri göster
filter(murders, population < 5000000 & region == "Northeast")



# Rate kolonu murders dataframe 'e eklenir.
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# my_states2; rate deðeri 1 den küçük ve bölge deðiþkenleri Northeast ve West olan deðerleri içeren df  
my_states2 <- filter(murders, rate < 1 & region %in% c("Northeast", "West"))

# Oluþturulan df 'nin state, rate ve rank özelliklerini göster
select(my_states2, state, rate, rank)








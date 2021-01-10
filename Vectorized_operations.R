# -- Vectorized operations -- 

 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

temp <- c(35, 88, 42, 84, 81, 30)   #[F]

# temp içerisindeki F deðerleri C ye çevir ve temp 'e yükle
temp <- (5/9) * (temp-32)           #[C]



# sýcaklýk ve isimlerin bulunduðu dataframe oluþtur.
city_temps <- data.frame(name = city , temperature = temp)



# --Example--

# Yan tarafta bulunan denklemin deðeri kaçtýr: 1 + 1/2^2 + 1/3^2 + ... + 1/100^2? 

# Hesaplamak için önce 1-100 e kadar olan sayýlarýn bulunduðu vektör oluþturulur
x <- 1:100

#  1 + 1/2^2 + 1/3^2 + ... + 1/100^2 Toplamý hesaplanýr. 
sum(1/x^2)

# --Example--

# Her eyalet için 100.000 cinayet oranýný hesaplayýn ve bu deðerin ortalamasýný bulun.

library(dslabs)
data(murders)


murder_rate <- murders$total / murders$population * 100000 

mean(murder_rate)








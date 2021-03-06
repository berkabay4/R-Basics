# -- Vectorized operations -- 

 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

temp <- c(35, 88, 42, 84, 81, 30)   #[F]

# temp i�erisindeki F de�erleri C ye �evir ve temp 'e y�kle
temp <- (5/9) * (temp-32)           #[C]



# s�cakl�k ve isimlerin bulundu�u dataframe olu�tur.
city_temps <- data.frame(name = city , temperature = temp)



# --Example--

# Yan tarafta bulunan denklemin de�eri ka�t�r: 1 + 1/2^2 + 1/3^2 + ... + 1/100^2? 

# Hesaplamak i�in �nce 1-100 e kadar olan say�lar�n bulundu�u vekt�r olu�turulur
x <- 1:100

#  1 + 1/2^2 + 1/3^2 + ... + 1/100^2 Toplam� hesaplan�r. 
sum(1/x^2)

# --Example--

# Her eyalet i�in 100.000 cinayet oran�n� hesaplay�n ve bu de�erin ortalamas�n� bulun.

library(dslabs)
data(murders)


murder_rate <- murders$total / murders$population * 100000 

mean(murder_rate)








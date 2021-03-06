# --Factors & Tables--

library(dslabs)
dslabs(murders)


# --Factors--

# str() fonksiyonunu kullanarak "murders" hakk�nda bilgi edinebiliriz.
str(murders)


# levels() kullanarak "murders/region" hakk�nda bilgiye, ba�l�klar�n isimlerine ula�abiliriz.
levels(murders$region)

# class() de�i�kenin s�n�f�n�, cinsini g�rmek i�in kullan�l�r.
class(murders$region)

# Region ba�l��� alt�nda bulunan ka� de�er var
a <- levels(murders$region)

length(a)


# --Table--

# c() "Concatenate" vekt�r olu�turmak i�in kullan�l�r, table() komutu ile bu vekt�r tabloya �evirilir.
x <- c("a", "a", "b", "b", "b", "c")

table(x)

# Her b�lgenin de�erinin alt�nda ka� adet �ehir var g�sterin.
murder_regiontable <- table(murders$region)

murder_regiontable

# --Factors & Tables--

library(dslabs)
dslabs(murders)


# --Factors--

# str() fonksiyonunu kullanarak "murders" hakkýnda bilgi edinebiliriz.
str(murders)


# levels() kullanarak "murders/region" hakkýnda bilgiye, baþlýklarýn isimlerine ulaþabiliriz.
levels(murders$region)

# class() deðiþkenin sýnýfýný, cinsini görmek için kullanýlýr.
class(murders$region)

# Region baþlýðý altýnda bulunan kaç deðer var
a <- levels(murders$region)

length(a)


# --Table--

# c() "Concatenate" vektör oluþturmak için kullanýlýr, table() komutu ile bu vektör tabloya çevirilir.
x <- c("a", "a", "b", "b", "b", "c")

table(x)

# Her bölgenin deðerinin altýnda kaç adet þehir var gösterin.
murder_regiontable <- table(murders$region)

murder_regiontable

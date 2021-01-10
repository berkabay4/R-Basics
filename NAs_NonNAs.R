# -- NA -- 

library(dslabs)
data(na_example)  #NA içeren bir vektör çaðýrmak için na_example kullanýlabilir

# Checking the structure 
str(na_example)


# NA ve int deðerler içeren bu vektörün ortalamasý "NA" olacaktýr.
mean(na_example)


# --Örnek--

# na_example içerisinde kaç adet NA olduðunu bulun.

# is.na() ile vektör içerisinde ki deðer NA  ise TRUE, deðil ise FALSE olan bir vektör oluþturun.
ind <- is.na(na_example)

# TRUE, FALSE deðerlerini içeren vektörün deðerleri toplamý kaç adet NA olduðunu verecektir.
sum(ind)



# --Removing NAs--

# NA deðerleri vektör içerisinden silme;

# "!" operatörü ile lojik deðerin tersini(deðilini) alabiliriz.

x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]

# -- Example2--

#na_example vektöründe NA olmayan deðerlerin ortalamasýný hesaplayýn.

ind2 <- is.na(na_example)

mean(na_example[!ind2])

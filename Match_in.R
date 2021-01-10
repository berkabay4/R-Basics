
library(dslabs)
dslabs(murders)

# --Match--



abbs <- c("AK", "MI", "IA")

# Oluþturulan abbs vektörü içerisinde murders$abb ile eþleþen deðerlerin indexleri
ind <- match(abbs, murders$abb)

# Eyaletler içerisinde belirli indexlerin eyaletlerini göster.
murders$state[ind]


# --%in%--

# x in deðerleri içerisinde hangisi y de de var, var olanlar TRUE döndürür yok ise FALSE

x <- c(2, 3, 5)
y <- c(1, 2, 3, 4)
x%in%y


abbs <- c("MA", "ME", "MI", "MO", "MU") 

abbs%in%murders$abb


# --Example2--


abbs <- c("MA", "ME", "MI", "MO", "MU") 

# abbs içerisindeki deðerlerden hangisi murders$abb içerisinde var index olarak ind 'e yükle
ind <- which(!(abbs%in%murders$abb))


abbs[ind]


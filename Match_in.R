
library(dslabs)
dslabs(murders)

# --Match--



abbs <- c("AK", "MI", "IA")

# Olu�turulan abbs vekt�r� i�erisinde murders$abb ile e�le�en de�erlerin indexleri
ind <- match(abbs, murders$abb)

# Eyaletler i�erisinde belirli indexlerin eyaletlerini g�ster.
murders$state[ind]


# --%in%--

# x in de�erleri i�erisinde hangisi y de de var, var olanlar TRUE d�nd�r�r yok ise FALSE

x <- c(2, 3, 5)
y <- c(1, 2, 3, 4)
x%in%y


abbs <- c("MA", "ME", "MI", "MO", "MU") 

abbs%in%murders$abb


# --Example2--


abbs <- c("MA", "ME", "MI", "MO", "MU") 

# abbs i�erisindeki de�erlerden hangisi murders$abb i�erisinde var index olarak ind 'e y�kle
ind <- which(!(abbs%in%murders$abb))


abbs[ind]



library(dslabs)
data(murders)


# murders i�erisinde bulunan population 'a ula�mak i�in "$" veya "[["population"]]" kullan�labilir. 
p <- murders$population
o <- murders[["population"]] 

# 2 de�er birbirine e�it ise TRUE d�nd�r�r.
identical(o, p)


a <- murders$abb
b <- murders[["abb"]]

identical(a,b)


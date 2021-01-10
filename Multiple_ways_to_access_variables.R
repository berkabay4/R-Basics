
library(dslabs)
data(murders)


# murders içerisinde bulunan population 'a ulaþmak için "$" veya "[["population"]]" kullanýlabilir. 
p <- murders$population
o <- murders[["population"]] 

# 2 deðer birbirine eþit ise TRUE döndürür.
identical(o, p)


a <- murders$abb
b <- murders[["abb"]]

identical(a,b)


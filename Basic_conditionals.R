# if-else yapýsý örneði
a <- 0
if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}


# murder rate deðeri 0.5 den küçük ise ekrana o deðeri yazdýrýr.
library(dslabs)
data(murders)

murder_rate <- murders$total / murders$population*100000

ind <- which.min(murder_rate)

if(murder_rate[ind] < 0.5){
  print(murders$state[ind]) 
} else{
  print("No state has murder rate that low")
}

# murder rate deðeri 0.25 den küçük ise ekrana o deðeri yazdýrýr.
if(murder_rate[ind] < 0.25){
  print(murders$state[ind]) 
} else{
  print("No state has a murder rate that low.")
}

# ifelse() komuru ile ilk koþul saðlanýyorsa 2. deðeri, saðlanmýyor ise 3. deðeri döndürür.
a <- 0
ifelse(a > 0, 1/a, NA)

# a>0 ise result deðerine 1/a yazdýr eðer deðil ise NA yaz
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)

# ifelse() komutu ayrýca kayýp olan deðerlerler yerine baþka deðer atamak için kullanýlabilir.
data(na_example)
no_nas <- ifelse(is.na(na_example), 0, na_example) 
sum(is.na(no_nas))

z <- c(TRUE, TRUE, FALSE)

any(z)    # any() komutunda herhangi bir deðer TRUE ise TRUE deðeri döndürür, deðil ise FALSE döndürür.

all(z)    # all() komutunda bütün  deðerler TRUE ise TRUE deðeri döndürür, deðil ise FALSE döndürür.
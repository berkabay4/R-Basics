# if-else yap�s� �rne�i
a <- 0
if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}


# murder rate de�eri 0.5 den k���k ise ekrana o de�eri yazd�r�r.
library(dslabs)
data(murders)

murder_rate <- murders$total / murders$population*100000

ind <- which.min(murder_rate)

if(murder_rate[ind] < 0.5){
  print(murders$state[ind]) 
} else{
  print("No state has murder rate that low")
}

# murder rate de�eri 0.25 den k���k ise ekrana o de�eri yazd�r�r.
if(murder_rate[ind] < 0.25){
  print(murders$state[ind]) 
} else{
  print("No state has a murder rate that low.")
}

# ifelse() komuru ile ilk ko�ul sa�lan�yorsa 2. de�eri, sa�lanm�yor ise 3. de�eri d�nd�r�r.
a <- 0
ifelse(a > 0, 1/a, NA)

# a>0 ise result de�erine 1/a yazd�r e�er de�il ise NA yaz
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)

# ifelse() komutu ayr�ca kay�p olan de�erlerler yerine ba�ka de�er atamak i�in kullan�labilir.
data(na_example)
no_nas <- ifelse(is.na(na_example), 0, na_example) 
sum(is.na(no_nas))

z <- c(TRUE, TRUE, FALSE)

any(z)    # any() komutunda herhangi bir de�er TRUE ise TRUE de�eri d�nd�r�r, de�il ise FALSE d�nd�r�r.

all(z)    # all() komutunda b�t�n  de�erler TRUE ise TRUE de�eri d�nd�r�r, de�il ise FALSE d�nd�r�r.
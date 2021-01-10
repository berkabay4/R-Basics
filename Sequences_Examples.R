
# --Sequences--


# 32 'den 99 'a kadar olan sayýlarý içeren vektörü oluþturmak için;
m <- 32:99

# m vektörünün eleman sayýsý
length(m)



# seq() komutu ile 7 'den 49 'a kadar deðerleri 7 'þer artan vektör oluþturma;
seq(7, 49, 7) 


seq(1, 99, 2) 

# --Example--

# 6 dan 55 e kadar 4/7 artarak giden sayý dizisi ve eleman sayýsý;

x <- seq(6,55,4/7)
length(x)


# --Sequences of certain length--

#seq() komutu ile belirlediðimiz aralýktaki artýþý söylemek yerine kaç adet eleman olacaðýný yazýp artýþý kendisinin hesaplamasýný saðlayabiliriz.

a <- seq(0, 100, length.out = 5)    #0-100 arasýnda 5 eleman olacak þekilde böl.
length(a)
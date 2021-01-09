# Dizi ve Matrisler


movie_vector <- c("Akira", "Toy Story", "Room", "The Wave", "Whiplash", "Star Wars", "The Ring", "The Artist", "Jumanji")
movie_vector

movie_array <- array(movie_vector, dim = c(4,3))  # 4x3 lük dizi
movie_array
# Vektörden dizi oluþtururken deðerleri sýralý olarak satýrlara yazar.


movie_array[1,2] #Satýr,Sütun -- row, column
movie_array[1,] #1. Satýrýn tamamýný vektör halinde verir
movie_array[,2] #2. Sütunun tamamýný vektör halinde verir

# Dizinin boyutunu öðrenme
dim(movie_array)


# Dizilere matematiksel iþlemler uygulanabilir
length_vector <- c(125, 81, 118, 81, 106, 121, 95, 100, 104)
length_array <- array(length_vector, dim = c(3,3))
length_array

length_array + 5



# Matris

movie_matrix <- matrix(movie_vector, nrow = 3, ncol = 3)  #3x3 matris oluþturma
movie_matrix

movie_matrix[2:3, 1:2] #2-3 satýr, 1-2. sütun


#Matrise yeni deðer ekleme 

upcoming_movie <- c("Fast and Furious 8", "xXx: Return of Xander Cage", "Suicide Squad")
new_vector <- c(movie_vector, upcoming_movie)

new_vector

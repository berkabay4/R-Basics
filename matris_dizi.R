# Dizi ve Matrisler


movie_vector <- c("Akira", "Toy Story", "Room", "The Wave", "Whiplash", "Star Wars", "The Ring", "The Artist", "Jumanji")
movie_vector

movie_array <- array(movie_vector, dim = c(4,3))  # 4x3 l�k dizi
movie_array
# Vekt�rden dizi olu�tururken de�erleri s�ral� olarak sat�rlara yazar.


movie_array[1,2] #Sat�r,S�tun -- row, column
movie_array[1,] #1. Sat�r�n tamam�n� vekt�r halinde verir
movie_array[,2] #2. S�tunun tamam�n� vekt�r halinde verir

# Dizinin boyutunu ��renme
dim(movie_array)


# Dizilere matematiksel i�lemler uygulanabilir
length_vector <- c(125, 81, 118, 81, 106, 121, 95, 100, 104)
length_array <- array(length_vector, dim = c(3,3))
length_array

length_array + 5



# Matris

movie_matrix <- matrix(movie_vector, nrow = 3, ncol = 3)  #3x3 matris olu�turma
movie_matrix

movie_matrix[2:3, 1:2] #2-3 sat�r, 1-2. s�tun


#Matrise yeni de�er ekleme 

upcoming_movie <- c("Fast and Furious 8", "xXx: Return of Xander Cage", "Suicide Squad")
new_vector <- c(movie_vector, upcoming_movie)

new_vector

# List ve Dataframe

# --List--

movie <- list("Toy Story", 1995, c("Animation", "Adventure", "Comedy")) 
movie

movie[2]  #2. deðere ulaþma




movie <- list(name = "Toy Story",
              year = 1995,
              genre = c("Animation", "Adventure", "Comedy"))  #Listenin düzenli olmasý için baþlýklara isim verilebilir.

movie$genre     #liste içerisinde tanýmlý yere ulaþma
movie["genre"]  #liste içerisinde tanýmlý yere ulaþma



class(movie$name) #class ile belirtilen yerin data tipi öðrenilebilir.




movie[["age"]] <- 5   # "Age" isimli yeni bir yer eklemek.
movie

movie[["age"]] <- NULL  #Mevcut yeri liste içerisinden silme
movie



# --DataFrames--


movies <- data.frame(name = c("Toy Story", "Akira", "The Breakfast Club", "The Artist",
                              "Modern Times", "Fight Club", "City of God", "The Untouchables"),
                     year = c(1995, 1998, 1985, 2011, 1936, 1999, 2002, 1987),
                     stringsAsFactors=F)


movies
movies$name
movies[1]

str(movies) #Data frame hakkýnda bilgi alma
movies[1,2] #1-Toy Story, 2-1995


#Head/Tail ile ilk ve son n deðere ulaþýlabilir.
head(movies,2)


movies['length'] <- c(81, 125, 97, 100, 87, 139, 130, 119)  #Yeni sütun eklemek
movies


movies <- rbind(movies, c(name="Dr. Strangelove", year=1964, length=94))  #Yeni satýr eklemek.
movies

movies <- movies[-9,]  # 9. satýrý silmek
movies

movies[["length"]] <- NULL   # "length isimli sütunu silmek
movies




data.frame("student" = c("john", "mary"), "id" = c(1, 2))

# --Vector ve Factor--

release_year <- c(1985, 1999, 2015, 1964)

titles <- c("Toy Story", "Akira", "The Breakfast Club")



titles == "Akira" 
release_year >= 2000


# --Vector 'e deðer ekleme--
release_year <- c(release_year, 2016:2018)  

# --Vector uzunluðunu bulma--
length(release_year)


# --Head/Tail komutlarý--

# Head: Vektörün ilk n adet deðerini verir
# Tail: Vektörün son n adet deðerini verir

head(release_year, 3)
tail(release_year, 2)


# --Sýralama(Sorting)--

sort(release_year)                      #Büyükten küçüðe sýralama
sort(release_year, decreasing = TRUE)   #Küçükten büyüðe sýralama



# --Ortalama(Average)--

cost_2014 <- c(8.6, 8.5, 8.1)

avg_cost_2014 <- sum(cost_2014)/3
avg_cost_2014

#veya

mean_cost_2014 <- mean(cost_2014)
mean_cost_2014


summary(cost_2014)

# --Vektör içindeki deðerlere isim verme-- 


release_year <- c(1985, 1999, 2010, 2002)

#Ýsim atama
names(release_year) <- c("The Breakfast Club", "American Beauty", "Black Swan", "Chicago")

release_year


release_year[c("American Beauty", "Chicago")]

release_year[1] + 100 #1. filmin yýlýna 100 eklemek

names(release_year)[1:3]





movie_years <- c(1985, 1999, 2002, 2010, 2012)

movie_years[2]  #Vektörün 2. elemanýna ulaþma
movie_years[c(1,3)] #vektörün 1. ve 3. elemanýna ulaþma


titles <- c("Black Swan", "Jumanji", "City of God", "Toy Story", "Casino")
titles[-1] #Baþýna "-" gelen deðer vektör içerisinden silinir.


# --Factorler--


genre_vector <- c("Comedy", "Animation", "Crime", "Comedy", "Animation") 
genre_vector


# Her benzersiz öðe için bir faktör seviyesi oluþturulur
genre_factor <- as.factor(genre_vector)
levels(genre_factor)


# Hangi öðeden kaç adet var ?
summary(genre_factor)


# Sýralama
sort(summary(genre_factor)) 



movie_length <- c("Very Short", "Short", "Medium","Short", "Long", "Very Short", "Very Long")
movie_length
movie_length


movie_length_ordered <- factor(movie_length, ordered = TRUE , 
                               levels = c("Very Short" , "Short" , "Medium", 
                                          "Long","Very Long"))
movie_length_ordered


summary(movie_length_ordered)


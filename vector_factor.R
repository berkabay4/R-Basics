# --Vector ve Factor--

release_year <- c(1985, 1999, 2015, 1964)

titles <- c("Toy Story", "Akira", "The Breakfast Club")



titles == "Akira" 
release_year >= 2000


# --Vector 'e de�er ekleme--
release_year <- c(release_year, 2016:2018)  

# --Vector uzunlu�unu bulma--
length(release_year)


# --Head/Tail komutlar�--

# Head: Vekt�r�n ilk n adet de�erini verir
# Tail: Vekt�r�n son n adet de�erini verir

head(release_year, 3)
tail(release_year, 2)


# --S�ralama(Sorting)--

sort(release_year)                      #B�y�kten k����e s�ralama
sort(release_year, decreasing = TRUE)   #K���kten b�y��e s�ralama



# --Ortalama(Average)--

cost_2014 <- c(8.6, 8.5, 8.1)

avg_cost_2014 <- sum(cost_2014)/3
avg_cost_2014

#veya

mean_cost_2014 <- mean(cost_2014)
mean_cost_2014


summary(cost_2014)

# --Vekt�r i�indeki de�erlere isim verme-- 


release_year <- c(1985, 1999, 2010, 2002)

#�sim atama
names(release_year) <- c("The Breakfast Club", "American Beauty", "Black Swan", "Chicago")

release_year


release_year[c("American Beauty", "Chicago")]

release_year[1] + 100 #1. filmin y�l�na 100 eklemek

names(release_year)[1:3]





movie_years <- c(1985, 1999, 2002, 2010, 2012)

movie_years[2]  #Vekt�r�n 2. eleman�na ula�ma
movie_years[c(1,3)] #vekt�r�n 1. ve 3. eleman�na ula�ma


titles <- c("Black Swan", "Jumanji", "City of God", "Toy Story", "Casino")
titles[-1] #Ba��na "-" gelen de�er vekt�r i�erisinden silinir.


# --Factorler--


genre_vector <- c("Comedy", "Animation", "Crime", "Comedy", "Animation") 
genre_vector


# Her benzersiz ��e i�in bir fakt�r seviyesi olu�turulur
genre_factor <- as.factor(genre_vector)
levels(genre_factor)


# Hangi ��eden ka� adet var ?
summary(genre_factor)


# S�ralama
sort(summary(genre_factor)) 



movie_length <- c("Very Short", "Short", "Medium","Short", "Long", "Very Short", "Very Long")
movie_length
movie_length


movie_length_ordered <- factor(movie_length, ordered = TRUE , 
                               levels = c("Very Short" , "Short" , "Medium", 
                                          "Long","Very Long"))
movie_length_ordered


summary(movie_length_ordered)


#Functions


download.file("https://ibm.box.com/shared/static/n5ay5qadfe7e1nnsv5s01oe1x62mq51j.csv", destfile="movies-db.csv")


ratings <- c(8.7, 6.9, 8.5)
mean(ratings)

sort(ratings)


printHelloWorld <- function(){
  print("Hello World")
}
printHelloWorld()

add <- function(x, y) {
  x + y
}
add(3, 4)




isGoodRating <- function(rating){
  
  if(rating < 7){
    return("NO") 
    
  }else{
    return("YES") 
  }
}

isGoodRating(6)
isGoodRating(9.5)



# Baþlangýç deðeri olarak 7 verilirse

isGoodRating <- function(rating, threshold = 7){  
  if(rating < threshold){
    return("NO") 
  }else{
    return("YES") 
  }
}

isGoodRating(6)
isGoodRating(8, threshold = 8.5)    # Baþlangýç deðeri deðiþtirilebilir.


my_data <- read.csv("movies-db.csv")
head(my_data)


akira <- my_data[my_data$name == "Akira", "average_rating"]
akira

isGoodRating(akira)


watchMovie <- function(data, moviename){
  rating <- data[data["name"] == moviename,"average_rating"]
  return(isGoodRating(rating))
}

watchMovie(my_data, "Akira")


watchMovie <- function(data, moviename, my_threshold){
  rating <- data[data$name == moviename,"average_rating"]
  return(isGoodRating(rating, threshold = my_threshold))
}


watchMovie(my_data, "Akira", 7)



watchMovie <- function(moviename, my_threshold = 7){
  rating <- my_data[my_data[,1] == moviename,"average_rating"]
  
  memo <- paste("The movie rating for", moviename, "is", rating)  #Cümle oluþturma
  print(memo)
  
  return(isGoodRating(rating, threshold = my_threshold))
}

watchMovie("Akira")







myFunction <- function(){
  y <<- 3.14      # Global deðiþken tanýmlama
  return("Hello World")
}
myFunction()

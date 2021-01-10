# Numeric/Character Vectors and Connecting Numeric and Character Vectors


# --Numeric Vectors--
cost <- c(50, 75, 90, 100, 150)


# --Character Vectors--
food <- c("pizza", "burgers", "salads", "cheese", "pasta")


# --Connecting Numeric and Character Vectors--

#Numeric ve Character vektörlerini birleþtirme.
names(cost) <- food
cost


temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

names(temp) <- city
temp


# --Subsetting Vectors--

#cost 'ta 3. elemandan 5. elemana kadar göster.
cost[3:5]


# temp 'te 1. elemandan 3. elemana kadar göster.
temp[1:3]


# cost içerisindeki 1. ve 5. elemandan oluþan cost_new 'i oluþturma
cost_new <- cost[c(1,5)]

# temp içerisindeki 3. ve 5. elemandan oluþan temp_new 'i oluþturma
temp_new <- temp[c(3,5)]



# Numeric/Character Vectors and Connecting Numeric and Character Vectors


# --Numeric Vectors--

# A vector is a series of values, all of the same type. 
# They are the most basic data type in R and can hold numeric data, character data, or logical data. 
# In R, you can create a vector with the concatenate (or combine) function c(). 
# You place the vector elements separated by a comma between the parentheses. 

# Here is an example creating a numeric vector named cost
cost <- c(50, 75, 90, 100, 150)


# --Character Vectors--

# As in the previous question, we are going to create a vector. 
# Only this time, we learn to create character vectors. 
# The main difference is that these have to be written as strings and so the names 
# are enclosed within double quotes.

# here is an example of how to create a character vector
food <- c("pizza", "burgers", "salads", "cheese", "pasta")


# --Connecting Numeric and Character Vectors--

# We have successfully assigned the temperatures as numeric values to temp and the city 
# names as character values to city. But can we associate the temperature to its related city?
# Yes! We can do so using a code we already know - names. 
# We assign names to the numeric values.

# Associate the cost values with its corresponding food item
names(cost) <- food

#Show "cost"
#cost


#Use the names function and the objects defined in the previous 
#exercises to associate the temperature data with its corresponding city. 
#Note: to see what happened, after assigning the city names to the temp vector, 
#try printing the temp vector to understand how the names are associated with elements of temp.

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Associate the temperature values with its corresponding city
names(temp) <- city

#Show "temp"
#temp


# --Subsetting Vectors--

# If we want to display only selected values from the object, R can help us do that easily.
# For example, if we want to see the cost of the last 3 items in our food list, we would type:
# cost of the last 3 items in our food list:

cost[3:5]

# Note here, that we could also type cost[c(3,4,5)] and get the same result. 
# The : operator helps us condense the code and get consecutive values.

# temperatures of the first three cities in the list:
temp[1:3]


# In the previous question, we accessed the temperature for consecutive cities (1st three). 
# But what if we want to access the temperatures for any 2 specific cities?

# An example: To access the cost of pizza (1st) and pasta (5th food item) in our list, 
# the code would be:

# Access the cost of pizza and pasta from our food list 
cost_new <- cost[c(1,5)]

# Access the temperatures of Paris and San Juan
temp_new <- temp[c(3,5)]



# -- Vectorized operations -- 

# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)   #[F]

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- (5/9) * (temp-32)           #[C]



# Create a data frame `city_temps` 
city_temps <- data.frame(name = city , temperature = temp)



# --Example--

# What is the sum of the following equation: 1 + 1/2^2 + 1/3^2 + ... + 1/100^2? 
# Thanks to Euler we know it should be close to pi/6

# Define an object x that contains the numbers 1 through 100
# Compute the sum 1 + 1/2^2 + 1/3^2 + ... + 1/100^2.

# Define an object `x` with the numbers 1 through 100
x <- 1:100

# Compute the sum 
sum(1/x^2)


# --Example--

#Compute the per 100,000 murder rate for each state and store it in the object murder_rate.
#Then compute the average of the state murder rates for the US using the function mean. 
#What is this average?

# Load the data
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in murder_rate
murder_rate <- murders$total / murders$population * 100000 

# Calculate the average murder rate in the US 
mean(murder_rate)








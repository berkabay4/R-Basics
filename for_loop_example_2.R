# --For Loop Example--


# Define an empty numeric vector s_n of size 25 using
# s_n <- vector("numeric", 25).

# Compute the the sum when n is equal to each 
# integer from 1 to 25 using the function we defined 
# in the previous exercise: compute_s_n

# Save the results in s_n

# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
  
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n

for(i in 1:25){
  s_n[i] <- compute_s_n(i)
}

plot(1:25,s_n[1:25] ) #Plot XY





## Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Check that s_n is identical to the formula given in the instructions.

identical(s_n, n*(n+1)*(2*n+1)/6)
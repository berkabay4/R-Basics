# -- NA -- 

# The na_example dataset represents a series of counts. 
# It is included in the dslabs package. You can quickly examine the object using
library(dslabs)
data(na_example)

# Checking the structure 
str(na_example)


#However, when we compute the average we obtain an NA. You can see this by typing
# Find out the mean of the entire dataset 
mean(na_example)

# --Example--

# The is.na returns a logical vector that tells us which entries are NA. 
# Assign the logical vector that is returned by is.na(na_example) to an object called ind.

# Determine how many NAs na_example has, using the sum command.

# Use is.na to create a logical index ind that tells which entries are NA
ind <- is.na(na_example)

# Determine how many NA ind has using the sum function
sum(ind)



# --Removing NAs--

# We previously computed the average of na_example using mean(na_example) and obtain NA.
# This is because the function mean returns NA if it encounters at least one NA. 
# A common operation is therefore removing the entries that are NA 
# and after that perform operations on the rest.

# Note what we can do with the ! operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]

# -- Example2--

# Write one line of code to compute the average, 
# but only for the entries that are not NA making use of the ! operator before ind. 
# (Remember that you can use help("!") to find out more about what ! does.)

ind2 <- is.na(na_example)

mean(na_example[!ind2]

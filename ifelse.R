library(murders)
dslabs(murders)


# --ifelse--

# The function nchar tells you how many characters long a
# character vector is. For example:

char_len <- nchar(murders$state)
head(char_len)

# The function ifelse is useful because you convert a vector of logicals into something else. 
# For example, some datasets use the number -999 to denote NA. A bad practice! You can convert the
# -999 in a vector to NA using the following ifelse call:

x <- c(2, 3, -999, 1, 4, 5, -999, 3, 2, 9)
ifelse(x == -999, NA, x)

# If the entry is -999 it returns NA, otherwise it returns the entry.



# Example

#We will combine a number of functions for this exercise.

# Use the ifelse function to write one line of code that
# assigns to the object new_names the state abbreviation when 
# the state name is longer than 8 characters and assigns the
# state name when the name is not longer than 8 characters.

# For example, where the original vector has Massachusetts
# (13 characters), the new vector should have MA.
# But where the original vector has New York (8 characters),
# the new vector should have New York as well.

# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)



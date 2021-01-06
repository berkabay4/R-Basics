# --Match--

# In this exercise we use the match function to identify
# the states with abbreviations AK, MI, and IA.

# --EXample--

#Define a character vector with the abbreviations.
#Start by defining an index of the entries of murders$abb that match the three abbreviations.
#Use the [ operator to extract the states.

# Store the 3 abbreviations in a vector called `abbs` (remember that they are character vectors and need quotes)
abbs <- c("AK", "MI", "IA")

# Match the abbs to the murders$abb and store in ind
ind <- match(abbs, murders$abb)

# Print state names from ind
murders$state[ind]


# --%in%--

# If rather than an index we want a logical that tells us whether or not
# each element of a first vector is in a second, we can use the function %in%.
# For example:

# x <- c(2, 3, 5)
# y <- c(1, 2, 3, 4)
# x%in%y

#Gives us two TRUE followed by a FALSE because 2 and 3 are in y but 5 is not.

# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs%in%murders$abb


# --Example2--

#We are again working with the characters abbs <- c("MA", "ME", "MI", "MO", "MU")

#In a previous exercise we computed the index abbs%in%murders$abb. Based on that, 
#and using the which function and the ! operator, get the index of the entries of
#abbs that are not abbreviations.

#Show the entries of abbs that are not actual abbreviations.


# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in `ind`
ind <- which(!(abbs%in%murders$abb))

# Names of abbreviations in `ind`

abbs[ind]
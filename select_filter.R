# -- select-- 

# With dplyr we can use select to show only certain columns. 

# For example with this code we would only show the states and population sizes:
# select(murders, state, population)

# Load dplyr
library(dplyr)

# Use select to show the state names and abbreviations in murders. 
select(murders, state, abb)


# --filter--

# The dplyr function filter is used to choose specific rows of the data frame to keep.
# Unlike select which is for columns, filter is for rows. 
# For example you can show just the New York row like this:
filter(murders, state == "New York")

#You can use other logical vectors to filter rows.


# --Example--

# Use filter to show the top 5 states with the highest murder rates. 
# After we add murder rate and rank, do not change the murders dataset,
# just show the result. Note that you can filter based on the rank column.

# Add the necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates
filter(murders, rank <=5)


# --filter with " != "--


# We can remove rows using the != operator. 
# For example to remove Florida we would do this:
no_florida <- filter(murders, state != "Florida")


# --Example--

# Create a new data frame called no_south that removes states from the South region.
# How many states are in this category? You can use the function nrow for this.

# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")

# Use nrow() to calculate the number of rows
nrow(no_south)





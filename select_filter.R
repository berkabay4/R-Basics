# -- select-- 

# With dplyr we can use select to show only certain columns. 

# For example with this code we would only show the states and population sizes:
# select(murders, state, population)

# Load dplyr
library(dplyr)
library(dslabs)
dslabs(murders)

# Sadece eyalet ve kýsaltmalarýna ulaþmak için selecet() kullanýlabilir.
select(murders, state, abb) 


# --filter--

#murders içerisinde sadece New York 'a ait deðerlere ulaþmak için.
filter(murders, state == "New York")

# mutate() komutu ile var olan dataframe 'e sütun eklenebilir. 
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Eklenen yeni deðer ile filtreleme.
filter(murders, rank <=5)


# --filter with " != "--


# != operatörü ile filtreleme yapýlýrsa yazýlan deðerin tersi iþlem yapýlýr.

no_florida <- filter(murders, state != "Florida")   #Florida hariç bütün deðerler



no_south <- filter(murders, region != "South")
nrow(no_south)





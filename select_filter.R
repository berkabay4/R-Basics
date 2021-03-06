# -- select-- 

# With dplyr we can use select to show only certain columns. 

# For example with this code we would only show the states and population sizes:
# select(murders, state, population)

# Load dplyr
library(dplyr)
library(dslabs)
dslabs(murders)

# Sadece eyalet ve k�saltmalar�na ula�mak i�in selecet() kullan�labilir.
select(murders, state, abb) 


# --filter--

#murders i�erisinde sadece New York 'a ait de�erlere ula�mak i�in.
filter(murders, state == "New York")

# mutate() komutu ile var olan dataframe 'e s�tun eklenebilir. 
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Eklenen yeni de�er ile filtreleme.
filter(murders, rank <=5)


# --filter with " != "--


# != operat�r� ile filtreleme yap�l�rsa yaz�lan de�erin tersi i�lem yap�l�r.

no_florida <- filter(murders, state != "Florida")   #Florida hari� b�t�n de�erler



no_south <- filter(murders, region != "South")
nrow(no_south)





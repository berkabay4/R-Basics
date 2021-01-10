library(dslabs)
dslabs(murders)

# --Ranks--

#data.frame fonksiyonu ile dataframe oluþturulabilinir.

# Sýcaklýk deðerleri temp 'e aktarýlýr. 
temp <- c(35, 88, 42, 84, 81, 30)

# Þehir isimleri city 'e aktarýlýr. 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Þehir isimleri ve sýcaklýk deðerlerini içeren dataframe oluþturulur. 
city_temps <- data.frame(name = city, temperature = temp)


states <- murders$state

ranks <- rank(murders$population)

# Murder içerisinde ki state ve rank deðerlerini içeren ayrý bir dataframe oluþturulur.
my_df <- data.frame(states = states, ranks = ranks)



# --Data Frames, Ranks ve Orders--


# popülasyona göre sýralanmýþ state ve rank deðerlerinden oluþan dataframe oluþturun.

# ind deðeri içerisine popülasyona göre sýralanmýþ deðerleri ekleyin
# Örn, o <- order(murders$population)
# Dataframe i  oluþturacak sütunlarý düzenlemek için "[" kullanýlýr.

# Örn, states[o] .


states <- murders$state

ranks <- rank(murders$population)

# population deðerine göre sýralama yapýlacaðýndan ind nesnesine sýralanmýþ halde population yüklenir.
ind <- order(murders$population)

# states ve ranks deðerleri population deðerine göre sýralý bir þekilde olacak dataframe oluþturulur
my_df <- data.frame(states = states[ind], ranks = ranks[ind])

                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                

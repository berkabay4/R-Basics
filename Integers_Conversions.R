# --Integers--

# 1 'den 10 'a kadar 0.5 artaran deðerlerin vektörün sýnýfý numeric 'dir.
class(seq(1, 10, 0.5))

# Sayýlarýn sonuna "L" ekleyerek integer oluþturulabilir.
class(3L)

# 3(int) - 3(numeric) = 0 olacaktýr.
3L - 3

# Sayýnýn yanýna bir þey koymadýðýmýzda sýnýfý numeric olacaktýr.
class(1)

class(1L)

# --Coercion/Conversions--

# sayý ve karakterden oluþan bir vektörümüz var ise bu vektörü oluþturduðumuzda
# bütün deðerleri karakter þeklinde tanýmlayacaktýr.

mx <- c(1, 3, 5,"a")
mx  # 1-3-5-a karakterlerini içeren vektör

# Bu vektörün numeric deðerlerini aþaðýdaki gibi alabiliriz ancak "a" bir karakter olduðundan dönüþüm sonrasý NA olacaktýr.
mx <- as.numeric(mx)



# --Lexical Scope--

#Lexical scoping is a convention used by many languages that
# determine when an object is available by its name. 

# When you run the code below you will see which x is
# available at different points in the code.

x <- 8
my_func <- function(y){
  x <- 9
  print(x)
  y + x
}
my_func(x)
print(x)

# Note that when we define x as 9, this is inside the function, 
# but it is 8 after you run the function. 
# The x changed inside the function but not outside.
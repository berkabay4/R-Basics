# --Logical Vectors--

library(dslabs)
data(murders)


murder_rate <- murders$total / murders$population * 100000

low <-  murder_rate < 1

which(murder_rate<1)

murders$state[low]

ind <- low & murders$region=="Northeast"

# murder_rate < 1 ve murders region = Northeast olan deðer
murders$state[ind]



murder_rate <- murders$total/murders$population*100000

avg <- mean(murder_rate)

x <- murder_rate < avg 
sum(x)

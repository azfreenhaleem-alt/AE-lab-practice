library(wooldridge)

set.seed(123)
x<-runif(500,0,10)
mean(x)
sd(x)

u<-rnorm(500,0,36)
mean(u)
sd(x)

y<-1.2*x+u
reg<-lm(y~x)
summary(reg)
#no but they are very close
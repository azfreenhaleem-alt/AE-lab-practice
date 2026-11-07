set.seed(123)

n<-50
R<-1000

b0<-1
b1<-1.5
b2<-3
b1_hat<- numeric(R)

for (r in 1:R){
  x1<-rnorm(n,mean=0,sd=1)
  u<-rnorm(n,mean=0,sd=1)
  x2<-x1+rnorm(n,mean=0,sd=1)
  y<-b0+b1*x1+b2*x2+u
  fit<-lm(y~x1)
  b1_hat[r] <- coef(fit)[2]
}

mean(b1_hat)

hist(b1_hat,xlim=c(0,6), breaks = 30, col = "lightblue", main = "Sampling Distribution of Beta1 Estimates",
     xlab = expression(hat(beta)[1]))
abline(v = b1, col = "red", lwd = 2, lty = 2)
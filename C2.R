install.packages('wooldridge')
install.packages('dplyr')

library(wooldridge)
data(k401k)

avg_parp<-mean(k401k$prate)
avg_mrate<-mean(k401k$mrate)
reg<-lm(prate~mrate,data=k401k)
s1<-summary(reg)
#one unit change in the mrate will change the prate by 58% 
r2<-s1$r.squared

beta0<-coef(reg)[1]
beta1<-coef(reg)[2]

prate1<-beta0+beta1*3.5
#the prediction is not resonable since it is giving values of >100


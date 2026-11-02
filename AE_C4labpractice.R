install.packages("wooldridge")
install.packages("lmtest")
library(wooldridge)
library(lmtest)
data("lawsch85")
names(lawsch85)
lawsch85<-na.omit(lawsch85)
model1<-lm(lsalary~GPA+llibvol+lcost+rank+LSAT, data=lawsch85)
summary(model1)
#H0 = B4=0 
#since the tstat < -2 then the hypotysis is rejected  

model2<-lm(lsalary~llibvol+lcost+rank, data=lawsch85)
summary(model2)
#H0: B1=0, B5=0
#H1: H0 is not true B4 or B5 not = 0

r2_u=summary(model1)$r.squared
r2_r=summary(model2)$r.squared
q=2
df=84
Fstat<-((r2_u-r2_r)/q)/((1-r2_u)/df)
waldtest(model2,model1)
#since the fcal=fstat the null hyp is accepted

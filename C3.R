library(wooldridge)
data("ceosal2")

avg_sal<-mean(ceosal2$salary)
avg_ten<-mean(ceosal2$ceoten)
reg<-lm(lsalary~~ceoten,data=ceosal2)

firstyr<-sum(ceosal2$ceoten== 0)
max_ten<-max(ceosal2$ceoten)

# A manufacturer of car batteries claims that the
# batteries will last, on average, 3 years with a variance
# of 1 year. If 5 of these batteries have lifetimes of 1.9,
# 2.4, 3.0, 3.5, and 4.2 years, construct a 95% confidence
# interval for σ2 and decide if the manufacturer’s claim
# that σ2 = 1 is valid. Assume the population of battery
# lives to be approximately normally distributed.
 ci <- 0.95
alpha = 1-0.95
x<-c(2.4,1.9,3.0,3.5,4.2)
vary<-var(x)
xbar = sum(x)/length(x)
s2<-sum((x - xbar)^2)/(length(x)-1)
dof = 4
lowc<- qchisq(alpha/2,dof)
upperc<- qchisq(1-alpha/2,dof)

lower<- dof*s2/upperc
upper<- dof*s2/lowc

print(sprintf("Confidence interval = (%.2f,%.2f)",lower,upper))

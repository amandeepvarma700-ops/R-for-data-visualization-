# Two independent samples are taken from two populations.
# 
# For Population 1:
#   
#   Sample size: 16
# Sample mean: 72
# Sample standard deviation:8
# 
# For Population 2:
#   
#   Sample size: 20
# Sample mean: 68
# Sample standard deviation: 10
# 
# Find the 95% confidence interval for the difference between the two population means:
#Assume that the population variances are unknown but equal.

n1<-16
Smean1<-72
std1<-8

n2<-20 
Smean2<-68
std2<-10

CI<- 0.95
alpha<-1-0.95
t<- qt(1-(alpha/2),n1+n2-2)

#calculation of pooled variance
sp<- sqrt(((n1-1)*std1^2 +(n2-1)*std2^2)/(n1+n2-2))

#standard error
SE<- sp* sqrt(1/n1+1/n2)

#margin
margin<- t*SE;

lower<- (Smean1-Smean2) - margin
upper<- (Smean1-Smean2) + margin


print(sprintf("Confidence interval = (%.2f,%.2f)",lower,upper))

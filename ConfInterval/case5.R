# Two independent samples are taken from two populations.
# 
# For Population 1:
#   
#   Sample size: 16
# Sample mean: 72
# Sample standard deviation: 8
# 
# For Population 2:
#   
#   Sample size: 20
# Sample mean: 68
# Sample standard deviation: 12
# 
# Find the 95% confidence interval for the difference between the two population means:

n1<- 16
Smean1<-72
sd1<-8

n2<- 20
Smean2<-68
sd2<-12

CI<-0.95
alpha<-1-CI

# Standard error 
SE <-sqrt((sd1^2/n1)+sd2^2/n2)

#calculation of DOF
dof <- ((sd1^2/n1 + sd2^2/n2)^2) /
  (((sd1^2/n1)^2)/(n1-1) +
     ((sd2^2/n2)^2)/(n2-1))

t<-qt(1-alpha/2,dof)

meandiff = Smean1-Smean2

#margin
margin<- t*SE

lower<- meandiff - margin
upper<- meandiff + margin

print(sprintf("Confidence interval = (%.2f,%.2f)",lower,upper))

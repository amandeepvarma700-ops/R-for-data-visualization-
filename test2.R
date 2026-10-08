# Construct a 98% confidence interval for σ1/σ2
# in Exercise 9.42 on page 295, where σ1 and σ2 are,
# respectively, the standard deviations for the distances
# traveled per liter of fuel by the Volkswagen and Toyota
# mini-trucks.

ci<-0.98
n1<-12
n2<-10
dof1<-n1-1
dof2<-n2-1

s1<-1
s2<-0.8
alpha<-0.02
fupper <-qf(1-alpha/2,dof1,dof2)
flower<-qf(alpha/2,dof1,dof2)
upper<-((s1^2)/(s2^2))/flower
lower<-((s1^2)/(s2^2))/fupper

print(sprintf("confidence interval:(%.2f,%.2f)",sqrt(lower),sqrt(upper)))

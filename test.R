# A random sample of 20 students yielded a mean
# of ¯x = 72 and a variance of s2 = 16 for scores on a
# college placement test in mathematics. Assuming the
# scores to be normally distributed, construct a 98% confidence interval for σ2.

n<-20
samplemean<-72
s2=16
ci=0.98
alpha<-1-ci
dof<-n-1
uchi<-qchisq(1-alpha/2,dof)
lchi<-qchisq(alpha/2,dof)
upper<-(dof*s2)/lchi
lower<-(dof*s2)/uchi
print(sprintf("Confidence inteval (%.2f,%.2f)",lower,upper))

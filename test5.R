# Two different brands of latex paint are being
# considered for use. Fifteen specimens of each type of
# paint were selected, and the drying times, in hours,
# were as follows:
#   Paint A Paint B
# 3.5 2.7 3.9 4.2 3.6 
# 2.7 3.3 5.2 4.2 2.9 
# 4.4 5.2 4.0 4.1 3.4 


# 4.7 3.9 4.5 5.5 4.0
# 5.3 4.3 6.0 5.2 3.7
# 5.5 6.2 5.1 5.4 4.8

# Assume the drying time is normally distributed with
# σA = σB. Find a 95% confidence interval on μB − μA,
# where μA and μB are the mean drying times.

n1<-15
n2<-15
c1<-c(3.5,2.7,3.9,4.2,3.6,2.7,3.3,5.2,4.2,2.9,4.4,5.2,4.0,4.1,3.4)
c2<-c(4.7,3.9,4.5,5.5,4.0,5.3,4.3,6.0,5.2,3.7,5.5,6.2,5.1,5.4,4.8)

xbar1<-mean(c1)
xbar2<-mean(c2)
s12<-var(c1)
s22<-var(c2)
ci<-0.95
alpha<-1-ci
dof = n1+n2-2
t<-qt(1-alpha/2,dof)

#pooled estimate
sp2 = ((n1-1)*s12+(n2-1)*s22)/(n1+n2-2)
meandiff =xbar2-xbar1

#margin
lower = meandiff - t*sqrt(sp2)*sqrt(1/n1+1/n2)
upper = meandiff + t*sqrt(sp2)*sqrt(1/n1+1/n2)

cat("Confidence interval = [",lower,",",upper,"]")


# Construct a 95% confidence interval for σ2A/σ2B
# in Exercise 9.49 on page 295. Should the equal-variance
# assumption be used?

fupper<-qf(1-alpha/2,n1-1,n2-1)
flower<-qf(alpha/2,n1-1,n2-1)

ratioofvar<-s12/s22
upper<- ratioofvar/flower
lower<- ratioofvar/fupper
cat("Confidence interval = [",lower,",",upper,"]")

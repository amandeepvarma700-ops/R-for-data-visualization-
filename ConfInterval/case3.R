# Two independent samples are taken from two populations.
# 
# For Population 1:
#   
#   Sample size: n1 = 36
# Sample mean: 72
# Population standard deviation: 12
# 
# For Population 2:
#   
#   Sample size: 49
# Sample mean: 68
# Population standard deviation: 14
# 
# Find the 95% confidence interval for the difference between the two population means

n1<-36
Smean1<-72
std1<-12

n2<-49
Smean2<-68
std2<-14

CI = 0.95
alpha = 1-CI
#zalpha/2

z<-qnorm(1-(alpha/2))

#margin
margin<-z*(sqrt(std1^2/n1+std2^2/n2))
meanDiff <- Smean1-Smean2

lower<- meanDiff-margin
upper<- meanDiff+margin

print(sprintf("Confidence interval = (%.2f,%.2f)",lower,upper))


#Let's understand this with a qsn; Single Sample Known Variace

#A random sample of 36 students has a mean score of 72. 
#The population standard deviation is known to be σ = 12.
#Find the 95% confidence interval for the population mean μ.



#Solution - 
#Given
n<-26
Smean<-72
PStd<-12 
CI = 0.95

#As variance is known we will use z-distribution

#for known variance CI=Smean ±Zα/2 sigma/sqrt(n)
α<-1-CI
#α/2 will be 0.025

#calulating zalpha
z<-qnorm(0.975)

#Marginal value 
margin<-z*(PStd/sqrt(n))

#bounds
lower<- Smean - margin
upper<- Smean + margin

#or you can just put 1.96 if you know
z <- qnorm(0.975)

margin <- z * sigma / sqrt(n)

lower <- xbar - margin
upper <- xbar + margin

#% is starting of a formatting instruction. Just like C programming language
#note: sprintf is R is used for formatting values.

print(sprintf("Confidence Interval = (%.2f, %.2f)", lower, upper))

# A random sample of 20 observations is taken from a normally distributed population. 
#The sample variance is found to be:
#   
#   s^2 = 16
#     
#     Find the 95% confidence interval for the population variance 

n<- 20
ssquare<-16
CI<- 0.95
alpha<-1-CI

dof<- n-1

#chi square value
chi_upper <- qchisq(1-alpha/2,dof)
chi_lower <- qchisq(alpha/2,dof)

#confience inteval
upper = (n-1)*ssquare / chi_lower
lower = (n-1)*ssquare / chi_upper

print(sprintf("Confidence interval for variance = (%.2f,%.2f)",lower,upper))

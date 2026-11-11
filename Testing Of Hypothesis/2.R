# A random sample of 400 voters in a certain city
# are asked if they favor an additional 4% gasoline sales
# tax to provide badly needed revenues for street repairs.
# If more than 220 but fewer than 260 favor the sales tax,
# we shall conclude that 60% of the voters are for it.
# (a) Find the probability of committing a type I error
# if 60% of the voters favor the increased tax.
# (b) What is the probability of committing a type II error using this test procedure 
#if actually only 48%
# of the voters are in favor of the additional gasoline
# tax?

n<- 400
p<-0.6
q<-1-p
np<- n*p # as sample is too big i am using normal distribution.
sigma<- sqrt(n*p*q)

#(a) - we said x<= 220 and x>=260 which but probability was actually 0.6
#pnorm -You give an X value, and it returns the probability.(q,mean,sd)
alpha<- pnorm(220.5,np,sigma) + 1 - pnorm(259.5,np,sigma)
p<-0.48
q<- 1 - 0.48
np<-n*p
sigma<- sqrt(n*p*q)
beta<- pnorm(259.5,np,sigma) - pnorm(220.5,np,sigma)

print(sprintf("Value of alpha and beta are: (%.4f,%.4f)",alpha,beta))

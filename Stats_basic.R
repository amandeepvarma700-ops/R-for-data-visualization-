x<- c(2.1,2.2,2.3,1.8,2.0)

print(x[1])
print(mean(x))
print(median(x))
print(var(x))

# s^2 - summation of (xi-mean)^2/n-1 
#n-1 as its a sample variance


print(sd(x))

#sd = sqrt(var(x))

print(min(x))
print(max(x))
print(sum(x))
print(length(x))


#Probability functions in R. pnorm()
#pnort(120,mean=100,sd=10) says give me the probability
#ofa  random distributed variable with mean 100 and sd 10 which has probability less 
#than 120

print(pnorm(120,mean=100,sd=10))

# for p(x>120) - we will use 1-pnorm(120);

#now for p(90<x<120)
pnorm(120,mean=100,sd=10) - pnorm(90,mean=100,sd=10)




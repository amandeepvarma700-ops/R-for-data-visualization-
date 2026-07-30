x<-10
print(class(x)) # it is used to tell about the data types.
y<-c(1:9)

#sequence vector. (start,end,by)
z<-seq(1,9,2)
print(z)
print(y)

# sample() - You use to randomly pick values from a vector. 
sample(y,3,replace=FALSE)
# y- > choose from, 3 --> size, replace --> can a value picked again.


# Example 1: Roll a dice 10 times: 
sample(1:6,10,replace=TRUE)
# Example 2: Tossing a coin 20 times.
sample(c("H","T"),20,replace=TRUE)


# Uniform distribution runif() - it's in reason I mean this. 
runif(5,1,2)
# Normal distribution rnorm() - generates normal numbers in a normal bell-shaped situation 
#syntax (n,mean,sd)
rnorm(10,5,3)

#rbinom() - Generate Outcome for Repeated Yes or No Statement. 
#rbinom(n, size, prob)
rbinom(10, size = 1, prob = 0.5)
# look it counts success. 1 is sucess and 0.5 is the probability of getting 1

# set seed
set.seed(42)
sample(1:6, 5, replace = TRUE)
# with set.seed we will always get the same value

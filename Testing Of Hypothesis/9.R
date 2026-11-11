
#we are solving this using 2 methods 
#1. Using p_value, 
#2. Using critical value

# Past experience indicates that the time required for high school 
#seniors to complete a standardized test is a normal random variable with a standard
# deviation of 6 minutes. Test the hypothesis that σ =6
# against the alternative that σ< 6 if a random sample of
# the test times of 20 high school seniors has a standard
# deviation s =4.51. Use a 0.05 level of significance.


#H0: σ  = 6
#H1: σ  < 6

n1<- 20
s<- 4.51
sigma<- 6

chisqr<- ((n1-1) * s^2)/sigma^2
dof = n1-1
alpha<- 0.05

critical_val<- qchisq(alpha,dof)

p_value<- pchisq(chisqr,dof)



if (chisqr < critical_val) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

# Decision using p-value
if (p_value < 0.01) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

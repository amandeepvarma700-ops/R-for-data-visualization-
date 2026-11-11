# A study is conducted to compare the lengths of
# time required by men and women to assemble a certain
# product. Past experience indicates that the distribution of 
#times for both men and women is approximately
# normal but the variance of the times for women is less
# than that for men. A random sample of times for 11
# men and 14 women produced the following data:
#    Men        Women
#  n1 = 11     n2 = 14
#  s1 =6.1     s2 =5.3
# Test the hypothesis that σ1square = σ2square
# against the alternative that σ2>σ2
#Use a P-value in your conclusion.

#H0: σ1square = σ2square
#H1: σ1square > σ2square

n1 = 11 
n2 = 14
s1 =6.1 
s2 =5.3

fdist<- (s1^2)/(s2^2) # assuming null hypothesis
df1<- n1-1
df2<- n2-1

p_value = 1 - pf(fdist,df1,df2)

if (p_value < 0.01) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}


# now using critical value

alpha<- 0.05
critical_value = qf(1-alpha,df1,df2)

if (fdist > critical_value) { # greater than as its right tail.
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

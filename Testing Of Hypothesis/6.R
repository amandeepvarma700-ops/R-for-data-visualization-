# 2 variable case with equal variances.

# A study was made to determine if the subject
# matter in a physics course is better understood when a
# lab constitutes part of the course. Students were randomly 
#selected to participate in either a 3-semesterhour course without labs or a 4-semester-hour course
# with labs. In the section with labs, 11 students made
# an average grade of 85 with a standard deviation of 4.7,
# and in the section without labs, 17 students made an
# average grade of 79 with a standard deviation of 6.1.
# Would you say that the laboratory course increases the
# average grade by as much as 8 points? Use a P-value in
# your conclusion and assume the populations to be approximately 
#normally distributed with equal variances.

#H0: mu1-mu2 = 8
#H1: mu1-mu2 !=8


n1 <- 11
n2 <- 17
xbar <- 85
xbar2 <- 79
s1 <- 4.7
s2 <- 6.1

dof <- n1+n2-2
sp <- sqrt(((n1-1)*s1^2 + (n2-1)*s2^2)/dof)
tnum <- (xbar-xbar2)-8
t <- tnum/(sp*sqrt((1/n1)+(1/n2)))
p_value <- 2*pt(-abs(t),dof)

if(p_value < 0.01){
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

print(t)
print(p_value)

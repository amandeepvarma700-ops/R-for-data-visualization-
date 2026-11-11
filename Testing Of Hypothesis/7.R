# The following data represent the running times
# of films produced by two motion-picture companies:
#   Company Time (minutes)
# 1 102 86 98 109 92
# 2 81 165 97 134 92 87 114
# Test the hypothesis that the average running time of
# films produced by company 2 exceeds the average running time of films produced by 
#company 1 by 10 minutes against the one-sided alternative that the 
#difference is less than 10 minutes. Use a 0.1 level of significance 
#and assume the distributions of times to be
# approximately normal with unequal variances

#H0: mu2-mu1 = 10
#H1: mu2-mu1 < 10


time1 <- c(102,86,98,109,92)
time2 <- c(81,165,97,134,92,87,114)

n1 <- length(time1)
n2 <- length(time2)

xbar1 <- mean(time1)
xbar2 <- mean(time2)

s1 <- var(time1)
s2 <- var(time2)


dofnum <- (s1/n1 + s2/n2)^2

dofdeno <- (s1/n1)^2/(n1-1) +
  (s2/n2)^2/(n2-1)

dof <- dofnum/dofdeno

# T statistic
t <- ((xbar2-xbar1)-10)/sqrt(s1/n1+s2/n2)

# Left-tailed P-value
p_value <- pt(t,dof)


if(p_value < 0.01){
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

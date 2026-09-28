# Two independent samples are taken from two normally distributed populations.
# 
# Population 1
# Sample size: 16
# Sample variance: 64
# Population 2
# Sample size: 20
# Sample variance: 100
# Find the 95% confidence interval for the ratio of the two population variances

n1 <- 16
n2 <- 20
s2_1 <- 64
s2_2 <- 100

CI <- 0.95
alpha <- 1 - CI

df1 <- n1 - 1
df2 <- n2 - 1

# ratio of sample variances
ratio <- s2_1 / s2_2

# F critical value
f <- qf(alpha/2, df1, df2)

# limits
upper <- ratio * (1/f)

lower <- ratio * f

print(sprintf("Confidence interval for variance ratio = (%.2f, %.2f)", lower, upper))

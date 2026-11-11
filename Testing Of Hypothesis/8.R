#Paired t-test.


# A taxi company manager is trying to decide
# whether the use of radial tires instead of regular
# belted tires improves fuel economy. Twelve cars were
# equipped with radial tires and driven over a prescribed
# test course. Without changing drivers, the same cars
# were then equipped with regular belted tires and driven
# once again over the test course. The gasoline 
#consumption, in kilometers per liter, was recorded as follows:
#   Kilometers per Liter
# Car Radial Tires Belted Tires
# 1             4.2   4.1
# 2            4.7     4.9
# 3            6.6     6.2
# 4           7.0      6.9
# 5           6.7       6.8
# 6           4.5       4.4
# 7           5.7        5.7
# 8            6.0        5.8
# 9           7.4          6.9
# 10           4.9         4.7
# 11           6.1         6.0
# 12            5.2        4.9
# Can we conclude that cars equipped with radial tires
# give better fuel economy than those equipped with
# belted tires? Assume the populations to be normally
# distributed. Use a P-value in your conclusion.

#H0: mu2 = mu1
#H1: mu1>mu2


Radial_tires <- c(4.2,4.7,6.6,7.0,6.7,4.5,
                  5.7,6.0,7.4,4.9,6.1,5.2)

belted_tires <- c(4.1,4.9,6.2,6.9,6.8,4.4,
                  5.7,5.8,6.9,4.7,6.0,4.9)

# Calculate paired differences
d <- Radial_tires - belted_tires

n <- length(d)

# Mean and standard deviation of differences
dbar <- mean(d)
s <- sd(d)

# Degrees of freedom
dof <- n-1

# T statistic
t <- dbar/(s/sqrt(n))

# P-value (right-tailed)
p_value <- 1-pt(t,dof)


if(p_value < 0.05){
  print("Reject H0")
} else {
  print("Fail to reject H0")
}


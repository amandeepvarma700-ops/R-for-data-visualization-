# Input data
n1 <- 12
mean1 <- 85
sd1 <- 4

n2 <- 10
mean2 <- 81
sd2 <- 5

conf_level <- 0.90
alpha <- 1 - conf_level

# Pooled standard deviation
sp2 <- ((n1 - 1) * sd1^2 + (n2 - 1) * sd2^2) / (n1 + n2 - 2)
sp <- sqrt(sp2)

# Standard error of difference
se <- sp * sqrt(1/n1 + 1/n2)

# Degrees of freedom
df <- n1 + n2 - 2

# t critical value for 90% confidence
t_critical <- qt(1 - alpha/2, df)

# Confidence interval
diff_means <- mean1 - mean2
lower <- diff_means - t_critical * se
upper <- diff_means + t_critical * se

cat("90% Confidence interval for difference in means: [", lower, ",", upper, "]\n")


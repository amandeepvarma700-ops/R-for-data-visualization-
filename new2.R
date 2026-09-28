# Sample statistics
n1 <- 100
mean1 <- 12.2
sd1 <- 1.1

n2 <- 200
mean2 <- 9.1
sd2 <- 0.9

conf_level <- 0.98
alpha <- 1 - conf_level

# Standard error of the difference
se_diff <- sqrt((sd1^2 / n1) + (sd2^2 / n2))

# Degrees of freedom using Welch's approximation
num <- ((sd1^2 / n1) + (sd2^2 / n2))^2

denom <- ((sd1^2 / n1)^2 / (n1 - 1)) + 
  ((sd2^2 / n2)^2 / (n2 - 1))

df <- num / denom

# t-critical value
t_critical <- qt(1 - alpha/2, df)

# Confidence interval
diff_means <- mean1 - mean2

lower <- diff_means - t_critical * se_diff
upper <- diff_means + t_critical * se_diff

cat("98% Confidence interval for difference in means: [", 
    lower, ",", upper, "]\n")

# Conclusion
if (lower > 0) {
  cat("The treatment DOES appear to reduce the mean amount of metal removed.\n")
} else if (upper < 0) {
  cat("The treatment does NOT appear to reduce the mean amount of metal removed.\n")
} else {
  cat("The treatment effect is inconclusive at 98% confidence.\n")
}


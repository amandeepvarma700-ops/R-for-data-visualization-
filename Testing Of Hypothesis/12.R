#more practice of double sample variance calculation case.

# Two types of instruments for measuring the
# amount of sulfur monoxide in the atmosphere are being
# compared in an air-pollution experiment. Researchers
# wish to determine whether the two types of instruments
# yield measurements having the same variability. The
# readings in the following table were recorded for the
# two instruments.
# Sulfur Monoxide
# Instrument A Instrument B
# 0.86 0.87
# 0.82 0.74
# 0.75 0.63
# 0.61 0.55
# 0.89 0.76
# 0.64 0.70
# 0.81 0.69
# 0.68 0.57
# 0.65 0.53
# Assuming the populations of measurements to be approximately normally distributed, 
# test the hypothesis
# that σA = σB against the alternative that σA != σB.
# Use a P-value.

A <- c(0.86, 0.82, 0.75, 0.61, 0.89, 0.64, 0.81, 0.68, 0.65)

B <- c(0.87, 0.74, 0.63, 0.55, 0.76, 0.70, 0.69, 0.57, 0.53)

n1<- length(A)
n2<- length(B)

s1<- var(A)
s2<- var(B)

df1<- n1-1
df2<- n2-1

fdist<- s1/s2

p_valueleft = pf(fdist,df1,df2)
p_valueright = 1-pf(fdist,df1,df2)
p_value = 2*(min(p_valueright,p_valueleft))

if (p_value < 0.01) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

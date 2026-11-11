# #more practice on sigle variance.

# Aflotoxins produced by mold on peanut crops
# in Virginia must be monitored. A sample of 64 batches
# of peanuts reveals levels of 24.17 ppm, on average,
# with a variance of 4.25 ppm. Test the hypothesis that
# σ2 =4.2 ppm against the alternative that σ2 !=4.2
# ppm. Use a P-value in your conclusion.🥲🥲

  n1<- 64
  s<- 4.25
  sigma<- 4.2
  dof<- 63
  chisq<- ((n1-1)*s)/sigma
  left <- pchisq(chisq, dof)
  right <- 1 - pchisq(chisq, dof)
  # We use min() because the smaller tail represents the more extreme side; 
  #double it to get the two-tailed p-value.
  p_value <- 2 * min(left, right)
  
  if (p_value < 0.01) {
    print("Reject H0")
  } else {
    print("Fail to reject H0")
  }


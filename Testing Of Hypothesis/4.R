# Using alpha or error of type 1 to get with unknown variance.
#if you want to use p-value for this question. Use pt form caluclating P(t<-9)
# A random sample of 64 bags of white cheddar popcorn weighed, on average, 5.23 ounces with a
# standard deviation of 0.24 ounce. Test the hypothesis
# that μ =5.5 ounces against the alternative hypothesis,
# μ< 5.5 ounces, at the 0.05 level of significance.

# when significance level is given. check if calculated z lies in the range of talpha . here mu<t0.05
# H0 mu = 5.5
n<- 64
mu<-5.5
alpha = 0.05
sigma<- 0.24
xbar<-5.23

se = sigma/sqrt(n)
t<- (xbar-mu)/se# at critical value
df = n-1
talpha<-qt(0.05,df)

# now we need to compare z and t
if(t<talpha){
  print("Lies in critical region reject H0")
}else print("Accept H0")

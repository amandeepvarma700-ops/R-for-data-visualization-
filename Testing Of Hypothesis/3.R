# Single sample variance known

# In a research report, Richard H. Weindruch of
# the UCLA Medical School claims that mice with an
# average life span of 32 months will live to be about 40
# months old when 40% of the calories in their diet are
# replaced by vitamins and protein. Is there any reason
# to believe that μ< 40 if 64 mice that are placed on
# this diet have an average life of 38 months with a standard deviation of 5.8 months? 
#Use a P-value in your

# identify H0 - here H0: μ = 40 and H1: μ<40
n<- 64
mu<-40 # as we are going to test using p-value. We will assume that okay mu is 40
xbar<-38
sigma<-5.8

SE<-sigma/sqrt(n)

z<-(xbar-mu)/SE

# P value
p_value = pnorm(z)

if(p_value<0.01){
  print("Reject H0")
}else print("Accept H0")

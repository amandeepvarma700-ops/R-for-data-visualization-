# The average height of females in the freshman
# class of a certain college has historically been 162.5 centimeters
#with a standard deviation of 6.9 centimeters.
# Is there reason to believe that there has been a change
# in the average height if a random sample of 50 females
# in the present freshman class has an average height of
# 165.2 centimeters? Use a P-value in your conclusion.
# Assume the standard deviation remains the same

n<- 50
sigma<- 6.9
mu<- 162.5
xbar<-165.2

z<- (xbar-mu)/(sigma/sqrt(n))
p_value = 2*pnorm(-abs(z))

if(p_value<0.01){
  print("Reject H0")
}else print("Accept H0")

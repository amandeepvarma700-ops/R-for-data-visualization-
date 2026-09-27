#Let's understand this with a question

# A sample of 16 students has a mean score of 72 and 
# sample standard deviation 8. 
# Find the 95% confidence interval for the population mean.

#Solution - Given
n<-16
Smean<-72
s<-8
CI<-0.95
alpha<-1 - CI
dof<-n-1
#formula remains same just instead of zα/2 we use (tα/2,n-1) 

#calculation t
t<-qt(1-(alpha/2),df=dof)

#margin 
margin<-t*(s/sqrt(n))
lower<-Smean-margin
upper<-Smean+margin

print(sprintf("Confidence interval =(%.2f,%.2f)",lower,upper))

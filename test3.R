# A taxi company is trying to decide whether to
# purchase brand A or brand B tires for its fleet of taxis.
# To estimate the difference in the two brands, an experiment is conducted using 12 of each brand. The tires
# are run until they wear out. The results are
# Brand A:¯x1 = 36, 300 kilometers,
# s1 = 5000 kilometers.
# Brand B:¯x2 = 38, 100 kilometers,
# s2 = 6100 kilometers.
# Compute a 95% confidence interval for μA − μB assuming the populations to be approximately normally
# distributed. You may not assume that the variances
# are equal.

n1<-12
n2<-12
x1bar<-36300
x2bar<-38100
s1<-5000
s2<-6100
ci<-0.95
alpha<-1-ci
meandiff<-x1bar-x2bar

dofnum<- (s1^2/n1+s2^2/n2)^2
dofdeno<- (((s1^2/n1)^2)/(n1-1))+(((s2^2/n2)^2)/(n2-1))
dof<-dofnum/dofdeno

t<- qt(1-alpha/2,dof)

margin = sqrt((s1^2/n1)+(s2^2/n2))

lower= meandiff - t*margin
upper = meandiff + t*margin

print(sprintf("Confidence interval = (%.2f,%.2f)",lower,upper))

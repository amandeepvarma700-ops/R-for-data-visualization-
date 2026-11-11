#Finding the errors. Alpha and Beta

# A fabric manufacturer believes that the proportion of orders for raw material arriving late is p =0.6.
# If a random sample of 10 orders shows that 3 or fewer
# arrived late, the hypothesis that p =0.6 should be
# rejected in favor of the alternative p< 0.6. Use the
# binomial distribution.
# (a) Find the probability of committing a type I error
# if the true proportion is p =0.6.
# (b) Find the probability of committing a type II error
# for the alternatives p =0.3, p =0.4, and p =0.5.

#pibnom(q,size,prob) - find binomial distribution probability.#for less than equal to q
#dibnom(q,size,prob) - for exactly q.

n<-10
p<-0.6
#(a)
alpha<-pbinom(3,n,p)

#(b) - x>3 ==> 1 - x<=3
p_values<- c(0.3,0.4,0.5) 
beta<- 1 - pbinom(3,n,p_values)
print(alpha)
print(beta)

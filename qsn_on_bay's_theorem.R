#Chocolate is produced by three factories A,B,C and 
#their contribution is 30%, 45%, and 25%. 
#The probability of getting a defective chocolate is 3%, 2%, and 3% respectively. 
#Find the probability that the chocolate is defective and it's from factory A. 

#P(A) = 0.3
#P(B) = 0.45
#P(C) = 0.25

#P(D|A) = 0.03
#P(D|B) = 0.02
#P(D|C) = 0.03

PA <- 0.30
PB <- 0.45
PC <- 0.25
PDA <- 0.03
PDB <- 0.02
PDC <- 0.03

# finding the total probability using total probability theorem. 

TOTAL = (PDA*PA)+(PDB*PB)+(PDC*PC)

#Applying Bayes' Theorem 
# P(A|D) = P(D\A)P(A)/TOTAL PROBABILITY
PAD = (PDA*PA)/TOTAL
PAD = round(PAD,2) # For rounding off

# we can also do it much easily using vectors.

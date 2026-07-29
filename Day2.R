#vectors and matrices
#for creating a vector we use c
#Note - indexing in R starts from 1
x1 <- c(1:9)
gender <- c("male", "female")
print(2:7)

#for printing sequence
print(seq(from = 1, to = 9, by = 2))

print(seq(from = 1, to = 7, by = 0.25))

#for repeating
print(rep(1, times = 10))
print(rep(c("a", "b"), times = 5))

#to add something to each element we can add directly just like numpy arrays in python
print(x1+100)

#if two vectors are of same length we can
#peroform arithmetic operations on corresponding element

y<-(2:10)
print(x1+y)

#extracting elements form vector
print(y[3])
print(y[-3]) #this will extract everyelement expect the third
print(y[-c(1,5)]) # will extract all element expect 1 & 5
print(y[y<6])



#Now matrix
#for matrix we use the matrix command.

#BYROW=TRUE WILL PRINT NUMBER ROW WISE.
mat<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,byrow=TRUE)
print(mat[3,1])

print(mat[c(1,3),2])#row 1 & 3 and column 2

#extracting all the elements of a particular column
print(mat[2,])
print(mat[,1])# all rows with column 1



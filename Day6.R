x<-56
#is.integer is used to check whether the number is of integer class

# we have to use else statment just after the closing bracket of if (not leave a line)
if(is.integer(x)){
  print("Apple")
}else{
  print("Hello world")
}

# %in% means - is the value present in the vector
y<-c("Mango","Banana","Strawberry","Mulberry")
if("Mango"%in% y)
{
  print("found")
}else{
  print("Not found")
}

marks<-50
if(marks>60){
  print("A grade")
}else if(marks>=50 && marks<60){
  print("B grade")
}else{
  print("C grade")
}



  
#Looping in R.
#for (variable in vector)
for (y in 1:10){
  print(paste("Number: ",y))
}

f<-c("Some_random_human","Raja","Chor","Mantri","Praja")
for (w in f){
  print(paste(w))
}

# next and break keyword.
#next is like continue in cpp. it just skips the current interation.

for (y in 1:10){
  if(y%%2==0){
    next;
  }else{
    print(y);
  }
  
}

# repeat key word - In R, repeat is a loop keyword used to 
# execute a block of code again and again indefinitely until
# you explicitly stop it using break.
i<-0;
repeat{
  print(i)
  i <- i+1;
  if(i==10){
    break;
  }
}
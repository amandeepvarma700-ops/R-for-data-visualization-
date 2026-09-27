#switch(expression, casel, case2,...)
# here we are searching with the help of mathching indexes (note in R indexing start with 1).
x<-switch(2,
          "Ram",
          "Shayam",
          "Aditi",
          "Amandeep"
          )
print(x)
y<-"20"

# here value of y will be compared.

z<-switch(y,
       "5" = "Amandeep",
       "20" = "Anjal",
       "23" = "Aditi Panda"
       )
print(z)








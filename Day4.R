# One more assignment technique
10->a
b<-20
# To concatenate and print
cat(a," is equal to ",b)

# Data types in R
# Logical, numeric, integer, complex, character, raw (rarely used)

#-----------------------------------------------------------------------------
# default data type for numbers is numeric - as more statistical qsn involves decimals.
#look numeric class == double data type
c<-10
typeof(c)# use to check data type
class(c) # use to check the class type
#-------------------------------------------------------------------------------

#integer
d<-45L #L in suffix makes it integer
class(d)
typeof(d)

#------------------------------------------------------------------------------
#complex
e<-4+5i
f<-6+5i
print(e+f)
class(e+f)
typeof(e+f)

#------------------------------------------------------------------------------
#Logical TRUE and FALSE - here TRUE and FALSE will not indicate 1 and 0.
g<-TRUE
class(g)
typeof(g)

#-------------------------------------------------------------------------------
#character data type
h<-'a'
i<-"a"
#type and class are both characters.
class(h)
typeof(i)

#----------------------------------------------------------------------

# Type conversion
intl<-15
intl<-as.integer(intl)
class(intl)
intl<-as.numeric(intl)
class(intl)

# to numeric

num1<-as.numeric(5+6i)
print(num1)
num3<-as.numeric(TRUE)
num4<-as.numeric("123a") #always NA if there is even 1 alphabet.

# to integer
num5<-as.integer(5.2)#5L
num5<-as.integer(TRUE)#1L

#to complex
com1<-as.complex(544.343) # will add + 0i


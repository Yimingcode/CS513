
#################################################
#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Vectorization
#  First Name  : Khasha
#  Last Name  : Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :


#################################################
##   Step:
##        length()
##        nchar()
##        is.vector() etc.
##        seq()
##        as.integer()etc.
##        typeof()
##        rm(list=ls())
################################################# 

hello<-c("Hello World")

?length()
hello
length(hello)

?nchar()
nchar(hello)


?is.vector()
is.vector(hello)
mode(hello)


x1<-c(10,5,6,6,6,7)
x1
mode(x1)
x2<-c(1,2,3,4) 
x2


x3<-x1+x2
 
x1
x2
x3


?seq()
x3<-seq(from=10.2,to=26.5,by=2.1)

x4<-c(1,2,3,4,5,6)
mode(x4)
typeof(x4)

x5<-seq(from=1,to=6,by=1)
typeof(x5)


x6<-1:6
typeof(x6)

x7<-as.integer(x5)
typeof(x7)

x5<-seq(from=1,to=6,by=1)
x6<-c('a','b','c')

typeof(x5)
typeof(x6)

x8<-c(x5,x6)

typeof(x8)



x9<-c(x8,hello)
typeof(x9)


1:6
x2<-1:6
x3<-x1+x2
x3

x2<-1:3
x3<-x1+x2
x3

x2<-1:4
x3<-x1+x2
x3

mixed_vector<-c(1,2,8.5,'5')
mode(mixed_vector)
typeof(mixed_vector)
  



?typeof( )
typeof(mixed_vector)

?as.integer()
intger_vector<-as.integer(mixed_vector)
typeof(intger_vector)

?integer()
x<-5
typeof(x)
is.integer(x)
y<-integer(length=0)
y
typeof(y)
is.integer(y)


mixed_vector<-as.character(c(1,2,8.5))

mode(mixed_vector)

ls()
?rm()

objects<-ls()
?rm()
rm(list=ls())

#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : symbol, value pair 
#  First Name  : Khasha
#  Last Name	: Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :

rm(list=ls())
#################################################
##   Step:
##        names() 
##       
#################################################

myfirstname<-"Khasha"
myfirstname
mylastname<- "Dehnad"
mylastname


myfirstlast<-c( myfirstname,mylastname)
myfirstlast 

rm("myfirstname")
myfirstname
myfirstname<-"Jack"


myfirstlast



myfirstname<-"Khasha"
myfirstname
mylastname<- "Dehnad"
mylastname
myfirstlast<-c( myfirstname,myfirstname)
myfirstlast 

myfirstname<-"mynewfirstname"
myfirstname
myfirstlast

avector<-c(1,2,3,4)
avector


names(avector)<-c("one","two","three","four")
avector

typeof(avector)
elmentnames<-names(avector)



x<-names(avector)
x
names(avector)<-c("new 1","new 2","new 3","new 4")
avector
names(avector)
myvectornames<-names(avector)


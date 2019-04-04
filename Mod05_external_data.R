############################################## ###
#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : external data
#  First Name  : Khasha
#  Last Name  : Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :

rm(list=ls())
############################################## ###
##   Step:
## 
##       read.csv
##       file
##       close
##       write.csv
##       setdiff
##       getwd
##
##
##
##
##
################### ###

##       read.csv   ####
?read.csv()
 
Titanic<-
    read.csv("C://AIMS/Stevens_/R- Bootcamp/raw_data/Titanic_rows.csv")
name <-file.choose()

View(Titanic)
is.data.frame(Titanic)
dsn<-
  read.csv("C://AIMS/Stevens_/R- Bootcamp/raw_data/Titanic_rows.csv")

con<-file("C://AIMS/Stevens_/R- Bootcamp/raw_data/Titanic_rows.csv",'r')
Titanic2 <- read.csv(con)
close(con)
View(Titanic2)

lung<-
  read.csv("C://AIMS/Stevens_/R- Bootcamp/raw_data/lung.csv")

con<-file("C://AIMS/Stevens_/R- Bootcamp/raw_data/lung.csv",'r')
 
lung2 <- read.csv(con, 
                      header = TRUE,
                  colClasses=c("ID"="character","AREA"="factor",
                               "Gender_father"="NULL"))
 close(con)
 View(lung2)

# read csv file into R

 
dsn <- read.csv("http://www.location/dsn.csv",
                colClasses=c("id"="character"))


 
##       write.csv   ####
?write.csv()
write.csv(dsn,"C://AIMS/Stevens_/R- Bootcamp/raw_data/dsn.csv")
write.csv(dsn,"C://AIMS/garbage/dsn.csv")



a<-c("a1","a2","a3","a4")
ax<-c("a1","a2")
setdiff(a,ax)


?setdiff()
keep<-c("lung","Titanic","keep")
setdiff(ls(),keep)
rm(list=(setdiff(ls(),keep)))

getwd()
setwd("C:/AIMS/Stevens_/R- Bootcamp/wd")
setwd("C:/Users/Khasha/Documents")
rm(list=ls())    
 
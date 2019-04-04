#  Course          : Data Mining 
#  First Name      : Khasha
#  Last Name       : Dehnad
#  Id              : 12345
#  purpose         : apply kknn to iris dataset



## remove all objects
rm(list=ls())


# check to see if you have the kknn package
installed.packages()
#install.packages("kknn")
#Use the R library("kknn") 

library(kknn)
?kknn()


bc_raw<-
  read.csv("C://AIMS/Stevens_/2019_S_CS513/Raw_data/breast-cancer-wisconsin.data.csv",
           na.strings = "?",
           colClasses=c("Sample"="character",
                        "F1"="factor","F2"="factor","F3"="factor",
                        "F4"="factor","F5"="factor","F6"="factor",
                        "F7"="factor","F8"="factor","F9"="factor",
                        "Class"="factor"))
is.factor(bc_raw$F1)
bc<-na.omit(bc_raw)

idx<-sort(sample(nrow(bc),as.integer(.70*nrow(bc))))

training<-bc[idx,]

test<-bc[-idx,]



?kknn() 
dev.off()

predict <- kknn(formula=factor(Class)~. ,  training[,-1],test  , kernel="rectangular", k=3)
 
#Extract fitted values from the object " "
fit <- fitted(predict)
table(kknn=fit,test$Class)
knn_error_rate=sum(fit!=test$Class)/length(test$Class)
print(knn_error_rate)

for(i in 1:10) {
predict <- kknn(formula=factor(Class)~. ,  training[,-1],test  , kernel="rectangular", k=i)

#Extract fitted values from the object " "
fit <- fitted(predict)
table(kknn=fit,test$Class)
knn_error_rate=sum(fit!=test$Class)/length(test$Class)
print(knn_error_rate)
} 



rm(list=ls())
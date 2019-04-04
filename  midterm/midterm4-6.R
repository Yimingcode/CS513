#Midterm
#Yiming Xu
#10438422
##4
rm(list = ls())
#(a)
data<-c(45,48,6,42,49,63,81,56,21,75,25,48,56,24,73,82,NA,80,86,88)
#(b)
max(data,na.rm = TRUE)
min(data,na.rm = TRUE)
median(data,na.rm = TRUE)
mean(data,na.rm = TRUE)
sd(data,na.rm = TRUE)
#(c)
data[is.na(data)]<-round(mean(data,na.rm = TRUE))
boxplot(data)

##5
rm(list = ls())
data<-read.csv("/Users/xuyiming/Downloads/IBM_Employee_Attrition_v1.csv")
install.packages("kknn")
library(kknn)
#(a)
data_missing<-na.omit(data)
#(b)
idx<-seq(from=3,nrow(data_missing), by=3)
test<-data_missing[idx,]
train<-data_missing[-idx,]
#(c)
res<-kknn(Attrition~.,train,test,k=3, kernel = "rectangular")
#(d)(e)
fit <- fitted(res)
table(test$Attrition,fit)
true_class<-(fit==test$Attrition)
accuracy<-sum(true_class)/length(true_class)
error_rate<-1-accuracy

##6
rm(list = ls())
data<-read.csv("/Users/xuyiming/Downloads/IBM_Employee_Attrition_v1.csv")
install.packages("class")
install.packages("e1071")
library(class)
library(e1071)
#(a)
data_missing<-na.omit(data)
#(b)
idx<-seq(from=3,nrow(data_missing), by=3)
test<-data_missing[idx,]
train<-data_missing[-idx,]
#(c)
model <- naiveBayes(Attrition~ ., data=train)
predict(model, test)
predict(model, test,type = "raw")
#(d)(e)
nBayes_mit <- naiveBayes(Attrition~JobSatisfaction+Single+Gender, data =train)
category_mit<-predict(nBayes_mit,test)
table(NBayes_all=category_mit,Attrition=test$Attrition)
NB_wrong<-sum(category_mit!=test$Attrition)
NB_error_rate<-NB_wrong/length(category_mit)


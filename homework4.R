#homework4 
#Yiming Xu
#10438422
rm(list = ls())
data <- 
  read.csv("/Users/xuyiming/Desktop/513B/breast-cancer-wisconsin.data.csv",na.strings = "?")
data_delete<-na.omit(data)
data_delete$Class<-factor(data_delete$Class,levels = c(2,4),labels = c("benign","malignant"))
install.packages("class")
install.packages("e1071")
library(class)
library(e1071)
idx <- sample(2, nrow(data_delete), replace=TRUE, prob=c(0.7, 0.3))
trainData <- data_delete[idx==1,]
testData <- data_delete[idx==2,]
model <- naiveBayes(Class ~ ., data=trainData)
predict(model, testData)
predict(model, testData,type = "raw")
## Naive Bayes classification using only one variable 
nBayes_class <- naiveBayes(Class ~F6, data =trainData)
category_class<-predict(nBayes_class,testData)
table(NBayes_all=category_class,Class=testData$Class)
NB_wrong<-sum(category_class!=testData$Class)
NB_error_rate<-NB_wrong/length(category_class)
## Naive Bayes classification using two variables 
nBayes_class_mit <- naiveBayes(Class ~F6+F9, data =trainData)
category_class_mit<-predict(nBayes_class_mit,testData)
table(NBayes_all=category_class_mit,Class=testData$Class)
NB_wrong<-sum(category_class_mit!=testData$Class)
NB_error_rate<-NB_wrong/length(category_class_mit)



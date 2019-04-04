#homework3 
#Yiming Xu
#10438422
rm(list = ls())
data <- 
  read.csv("/Users/xuyiming/Desktop/513B/breast-cancer-wisconsin.data.csv",na.strings = "?")
install.packages("kknn")
library(kknn)
?kknn()
data_delete<-na.omit(data)
data_delete$Class<-factor(data_delete$Class,levels = c(2,4),labels = c("benign","malignant"))
idx<-sample(2,nrow(data_delete),replace = TRUE,prob = c(0.7,0.3))
trainData <- data_delete[idx==1,]
trainData
testData <- data_delete[idx==2,]

model<-kknn(Class ~ .,trainData,testData,k=5)
summary(model)
fit <- fitted(model)
table(testData$Class,fit)
true_class<-(fit==testData$Class)
accuracy<-sum(true_class)/length(true_class)

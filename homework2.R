#homework2 
#Yiming Xu
#10438422
rm(list=ls())
data <- 
  read.csv("/Users/xuyiming/Desktop/513B/breast-cancer-wisconsin.data.csv",na.strings="?")

#I
summary(data)
#II
is.na(data)

#for(i in 1:ncol(data)){
#  data[i][is.na(data[i])] <- round(mean(data[i], na.rm = TRUE))
#}

#III
getMode<-function(v){
  uniqv<-unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
data$F6[is.na(data$F6)]<- as.integer(getMode(data$F6))
#IV
table(data$Class,data$F6)
#V
pairs(data_missing[2:7])
#VI
hist(data_missing$F7)
hist(data_missing$F8)
hist(data_missing$F9)
boxplot(data_missing[8:10])
#2
rm(list = ls())
data <- 
  read.csv("/Users/xuyiming/Desktop/513B/breast-cancer-wisconsin.data.csv",na.strings="?")
data.na.omit<-na.omit(data)

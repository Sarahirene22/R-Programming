#encoding categorical data
data$Country=factor(data$Country,
                    levels=c('France', 'Spain', 'Germany'),
                    labels=c(1, 2, 3))
data$Purchased=factor(data$Purchased,
                    levels=c('No', 'Yes'),
                    labels=c(0,1))
data
#splitting the datset into training set and test set
#install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(data$Purchased, SplitRatio=0.8)
training_set=subset(data, split==TRUE)
test_set=subset(data, split==FALSE)
data
#feature scaling
training_set[, 2:3]= scale(training_set[, 2:3])
test_set[, 2:3]=scale(test_set[, 2:3])
data


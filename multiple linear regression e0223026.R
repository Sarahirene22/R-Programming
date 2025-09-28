
dataset=read.csv("C:\\Users\\ECE-Lab\\Downloads\\50_Startups.csv")
dataset
dataset=dataset[, 2:3]

#encoding
dataset$State=factor(dataset$State,
                      levels=c('New York', 'California', 'Florida'),
                      labels=c(1,2,3))

#splitting
#install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Profit, SplitRatio=0.75)
training_set=subset(dataset, split==TRUE)
test_set=subset(dataset, split==FALSE)
split

#feature scaling
training_set[,1:2]=scale(training_set[, 2:3])
test_set[, 1:2]= scale(test_set[, 2:3])

regressor=lm(formula=Profit ~.,
             data=training_set)

y_pred=predict(regressor, newdata=test_set)
y_pred
split

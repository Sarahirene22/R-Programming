setwd("C:\\Users\\ECE-Lab\\Downloads")
getwd()
data <- read.csv("Data.csv")
data
data [! complete.cases(data),]
#filtering using $
data$Salary == NA
#filterimg using is na()for missing data
is.na (data$Salary)
data [is.na(data$Salary),]
data_backup <- data
data [!complete.cases(data),]
data [is.na(data$Salary),]
data [!is.na(data$Salary),]
data <- data [!is.na(data$Salary),]
data
data[!complete.cases(data),]
data$Age = ifelse(is.na(data$Age),
                  ave(data$Age, FUN = function(x) mean(x, na.rm =  TRUE)),
                  data$Age)
data


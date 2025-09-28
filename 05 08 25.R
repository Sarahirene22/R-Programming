?read.csv()
#method 1: select the file manually
stats <- read.csv(file.choose())
stats

#method 2: set WD and read data
getwd()
setwd("C:/Users/ECE-Lab/Downloads")
getwd()
rm(stats)
stats <- read.csv("Copy of 50_Startups.csv")
stats

#exploring data
stats
nrow(stats)
ncol(stats)
head(stats)
head(stats, n=10)
tail(stats)
tail(stats, n=8)
str(stats)
summary(stats)

#usimg $sign
stats
head(stats)                                                                              

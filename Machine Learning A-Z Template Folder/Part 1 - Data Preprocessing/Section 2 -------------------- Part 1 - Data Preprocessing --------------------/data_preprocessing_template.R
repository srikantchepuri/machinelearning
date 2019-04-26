# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('Data.csv')
#dataset = dataset[,2:3]  #incase you need to only take specific columns from the dataset

#Taking care of missing data
# dataset$Age=ifelse(is.na(dataset$Age),
#                    ave(dataset$Age, FUN=function(x) mean (x, na.rm=TRUE)),
#                    dataset$Age
#                   )
# dataset$Salary=ifelse(is.na(dataset$Salary),
#                    ave(dataset$Salary, FUN=function(x) mean (x, na.rm=TRUE)),
#                    dataset$Salary)

#Encoding Categorical Data
# dataset$Country=factor(dataset$Country,
#                        levels=c('France','Spain','Germany'),
#                        labels=c(1,2,3))
# 
# dataset$Purchased=factor(dataset$Purchased,
#                        levels=c('No','Yes'),
#                        labels=c(0,1))


#Splitting the dataset into training set and test set
#install the following library if it's not already installed
#install.packages('caTools')

library(caTools)
set.seed(123)
split=sample.split(dataset$Purchased,SplitRatio = 0.8)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)

# #FeatureScaling
# training_set[,2:3]=scale(training_set[,2:3])
# test_set[,2:3]=scale(test_set[,2:3])


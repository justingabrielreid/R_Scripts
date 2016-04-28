#analysis of yoyo training data for softball atheletes 

#import the csv file yoyo data
yoyo <- read.csv('yoyo_data.csv')

#perform t test on the data 
t.test(yoyo[['Dec..2014']], yoyo[['Jan..2016']], paired = T)
#results indicate that the data is unlikely to be sourced from the same data
#thus the columns have a high likely hood of being independent of each other 

#constructing a dataframe from the csv file 
yoyo14_to_16 <- data.frame(m1 = yoyo[['Dec..2014']], m3 = yoyo[['Jan..2016']])
#transpose the dataframe 
t_yoyo14_to_16 <- t(yoyo14_to_16)
#name the columns
colnames(t_yoyo14_to_16) <- 1:19

#the dataset contains lots of missing values, will restrict to individuals with 
#entirety of training data over the course of the two time periods. 

cc14_16<- t_yoyo14_to_16[, t(complete.cases(t(t_yoyo14_to_16)))]
#plotting the first row of the data Dec..2014 in red circles 
plot(cc14_16[ 1, ], col = 'red', pch=16, ylim=c(0, 1200))
#plotting the second column of the data Jan..2016 in green triangles
points(cc14_16[ 2, ], col = 'green', pch=17)







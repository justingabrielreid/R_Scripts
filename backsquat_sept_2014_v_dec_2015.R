#Plot and t-test of September 2014 v December 2014

#import the dataset 
bs <- read.csv('DataSets/backsquat.csv')

#perform a t-test on the backsquat data for Sep2014 & Dec2014
t.test(bs[['Sep..2014']], bs[['Dec..2015']], paired=T)
bs14 <- data.frame(m1 = bs[['Sep..2014']], # make data frame with first and third times
                   m3 = bs[['Dec..2014']])
bs14# mnemonics: 1 means first column; 3 means third column
#transpose
tbs14 <- t(bs14)
#name the columns 
colnames(tbs14) <- 1:19
#data set is missing a lot of values, will restrict to indiv 
#with values for both time frames 
cc14<- tbs14[ , t(complete.cases(t(tbs14)))]
#plotting the complete dataset
#first column in green circles 
plot(cc14[ 1, ], col = 'green', pch=16, ylim=c(0, 400))
#second column in yellow triangles 
points(cc14[ 2, ], col = 'yellow', pch=17)


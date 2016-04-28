#vertical jump data 
vert_jump <- read.csv('vert_Jump_Data.csv')
#t-test on vertical jump data from Sept..2015 to Dec..2016 
t.test(vert_jump[['Sept..2015']], vert_jump[['Jan..2016']], paired = T)
#p-value of 0.9026 which does not indicate a high degree of statisitcal significance 
#construct a dataframe from the CSV file 
vert_jump15_to_16 <- data.frame(m1 = vert_jump[['Sept..2015']],
                           m3 = vert_jump[['Jan..2016']])
#transpose the dataframe 
t_vert_jump_15_16 <- t(vert_jump15_to_16)
#naming columns
colnames(t_vert_jump_15_16) <- 1:19

#dataset contains many missing values will use the complete cases function to restrict to individuals with the entirety of the training data over the course of the time period

cc15_16 <- t_vert_jump_15_16[,t(complete.cases(t(t_vert_jump_15_16)))]

#plotting time 
plot(cc15_16[1,], col='black', pch=16, ylim=c(17,26))
points(cc15_16[2,], col = 'green', pch=17, title(main='Vertical Jump September 2015 - December 2016'), legend(x,y, legend = c['Black is September 2015', 'Green is December 2016']))


# For this we will not use ggplot
bs <- read.csv('backsquat.csv')
t.test(bs[['Sept..2013']], bs[['Sep..2014']], paired=T)
bs13 <- data.frame(m1 = bs[['Sept..2013']], # make data frame with first and third times
                   m3 = bs[['Sep..2014']])
bs13 # mnemonics: 1 means first column; 3 means third column
tbs13 <- t(bs13) # transpose it; mnemonic: t for transposed
tbs13
colnames(tbs13) <- 1:19
tbs13
cc13 <- tbs13[ , t(complete.cases(t(tbs13)))] # restrict to only the players that have a
                                              # measurement for both times
cc13
plot(cc13[ 1, ], col = 'blue', pch=16, ylim=c(0, 400), xlab = 'Player Id', ylab = 'Weight Lifted (lbs)') # plot first row in blue circles
                                        # pch stands for Plot CHaracter
                                        # 16 means filled circle; 17 means filled triangle
                                        # the function 'points' adds to an existing plot
points(cc13[ 2, ], col = 'red', pch=17, title(main = 'Back Squat Performance', sub = 'September 2013 (blue) to September 2014 (red)')) # plot second row in red triangles


## Try doing a comparison for second half, i.e., the times: Sep..2014 vs Dec..2015.
## I mean, make a second plot and do another paired t-test.
## You will need to copy and change the code above.
## Think about questions like these:
## Do you think the training was more effective in the first half or the second half? Why?
## Do the T-tests and the graphs corroborate each other, or do they seem to be saying different things?
## If you can, write a 1-page report to the coach, including the two graphs, a paragraph of text
## explaining how well the training is working.


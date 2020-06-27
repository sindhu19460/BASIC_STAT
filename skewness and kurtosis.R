#Calculate Skewness, Kurtosis & draw inferences on the following data
#####################Cars speed and distance#####################
#install.packages("moments")
library(moments)
x <- read.csv("F:\\Excelr\\Assignment\\Assignment1\\Q9_a.csv" , header = TRUE)

skewness(x)
kurtosis(x)
hist(x$speed ~ x$dist)
dev.off()
########################SP and Weight(WT)######################
Q9_b <- read.csv("F:\\Excelr\\Assignment\\Assignment1\\Q9_b.csv")
skewness(Q9_b)
kurtosis(Q9_b)
hist(Q9_b$SP ~ Q9_b$WT)
#install.packages("ggplot2")
#library(ggplot2)
#data <- data.frame(x)
##ggplot(data, aes(x = data), binwidth = 2) + 
  geom_histogram(aes(y = ..density..), fill = 'red', alpha = 0.5) + 
  geom_density(colour = 'blue') + xlab(expression(bold('Simulated Samples'))) + 
  ylab(expression(bold('Density')))

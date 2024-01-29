adverts<- c(5,4,4,6,8)
packets<- c(8,9,10,13,15)
cor(adverts,packets)


###set the working directory
getwd()
setwd("C:/Users/SAMREEN/Desktop/dataset of statistics")


###load the libraries
library(readxl)
library(ggplot2)

###read in the data
data<- read_excel("kc_house_data.xlsx")


###summarise the data

summary(data)

###create ggplot 2 of relationship between
###house price and living area
ggplot(data=data,mapping = aes(x=sqft_living,y= price))+geom_point()+geom_smooth(method="lm")

cor(data$sqft_living, data$price)

cor.test(data$sqft_living, data$price)

cor(data$grade, data$price, method="spearman")
cor.test(data$grade,data$price,method="spearman")

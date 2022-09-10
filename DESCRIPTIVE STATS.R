


airquality <- datasets::airquality

### top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

# columns
airquality[50:60,c(1,2)]

df<-airquality[,-6]

# Descriptive statastics
# 1

summary(airquality[,c(4,5)])
summary(airquality[,c(2,3)])


airquality$Temp
airquality$Wind
airquality$Solar.R


#1
summary(airquality$Ozone)
summary(airquality$Wind)

## summary of dataset ####

### visualization ###
## scatterplot

plot(airquality$Temp)
plot(airquality$Solar.R)

plot(airquality$Ozone,airquality$Temp,type ="p")

plot(airquality)

### point and lines ###
plot(airquality$Wind,type = "l")# p: point l: lines,b:both

plot(airquality$Wind,type = "b")
plot(airquality$Wind,xlab = 'ozone concentration',
     ylab = ' no of instances',main = 'ozone concentration in NY city',
     col='blue',type = 'l')


### Horizontal bar plot
barplot(airquality$Ozone,ylab = 'ozone levels',main = 'ozone concentration in NY city',
     col='blue',horiz = F,axes = T)

## HISTOGRAM
hist(airquality$Temp)
hist(airquality$Temp,main = 'Solar radiation values in air',xlab = 'solar rad',col ='red')

## single boxplot
boxplot(airquality$Ozone,main="boxplot")
boxplot.stats(airquality$Ozone)$out

### multipal box plot

boxplot(airquality[,1:4],main='multipal')

## margin of the grid(mar)
## no of rows and columns (mfrow)
## wheater a border is to be included(bty)
## labels (las:1 for horizontal, las : 0 for vertical)
## bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
barplot(airquality$Ozone,main = 'ozozne concentration in air',xlab = 'ozone level',
        col = 'green',horiz = TRUE)


hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='multipal box plot')

summary(airquality)

##
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm = T)




     
     
     
     
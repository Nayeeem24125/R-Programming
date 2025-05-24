library(ggplot2)
data("diamonds")
df<-diamonds
df
head(diamonds)
str(diamonds) #to show the structure
summary(diamonds)
dsmall<-diamonds[sample(nrow(diamonds),100),]
qplot(carat,price,data=diamonds)
qplot(log(carat),log(price),data=diamonds)
qplot(carat,x*y*z,data=diamonds)
qplot(carat,price,data=dsmall,colour=color)
qplot(carat,price,data=dsmall,shape=cut,colour=color)
qplot(carat,price,data=diamonds,geom = c('point','smooth'),se=FALSE)

qplot(color,price,data=diamonds,geom='jitter',colour=I(alpha('black',1)))

qplot(carat,data=diamonds,geom='histogram',binwidth=0.1,xlim = c(0,3))
qplot(carat,data=diamonds,geom='density')
qplot(carat,data=diamonds,geom='histogram',binwidth=0.1,xlim = c(0,3),fill=color)
qplot(carat,data=diamonds,geom='density',colour=color)

qplot(color,data=diamonds,geom='bar',fill=color)

qplot(date,unemploy/pop,data=economics,geom='line')

qplot(carat,data=diamonds,facets=color ~ .,geom='histogram',binwidth=0.1,xlim = c(0,3),fill=color)

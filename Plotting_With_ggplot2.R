library(ggplot2)
p<-ggplot(data=diamonds,aes(carat,price,colour = color))
p+layer(geom = 'point')

p<-ggplot(diamonds,aes(x=carat))
p+layer(geom='bar',geom_params=list(fill='steelblue'),stat ='bin',stat_params=list(binwidth=TRUE))

data()
BOD
ggplot(BOD,mapping = aes(x=Time,y=demand))+geom_point(size=4)+geom_line(colour='red')

df<-data.frame(x=c(3,1,5),y=c(2,4,6),label=c('a','b','c'))
ggplot(df,aes(x,y,label=label))+geom_point()
ggplot(df,aes(x,y,label=label))+geom_bar(stat = 'identity')
ggplot(df,aes(x,y,label=label))+geom_line()
ggplot(df,aes(x,y,label=label))+geom_polygon()
ggplot(df,aes(x,y,label=label))+geom_tile()
ggplot(diamonds,aes(depth))+geom_histogram(aes(fill=cut),bins = 25)

library(tidyverse)
data()
names(mpg)
?mpg
ggplot(mpg,aes(displ,hwy))+geom_point(aes(colour = drv))+
  geom_smooth(method = lm,se=F)+theme_dark()+labs(x='display',y='high way',title='this is a graph')
data()
names(Nile)
?Nile
ggplot(sleep,aes(group,extra,colour=ID))+geom_point(size=4)+theme_get()
data<-drop_na(vore)

ggplot(msleep,aes(vore))+geom_bar(fill='yellow',color='black')+coord_flip()+
  labs(x='something',y='something',title='something')+theme_dark()
ggplot(msleep,aes(awake))+geom_histogram(binwidth=3,colour='green',fill='yellow')


ggplot(msleep,aes(bodywt,brainwt))+geom_point(aes(colour = sleep_total,size = awake))+geom_smooth()



ggplot(msleep,aes(vore,sleep_total))+geom_boxplot(fill='green')



ggplot(msleep, aes(x = bodywt, y = brainwt)) +
  geom_point() +
  facet_wrap(~ vore)
ggplot(msleep,aes(sleep_total,fill = vore))+geom_density(alpha=.4)+xlim(5,30)


ggplot(msleep,aes(vore,fill=order))+geom_bar(position = 'dodge')+
  labs(x='something',y='something',title='something')+theme_dark()

ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point()


ggplot(mtcars, aes(x = wt, y = mpg, color = cyl)) +
  geom_point()



df <- data.frame(
  category = c("A", "B", "C", "D"),
  value = c(10, 23, 17, 5)
)

ggplot(df, aes(x = category, y = value)) +
  geom_bar(stat = "identity", fill = "steelblue")


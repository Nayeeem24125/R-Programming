library(ggplot2)
p<-ggplot(data=diamonds,aes(carat,price,colour = color))
p+layer(geom = 'point')

p<-ggplot(diamonds,aes(x=carat))
p+layer(geom='bar',geom_params=list(fill='steelblue'),stat ='bin',stat_params=list(binwidth=TRUE))



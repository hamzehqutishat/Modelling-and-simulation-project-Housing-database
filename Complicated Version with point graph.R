library(tidyverse)
Sacramentorealestatetransactions <- read_csv("Sacramentorealestatetransactions.csv")
View(Sacramentorealestatetransactions)
str(Sacramentorealestatetransactions)

library(ggplot2)

ggplot(data=Sacramentorealestatetransactions,aes(x=price))+
geom_histogram(bins=40)

ggplot(data=Sacramentorealestatetransactions,aes(x=price))+
geom_histogram(bins=40,fill="blue",col="lightblue")

ggplot(data=Sacramentorealestatetransactions,aes(x=price,y=sq_ft,group = 1))+
geom_boxplot()

ggplot(data=Sacramentorealestatetransactions,aes(x=price,y=sq_ft,fill=sq_ft,group = 1))+
geom_boxplot(fill="red",col="black")

ggplot(data=Sacramentorealestatetransactions,aes(x=price,y=bedrooms,fill=bedrooms,group = 1))+
geom_boxplot(fill="blue",col="black")

ggplot(data=Sacramentorealestatetransactions,aes(x=price,y=bathrooms,fill=bathrooms,group = 1))+
geom_boxplot(fill="green",col="black")

ggplot(data=Sacramentorealestatetransactions,aes(x=price,y=type,fill=type))+
geom_boxplot(fill="yellow",col="black")

ggplot(data=Sacramentorealestatetransactions,aes(x=price,y=city,fill=city))+
geom_boxplot(fill="lightblue",col="black")

ggplot(data=Sacramentorealestatetransactions,aes(x=price,y=city,fill=city))+
geom_boxplot()

ggplot(data=Sacramentorealestatetransactions,aes(x=price,y=state,fill=state))+
geom_boxplot()

ggplot(data=Sacramentorealestatetransactions,aes('x || y',x=sq_ft,y=price))+
geom_point()+
geom_smooth(method = "lm",se="F")

ggplot(data=Sacramentorealestatetransactions,aes('x || y',x=sq_ft,y=price))+
geom_point(col="purple")+
geom_smooth(method = "lm",se="F")

ggplot(data=Sacramentorealestatetransactions,aes('x || y',x=sq_ft,y=price,col=factor(bedrooms)))+
geom_point()+
geom_smooth(method = "lm",se="F")+
labs(col="bedrooms")

summary(Sacramentorealestatetransactions)
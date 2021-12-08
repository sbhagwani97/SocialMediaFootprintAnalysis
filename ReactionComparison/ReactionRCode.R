setwd("C:/Users/SHIVAM BHAGWANI/Desktop/SIN Project")
dominos<-read.csv("dominos_final.csv")
dominosReact<-dominos$Reactions
pizza<-read.csv("pizzahut_final.csv")
pizzaReact<-pizza$Reactions
dat<-data.frame(dominosReact, pizzaReact)
dat
lm(dominosReact~pizzaReact)
library(ggplot2)
library(plotly)
ggplot()+
  geom_point(data=dat, aes(x=dominosReact, y=pizzaReact), color='black')
liney<-dominosReact*(-0.1312)+208.8776
line<-data.frame(dominosReact, liney)
plot<-ggplot()+
  geom_point(data=dat, aes(x=dominosReact, y=pizzaReact), color='black')+
  geom_line(data=line, aes(x=dominosReact, y=liney), color='red')
ggplotly(plot)

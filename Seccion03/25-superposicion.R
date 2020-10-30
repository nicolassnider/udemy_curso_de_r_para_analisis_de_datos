library(gapminder)
library(tidyverse)
library(ggplot2)

data("iris")
head(iris)

ggplot(data=iris,
       mapping = aes(x= Sepal.Length,
                     y= Sepal.Width,
                     color=Species)) + 
  geom_point() + 
  geom_smooth()

ggplot(data=iris,
       mapping = aes(x= Sepal.Length,
                     y= Sepal.Width,
                     color=Species)) + 
  geom_point() + 
  geom_smooth(method = 'lm')
  
ggplot(data=iris[iris$Species=='setosa',],
       mapping = aes(x= 1:50,
                     y=Petal.Width))+
  geom_line()

ggplot(data=iris,
       mapping = aes(x= rep(1:50,3),
                     y=Petal.Width,
                     color=Species))+
  geom_line()


ggplot(data=iris,
       mapping = aes(x=Species,
                     y=Petal.Width,
                     fill=Species))+
  geom_boxplot()+
  geom_jitter()

##install.packages('gapminder')
##install.packages('tidyverse')

##
library(gapminder)
library(tidyverse)

data(gapminder)
head(gapminder)

distinct(gapminder,year)
distinct(gapminder,country)
print(distinct(gapminder,country), n=142)

## Portugal en 2007
gapminder %>%
  filter(country=='Portugal',
         year==2007)

## España en 2007
gapminder %>%
  filter(country=='Spain',
         year==2007)

## Plot de esperanza de vida en Americas en 2007
gapminder %>%
  filter(continent=='Americas',
         year==2007)%>%
  ggplot(aes(x=lifeExp,y=country)) + geom_point()

## Plot de esperanza de vida en Europa en 2007
gapminder %>%
  filter(continent=='Europe',
         year==2007)%>%
  ggplot(aes(x=lifeExp,y=country)) + geom_point()

## Plot de esperanza de vida en Argentina 
gapminder %>%
  filter(country=='Argentina')%>%
  ggplot(aes(x=year,y=lifeExp)) + geom_boxplot()

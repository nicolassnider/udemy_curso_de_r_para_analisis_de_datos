library(gapminder)

library(tidyverse)

gapminder %>% 
  filter(country == 'Portugal')

gapminder %>% 
  filter(lifeExp > 60 )

gapminder %>% 
  filter(country %in%  c('Portugal','Argentina')) %>% 
  print(n=50)

gapminder %>% 
  filter(lifeExp > 45,
         lifeExp <= 55)

gapminder %>% 
  filter(lifeExp > 60 ,
         continent =='Africa')

gapminder %>% 
  filter(lifeExp > 60 &
         continent =='Africa')

gapminder %>% 
  filter(lifeExp > 60 |
           continent =='Africa')

gapminder %>% 
  filter(lifeExp > 60 &
           !continent =='Africa')



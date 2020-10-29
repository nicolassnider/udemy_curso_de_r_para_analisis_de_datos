library(gapminder)

library(tidyverse)

max_edv <- gapminder %>% 
  summarise(max_edv = max(lifeExp))

gapminder %>% 
  filter(lifeExp >= as.numeric(max_edv[1]))

gapminder %>% 
  filter(year == 2007) %>% 
  summarise(sum_pop = sum(as.numeric(pop)))

## sum
## mean
## median
## min
## max
## n

 gapminder %>% 
   group_by(year) %>% 
   summarise(mean_edv = mean(lifeExp))
 
 gapminder %>% 
   filter(year == 2007) %>% 
   group_by(continent) %>% 
   summarise(sum_pop= (sum(as.numeric(pop))/1000000),
             n_paises= n())
 
 gapminder %>% 
   group_by(year, continent) %>% 
   summarise(sum_pop= (sum(as.numeric(pop))/1000000))
 
 gapminder %>% 
   group_by(continent,year) %>% 
   summarise(sum_pop= (sum(as.numeric(pop))/1000000))
 
 gapminder %>% 
   group_by(continent,year) %>% 
   summarise(mean_edv = mean(lifeExp)) %>% 
   ggplot(aes( x= year,
               y= mean_edv,
               color=continent)) +
   geom_line()
 


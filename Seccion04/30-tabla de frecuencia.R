library(gapminder)
library(tidyverse)

library(arsenal)

data("gapminder")

quantile(gapminder$pop)

gapminder$lifeExpLabel <- gapminder$lifeExp %>% 
  cut(breaks = c(0,50,70,100),
      labels = c('baja','media','alta'))

head(gapminder)

table1952 <- gapminder %>% 
  filter(year == 1952) %>% 
  tableby(continent ~ lifeExpLabel, data=.) %>% 
  summary(text=TRUE) %>% 
  as.data.frame()

table2007 <- gapminder %>% 
  filter(year == 2007) %>% 
  tableby(continent ~ lifeExpLabel, data=.) %>% 
  summary(text=TRUE) %>% 
  as.data.frame()


gapminder %>% 
  filter(year %in% c(1952,2007) ) %>% 
  ggplot(aes(x=continent,
             fill = lifeExpLabel))+
  geom_bar()

gapminder %>% 
  filter(year %in% c(1952,2007) ) %>% 
  ggplot(aes(x=continent,
             fill = lifeExpLabel))+
  geom_bar()+
  coord_flip()+
  facet_wrap(~year,
             ncol=1)

gapminder %>% 
  filter(year==2007) %>% 
  select(continent) %>% 
  table() %>% 
  freqlist() %>% 
  summary()

gapminder %>% 
  filter(year==2007) %>% 
  select(continent , lifeExpLabel) %>% 
  table() %>% 
  freqlist() %>% 
  summary()


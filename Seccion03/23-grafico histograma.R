library(gapminder)
library(tidyverse)

gapminder07 <- gapminder %>% 
  filter(year==2007)

hist(gapminder07$lifeExp)

hist(gapminder07$lifeExp,
     breaks = 20)

hist(gapminder07$lifeExp,
     breaks = c(0,50,100))

hist(gapminder07$lifeExp,
     breaks = seq(20,100,5))

##ggplot
ggplot( data = gapminder07,
        mapping = aes(x=lifeExp))+
  geom_histogram()

ggplot( data = gapminder07,
        mapping = aes(x=lifeExp))+
  geom_histogram(bins = 40,
                 color = 'white')


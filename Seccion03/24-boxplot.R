library(gapminder)
library(tidyverse)

gapminder07 <- gapminder %>% 
  filter(year==2007)

boxplot(gapminder07$lifeExp)

boxplot(lifeExp ~ continent,
        data=gapminder07)


ggplot(data = gapminder07,
       mapping = aes(y=lifeExp))+
  geom_boxplot()


p<- ggplot(data = gapminder07,
       mapping = aes(x=continent,
                     y=lifeExp,
                     fill=continent))+
  geom_boxplot()

p + coord_flip()

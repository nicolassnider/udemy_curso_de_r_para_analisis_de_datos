library(gapminder)
library(tidyverse)

gapminder07 <- gapminder %>% 
  filter(year==2007)


barplot(table(gapminder07$continent))

ggplot(data=gapminder07,
       mapping = aes(x=factor(continent)))+
  geom_bar()

ggplot(data=gapminder07,
       mapping = aes(x=factor(continent)))+
  geom_bar()+
  coord_flip()

gapminder07<- gapminder07 %>% 
  mutate(lifeExp_label =case_when(
    lifeExp<50 ~ 'Baja',
    lifeExp<70 ~ 'Media',
    TRUE ~ 'Alta'
  ))

p<-ggplot(data = gapminder07,
       mapping =  aes(x=factor(continent),
                      fill = factor(lifeExp_label)))

p+geom_bar(position = 'stack', stat = 'count')

p+geom_bar(position = 'dodge', stat = 'count')

p+geom_bar(position = 'fill', stat = 'count')
  
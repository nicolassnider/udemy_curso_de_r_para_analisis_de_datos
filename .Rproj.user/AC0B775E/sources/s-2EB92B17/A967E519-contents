library(gapminder)
library(tidyverse)

gapminderPortugal <- gapminder %>% 
  filter(country == 'Portugal')




# escogiendo datos de portugal con filter()
gapminderpt <- gapminder %>% 
  filter(country == 'Portugal')

# grafica de puntos con R base graphics
plot(x = gapminderpt$year,
     y = gapminderpt$lifeExp)

# grafica de lineas con R base graphics
plot(x = gapminderpt$year,
     y = gapminderpt$lifeExp,
     type = 'l')

library(ggplot2)
ggplot(data=gapminderPortugal,
       mapping = aes(x=year,
                     y=lifeExp))+
  geom_point()

ggplot(data=gapminderPortugal,
       mapping = aes(x=year,
                     y=lifeExp))+
  geom_line()+
  geom_smooth(method='lm')


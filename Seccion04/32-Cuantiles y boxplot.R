#Cuantil: toma un valor entre 0 y 1
##Cuantil 0.36 sería el punto  en el que se acumula el 36% de los valores
#
#Mediana: Divide la distribución en 2
#
#Cuartil: Divide la distribución en 4
## Q1, Q2, Q3, Corresponden a cuartiles 0.25 , 0.50 y 0.75
#
#Percentil: divide la distribucion en 100
#
#
##mediana M = Q2
##cuartiles Q1, Q3 
##Rango intercuartil (Ri = R3-R1)
##Valores atípicos leves (F1 y F3)
####F1=Q1-1.5Ri
####F1=Q1+1.5Ri

library(tidyverse)
library(gapminder)

##cuantiles 2007
gapminder %>% 
  filter(year==2007) %>% 
  select(lifeExp) %>% 
  pull() %>% 
  quantile()

gapminder %>% 
  filter(year==2007) %>% 
  select(lifeExp) %>% 
  pull() %>% 
  quantile(probs=c(0.36,0.74))

gapminder %>% 
  filter(year==2007) %>% 
  select(lifeExp,continent) %>% 
  ggplot(aes(x=continent,
             y=lifeExp,
             fill=continent))+
  geom_boxplot()

gapminder %>% 
  filter(year==2007) %>% 
  select(lifeExp,continent) %>% 
  ggplot(aes(x=continent,
             y=lifeExp,
             fill=continent))+
  geom_violin()
##x11() para llamar a otra ventana
 
####Resumir datos con estadísticas numéricas
#
##Calcular resumen general
##Conocer la regla empírica de la curva normal
##Visualizar regla empírica

library(gapminder)
library(tidyverse)

data("gapminder")

str(gapminder)
summary(gapminder)

gapminder %>% 
  filter(year==2007) %>% 
  summarise(vida_media = mean(lifeExp),
            vida_sd = sd(lifeExp),
            vida_sdinf = vida_media - 2*vida_sd,
            vida_sdsup = vida_media + 2*vida_sd,
            n = n())

gapminder %>% 
  filter(year==2007) %>% 
  ggplot(aes(x=lifeExp, 
             y='y'))+
  geom_point()


gapminder %>% 
  filter(year==2007) %>% 
  ggplot(aes(x=lifeExp, 
             y='y'))+
  geom_jitter() ##salto aleatorio

gapminder %>% 
  filter(year == 2007) %>%
  mutate(vida_media = mean(lifeExp),
         vida_sd = sd(lifeExp),
         vida_sdinf = vida_media - 2*vida_sd,
         vida_sdsup = vida_media + 2*vida_sd,
         n = n()) %>% 
  ggplot(aes(x=lifeExp, y='y'))+
  geom_jitter()+
  geom_vline(aes(xintercept= vida_media), color='red')+
  geom_vline(aes(xintercept= vida_sdinf), color='blue')+
  geom_vline(aes(xintercept= vida_sdsup), color='green')
  

 
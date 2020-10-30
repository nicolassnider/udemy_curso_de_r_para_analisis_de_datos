##Asociación o dependencia.
####Causal o no(correlacion no implica causalidad)
########que mi reloj marque las 6 no hace que las campanas de la iglesia suenen
#
##Correlacion lineal
####Mas sencilla de estudiar
####Indica una realacion predecible de un modelo lineal

library(tidyverse)
library(gapminder)

gapminder %>% 
  filter(year == 2007) %>% 
  select(year, lifeExp, pop, gdpPercap) %>% 
  pairs()

##Encuentra cierta relacion entre lifeexp y gdppercap
gapcor <- gapminder %>% 
  filter(year == 2007) %>% 
  mutate(logpop = log(pop),
         logdp = log(gdpPercap)) %>% 
  select(lifeExp,logpop,logdp)

gapcor %>%  pairs()

gapcor %>% cor()


library(corrplot)
gapcor %>% cor() %>% 
  corrplot(type='upper', order='hclust',
           tl.col = 'black', tl.srt = 45)

library(PerformanceAnalytics)

#encuentra correlación entre lifeexp y loggdp
gapcor %>%  chart.Correlation(histogram = TRUE,
                              pch=19)

gapcor %>% 
  ggplot(aes(x=lifeExp, y=logdp))+
  geom_point()+
  geom_smooth(method = 'lm')+
  geom_text(aes(label = round(cor(lifeExp,logdp),2)),
            x=70, y = 6)
#Tendencia en los años
gapminder %>% 
  group_by(year) %>% 
  mutate(logdp = log(gdpPercap),
         rsq = round(cor(lifeExp,logdp),2)) %>% 
  select(year,lifeExp,logdp,rsq) %>% 
  ggplot(aes(x=lifeExp,y=logdp))+
  geom_point()+
  geom_smooth(method='lm')+
  geom_text(aes(label=rsq),
            x=70, y = 6) + 
  facet_wrap(~year)

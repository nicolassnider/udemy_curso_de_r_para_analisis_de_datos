## select()  seleccionar columnas de datos
##pipe ctrl shift m  %>% 

library(gapminder)

library(tidyverse)

data("gapminder")

head(gapminder)

##NOmbres de columnas
colnames(gapminder)

gapminder %>% 
  select(country)

gapminder %>% 
  select(country,pop)

gapminder %>% 
  select(c('country','pop')) 

columnas_de_interes <- c('country','pop')

gapminder %>% 
  select(columnas_de_interes)

##Rangos
gapminder %>% 
  select(1)

gapminder %>% 
  select(1:2)

gapminder %>% 
  select(1:3, 5)

gapminder %>% 
  select(-continent)

gapminder %>% 
  select(-continent, -gdpPercap)

columnas_de_no_interes <- c('continent','gdpPercap')

gapminder %>% 
  select(-columnas_de_no_interes)

gapminder %>% 
  select(starts_with('c'))

data_iris<- iris 

data_iris %>% 
  select(starts_with('Sepal'))

data_iris %>% 
  select(ends_with('Length'))

data_iris %>% 
  select(contains('.'))

library(gapminder)

library(tidyverse)

gapminder %>% 
  mutate(anio_1952 = year - 1952) ##nueva variable anio_1952

gapminder %>% 
  mutate(mill = round(pop/1000000,0))

gapminder %>% 
  mutate(log = log10(pop))

gapminder %>% 
  filter(year == 2007) %>% 
  mutate(cumsum_pop = cumsum(as.numeric(pop)))

gapminder %>% 
  mutate(cont_es = case_when(
    continent== 'Asia'~'Asia',
    continent== 'Europe'~'Europa',
    continent== 'Africa'~'Africa',
    continent== 'Americas'~'América',
    continent== 'Oceania'~'Oceanía'
  )) %>% 
  print(n=1000)


quantile(gapminder$pop)
gapminder %>% 
  filter(year ==2002) %>% 
  mutate(popSize = case_when(
    pop <=30000000 ~ 'Pequeño',
    pop <=20000000 ~ 'Mediano',
    TRUE ~ 'Grande'
  )) %>% 
  print (n=2000)

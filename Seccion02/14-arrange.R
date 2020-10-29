library(gapminder)

library(tidyverse)

gapminder %>%
  filter(year == 2007) %>% 
  arrange(pop)

gapminder %>% 
  filter(year == 2007) %>% 
  arrange(desc(country))

gm_order1 <- gapminder %>% 
  filter(year == 2007) %>% 
  arrange(continent,country)


library(gapminder)
data("gapminder")

#histograma de variable continua
gapminder2007 <- gapminder %>% 
  filter(year==2007)

hist(gapminder$lifeExp)
hist(gapminder$pop)
hist(gapminder$gdpPercap)

hist(gapminder$pop , breaks = 50)

hist(log(gapminder$pop) , breaks = 50)
hist(log(gapminder$pop))

#densidades
gapminder2007 %>% 
  ggplot(aes(x=lifeExp)) +
  geom_density()

gapminder2007 %>% 
  ggplot(aes(x=log(pop))) +
  geom_density()

#simular distribucion
mu_hat <- mean(log(gapminder2007$pop))  #16.275
sigma_hat <- sd(log(gapminder2007$pop)) #1.525

simu_data <- data.frame(x = exp(rnorm(n=142,
                                      mean=mu,
                                      sd=sig)))


hist(simu_data$exp.x...rnorm.n...142..mean...mu_hat..sd...sigma_hat.., breaks=50)

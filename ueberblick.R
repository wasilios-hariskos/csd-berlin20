#Programmieren mit R

## Vektor

1:10

## Matrix

matrix(data = 1:9,
       nrow = 3)

## Datensatz (data frame)

name <- c("Paul", "Claudia", "Martin")
geschlecht <- c("m", "w", "m")
note <- c(1, 2, 1.3)

data <- data.frame(name, geschlecht, note)

data

## Factor

## Listen

## Bedingungen

## Schleifen

## Funktion

#Umgang mit Daten

# install.packages("tidyverse")
library(tidyverse)
# install.packages("gapminder")
library(gapminder)

gapminder %>% 
  glimpse()

gapminder %>% 
  head()

gapminder %>% 
  tail()

gapminder %>% 
  View()

help(gapminder)

#Visualisierung von Daten

ggplot(data = gapminder) +
  geom_point(mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           size = pop,
                           color = continent)) +
  facet_wrap(~year) +
  scale_x_log10() 

#Explorative Datenanalyse

#Regressionsanalyse
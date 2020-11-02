# Percentage of yes votes from the US by year: US_by_year
US_by_year <- by_year_country %>%
  filter(country == "United States")

# Print the US_by_year data
US_by_year

# Perform a linear regression of percent_yes by year: US_fit
#help(lm)
US_fit <- lm(formula = percent_yes ~ year, data = US_by_year)

# Perform summary() on the US_fit object
summary(US_fit)

intercept = US_fit$coef[1]
slope = US_fit$coef[2]
US_by_year %>% 
  mutate(prediction = intercept + slope * year,
         residual = percent_yes - prediction) %>%
  summary()

library(ggplot2)
ggplot(data = US_by_year,
       mapping = aes(x = year, y = percent_yes)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  expand_limits(x = 0, y = 0)


help(geom_smooth)


# Illustration anhand des Gapminder-Datensatzes
# BBWorld hochladen
# Weitere Literatur zur Verfügung stellen




x <- c(28000, 30000, 30000, 30000, 32000, 1000000)
mean(x)
median(x)


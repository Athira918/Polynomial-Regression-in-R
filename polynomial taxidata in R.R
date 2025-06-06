library(ggplot2)


dataset <- read.csv('C:/Users/k18at/Downloads/taxi_trip_pricing.csv')

dataset <- dataset[, c("Trip_Distance_km", "Trip_Duration_Minutes", "Time_of_Day")]


dataset <- na.omit(dataset)

dataset$TD2 <- dataset$Trip_Duration_Minutes^2
dataset$TD3 <- dataset$Trip_Duration_Minutes^3
dataset$TD4 <- dataset$Trip_Duration_Minutes^4

poly_reg <- lm(formula = Trip_Duration_Minutes ~ Trip_Distance_km + TD2 + TD3 + TD4,
               data = dataset)

x_grid <- seq(min(dataset$Trip_Duration_Minutes),
              max(dataset$Trip_Duration_Minutes), 0.1)


y_pred <- predict(poly_reg, newdata = data.frame(
  Trip_Duration_Minutes = x_grid,
  Trip_Distance_km = mean(dataset$Trip_Distance_km),  # Or adjust as needed
  TD2 = x_grid^2,
  TD3 = x_grid^3,
  TD4 = x_grid^4
))

ggplot() +
  geom_point(aes(x = dataset$Trip_Duration_Minutes, y = dataset$Trip_Distance_km), colour = 'red') +
  geom_line(aes(x = x_grid, y = y_pred), colour = 'blue') +
  ggtitle('Polynomial Regression taxi ') +
  xlab('Trip Duration (Minutes)') +
  ylab('Trip Distance (km)')

predict(lin_reg, data.frame(
  Trip_Distance_km = 5.5,
  Time_of_Day = "Morning" # if it's a factor, adjust accordingly
))

predict(poly_reg, data.frame(
  Trip_Duration_Minutes = 5.5,
  Trip_Distance_km = 5.5,
  TD2 = 5.5^2,
  TD3 = 5.5^3,
  TD4 = 5.5^4
))


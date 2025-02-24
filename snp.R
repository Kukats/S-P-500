
#setwd("/Users/indujakukatikonda/Desktop/Projects/S&P Stocks")

# Packages and Libraries
install.packages("dplyr")
install.packages("ggplot2")
install.packages("lubridate")
install.packages("forecast")

library(dplyr)
library(ggplot2)
library(lubridate)
library(forecast)

# Read and clean the dataset
snp_data <- read.csv("SPX.csv")
View(snp_data)

market_data <- snp_data
View(market_data)

market_data$Date <- ymd(market_data$Date)

max(market_data$Date)  # 4th November 2020
min(market_data$Date)  # 30th December 1927

# Initial Plot
plot(market_data$Close, xlab = "Year", ylab = "Closing Price", type = "l", lwd = 1.5, col = "red", main = "S&P 500 Closing Price (1927 - 2020)")

filtered_data <- market_data %>% filter(year(Date) > 1999)

ggplot(filtered_data, aes(Date, Close)) + 
  geom_line(col = "steelblue") + 
  ggtitle("S&P 500 Closing Index (2000-2020)")

# Time Series Conversion
stock_ts <- ts(filtered_data$Close, start = c(2000,1), end = c(2020,11), frequency = 12)

autoplot(stock_ts, col = "purple") + ggtitle('S&P 500 Time Series Plot (2000-2020)')

# Training and Validation Data
train_data <- window(stock_ts, end = c(2018,12))
valid_data <- window(stock_ts, start = c(2019,1))

# Decomposing Time Series
plot(decompose(stock_ts))

# Linear Regression Model
lm_model <- tslm(train_data ~ trend)

plot(stock_ts, xlab = "Year", ylab = "Close Price", main = "Linear Regression (2000-2020)", col = "purple")
lines(lm_model$fitted, lwd = 1.5, col = "orange")

lm_forecast <- forecast(lm_model, h = 23)
lines(lm_forecast$mean, lwd = 2, lty = 5, col = "red")

# Naïve Forecasting
naive_forecast <- naive(train_data, h = 23)

plot(stock_ts, xlab = "Year", ylab = "Close Price", main = "Naïve Forecast (2000-2020)", col = "purple")
lines(naive_forecast$mean, lwd = 2, lty = 2, col = "green")

# Exponential Smoothing
es_model <- ets(train_data)

plot(stock_ts, xlab = "Year", ylab = "Close Price", main = "Exponential Smoothing Forecast (2000-2020)", col = "purple")
lines(es_model$fitted, lwd = 1.5, col = "brown")

es_forecast <- forecast(es_model, h = 23)
lines(es_forecast$mean, lwd = 2, lty = 2, col = "blue")

es_advanced <- ets(train_data, model = "MAA")

plot(stock_ts, xlab = "Year", ylab = "Close Price", main = "Advanced Exponential Smoothing (MAA) (2000-2020)", col = "purple")
lines(es_advanced$fitted, lwd = 1.5, lty = 2, col = "skyblue")

es_advanced_forecast <- forecast(es_advanced, h = 23)
lines(es_advanced_forecast$mean, lwd = 1.5, lty = 2, col = "maroon")

# ARIMA Model
arima_model <- arima(train_data, order = c(1,2,4))

plot(stock_ts, xlab = "Year", ylab = "Close Price", main = "ARIMA (1,2,4) (2000-2020)", col = "purple")
arima_forecast <- forecast(arima_model, h = 23)
lines(arima_forecast$mean, lwd = 2, lty = 2, col = "darkgreen")

# Model Accuracy Comparison
accuracy(lm_forecast$mean, valid_data)
accuracy(naive_forecast$mean, valid_data)
accuracy(es_forecast$mean, valid_data)
accuracy(es_advanced_forecast$mean, valid_data)
accuracy(arima_forecast$mean, valid_data)

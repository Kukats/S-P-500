S&P 500 Stock Analysis and Forecasting

📌 Project Overview

This project analyzes S&P 500 stock trends to identify investment opportunities and economic signals. We apply time series forecasting models to predict stock prices and evaluate model performance.

📊 Data Sources

S&P 500 historical data sourced from Yahoo Finance / Kaggle
Data includes Open, High, Low, Close prices, trading volume, and market trends.
📈 Methodology

![image](https://github.com/user-attachments/assets/98477547-95ec-480c-b955-82685c4f3df2)

We implemented and compared various forecasting models:

Linear Regression

![image](https://github.com/user-attachments/assets/1a388198-18c2-4143-817f-b9694a1877fe)

Naïve Algorithm

![image](https://github.com/user-attachments/assets/ed4b2711-44c2-4e88-889e-e042a121cc62)

Exponential Smoothing (ETS - MAA: Multiplicative Error, Additive Trend, Additive Seasonality)

![image](https://github.com/user-attachments/assets/17b9fd10-e943-4679-ba0e-9ab112ac83bb)

![image](https://github.com/user-attachments/assets/3f21637c-58d3-4171-9269-d078bcfb2f8e)

ARIMA (AutoRegressive Integrated Moving Average)

![image](https://github.com/user-attachments/assets/5cce8322-fbe6-462c-bdfe-b5039edfaace)

![image](https://github.com/user-attachments/assets/438b8b0f-a0df-4c52-88ef-5c6afb750ce1)

After evaluation, Exponential Smoothing (ETS - MAA) proved most effective for forecasting S&P 500 stock prices in our dataset.

<img width="723" alt="image" src="https://github.com/user-attachments/assets/76924995-6d91-4738-afb6-8c011f6c1b33" />

🔍 Key Findings

The S&P 500 exhibits seasonal trends and economic cyclicality.
ETS (MAA) provided the most reliable short-term forecasts.
Market dynamics change rapidly, so regular model updates are essential.
🛠️ Technologies Used

Python: Pandas, NumPy, Scikit-learn, Statsmodels
Visualization: Matplotlib, Seaborn
Forecasting Models: ARIMA, Exponential Smoothing, Regression
🚀 How to Run the Project

Clone the repository:
git clone <repo-url>
cd sp500-forecasting
Install dependencies:
pip install -r requirements.txt
Run the analysis:
python main.py
📌 Future Improvements

Incorporate machine learning models (e.g., LSTMs, Random Forest).
Extend analysis with macroeconomic indicators (inflation, GDP, interest rates).
Deploy a web dashboard for real-time stock forecasts.

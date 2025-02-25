S&P 500 Stock Analysis and Forecasting

📌 Project Overview

This project analyzes S&P 500 stock trends to identify investment opportunities and economic signals. We apply time series forecasting models to predict stock prices and evaluate model performance.

📊 Data Sources

S&P 500 historical data sourced from Yahoo Finance / Kaggle
Data includes Open, High, Low, Close prices, trading volume, and market trends.
📈 Methodology

We implemented and compared various forecasting models:

Linear Regression
Naïve Algorithm
Exponential Smoothing (ETS - MAA: Multiplicative Error, Additive Trend, Additive Seasonality)
ARIMA (AutoRegressive Integrated Moving Average)
After evaluation, Exponential Smoothing (ETS - MAA) proved most effective for forecasting S&P 500 stock prices in our dataset.

🔍 Key Findings

The S&P 500 exhibits seasonal trends and economic cyclicality.
ETS (MAA) provided the most reliable short-term forecasts.
Market dynamics change rapidly, so regular model updates are essential.
🛠️ Technologies Used

Python: Pandas, NumPy, Scikit-learn, Statsmodels
Visualization: Matplotlib, Seaborn, Power BI

<img width="988" alt="Screenshot 2025-02-25 at 12 58 52 PM" src="https://github.com/user-attachments/assets/8f279223-a0f8-42cd-9e8a-729d841dca7a" />

<img width="973" alt="Screenshot 2025-02-25 at 1 00 15 PM" src="https://github.com/user-attachments/assets/2966fd1e-79a5-4dcf-abc5-ed06927a1770" />

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

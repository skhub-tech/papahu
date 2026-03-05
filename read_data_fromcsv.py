

import pandas as pd

sahitya = pd.read_csv("C:/Users/sahil/Downloads/dataset_dynamicprice.csv")

sahitya["Profit"] = sahitya["Selling Price"] - sahitya["Cost Price"]

print(sahitya.head())
print("Summary statistics")
print(sahitya.describe())

# Total Revenue (sum of selling prices)
total_revenue = sahitya["Selling Price"].sum()

# Total Profit
total_profit = sahitya["Profit"].sum()

# Average Price
avg_price = sahitya["Selling Price"].mean()

print("Total Revenue:", total_revenue)
print("Total Profit:", total_profit)
print("Average Price:", avg_price)

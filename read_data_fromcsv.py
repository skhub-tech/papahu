import pandas as pd
sahitya = pd.read_csv("C:\/Users\/sahil\/Downloads\/dataset_dynamicprice.csv")
sahitya["Profit"] = sahitya["Selling Price"] - sahitya["Cost Price"]
print(sahitya.head())
print("\n")
print(sahitya.describe())
print("\n")
total_profit = sahitya["Profit"].sum()
total_revanue = sahitya["Selling Price"].sum()
avg = sahitya["Selling Price"].mean()
most_sold = sahitya["Item Name"].value_counts().idxmax()

print("total profit is ",total_profit)
print("total revenue is ",total_revanue)
print("Average is ",avg)
print("most items are sold:",most_sold)

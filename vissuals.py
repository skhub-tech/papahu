import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns 

# load dataset
df = pd.read_csv("C:/Users/sahil/Downloads/dataset_dynamicprice.csv")

# Profit column
df["Profit"] = df["Selling Price"] - df["Cost Price"]

# Bar chart (Selling Price)
plt.figure(figsize = (6,4))
sns.barplot(x="Item Name", y="Selling Price", data = df, estimator = sum)
plt.title("Profit Visualization")
plt.xlabel("Item Name")
plt.ylabel("Selling Price")
plt.show()

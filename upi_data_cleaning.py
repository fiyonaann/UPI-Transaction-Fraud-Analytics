import pandas as pd

df = pd.read_csv(
    "C:/Users/fiyon/Desktop/DA Projects/UPI Transaction & Fraud Analytics/upi_transactions_2024.csv")

print("Duplicate rows:", df.duplicated().sum())
print(df.dtypes)
df["transaction_date"] = pd.to_datetime(df["transaction_date"])
print(df.columns.tolist())
df["timestamp"] = pd.to_datetime(df["timestamp"])
print(df["timestamp"].dtype)
print(df["fraud_flag"].value_counts())
print(df["transaction_status"].value_counts())
print(df["transaction type"].value_counts())
print(df["amount (INR)"].describe())
print("Unique transaction IDs:", df["transaction id"].nunique())
print("Total transactions:", len(df))
print(pd.crosstab(df["transaction type"], df["fraud_flag"]))
fraud_rate = df.groupby("transaction type")["fraud_flag"].mean() * 100

print(fraud_rate.sort_values(ascending=False))
print(df.groupby("fraud_flag")["amount (INR)"].mean())
fraud_transactions = df[df["fraud_flag"] == 1]

print(fraud_transactions[["transaction id", "transaction type", "amount (INR)"]]
      .sort_values("amount (INR)", ascending=False)
      .head(10))
print(df.groupby("sender_state")[
      "fraud_flag"].sum().sort_values(ascending=False).head(10))
df.to_csv(
    "C:/Users/fiyon/Desktop/DA Projects/UPI Transaction & Fraud Analytics/upi_transactions_cleaned.csv",
    index=False
)

print("Cleaned dataset saved successfully!")

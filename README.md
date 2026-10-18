# UPI Transaction & Fraud Analytics

## 📌 Project Overview

UPI Transaction & Fraud Analytics is a data analytics project that explores UPI transaction patterns and identifies trends in transactions flagged as potentially fraudulent.

The project uses Python for data cleaning and preprocessing, MySQL for querying and analyzing transaction data, and Power BI to build an interactive dashboard for visualizing key performance indicators and fraud patterns.

The analysis is based on a dataset containing 250,000 UPI transactions.

## 🎯 Project Objectives

- Clean and preprocess transaction data using Python.
- Analyze transaction data using SQL queries in MySQL.
- Calculate key transaction and fraud metrics.
- Explore fraud patterns across transaction types, devices, networks, banks, and merchant categories.
- Analyze fraud trends by date, weekday, and state.
- Develop an interactive Power BI dashboard to communicate insights effectively.

## 🛠️ Tools & Technologies

- **Python:** Data cleaning and preprocessing
- **Pandas:** Data manipulation and cleaning
- **MySQL:** SQL queries and data analysis
- **Power BI:** Interactive dashboard and data visualization
- **DAX:** Measures and KPI calculations
- **Power Query:** Data preparation and transformation

## 📊 Dataset Overview

The dataset contains UPI transaction records with information about transaction amounts, transaction types, banks, devices, networks, locations, and fraud labels.

### Dataset Statistics

| Metric | Value |
|---|---:|
| Total Transactions | 250,000 |
| Total Transaction Amount | Approximately ₹327.94 million |
| Flagged Fraud Cases | 480 |
| Fraud Rate | Approximately 0.19% |

**Note:** These statistics are based on the dataset used in this project. Fraud cases represent transactions marked with a fraud label in the dataset.

## 🔄 Project Workflow

### 1. Data Cleaning and Preprocessing with Python

Used Python and Pandas to clean and prepare the transaction dataset for analysis.

The cleaned dataset was then used in subsequent analysis and dashboard development.

### 2. Data Analysis with MySQL

Imported the cleaned transaction data into MySQL and used SQL queries to analyze transaction activity, transaction amounts, and fraud patterns.

The analysis focused on comparing fraud cases across different transaction characteristics.

### 3. Dashboard Development with Power BI

Connected the transaction data to Power BI and developed an interactive dashboard using KPI cards, charts, a map, filters, and buttons.

### 4. Insights and Visualization

Analyzed fraud patterns across banks, merchant categories, transaction types, devices, networks, weekdays, dates, and states.

Interactive controls allow users to explore the data from different perspectives.

## 📈 Dashboard Features

### Key Performance Indicators

- **Total Transactions:** Number of transactions analyzed
- **Total Transaction Amount:** Combined value of transactions
- **Fraud Cases:** Number of transactions marked as fraudulent
- **Fraud Rate:** Percentage of transactions marked as fraudulent
- **Top State:** State with the highest transaction count or selected ranking metric
- **Top Sender Bank:** Highest-ranked sender bank according to the dashboard's metric

### Visualizations

The dashboard includes the following visualizations:

1. Fraud by Network Type
2. Fraud by Merchant Category
3. Fraud by Bank
4. Fraud by Weekday
5. Daily Fraud Trend
6. Fraud by State

### Interactive Features

- Transaction Type filter
- Device Type filter
- Network Type filter
- Sender and Receiver view toggle
- Interactive charts and map
- Clear All button to reset the dashboard filters

These features help users explore transaction data and compare fraud patterns across different categories.

## 🧮 Key DAX Measures

The following DAX measures are used to calculate the dashboard's main KPIs.

### 1. Total Transactions

```dax
Total Transactions =
DISTINCTCOUNT('upi_transactions_cleaned'[transaction id])
```

### 2. Total Amount

```dax
Total Amount =
SUM('upi_transactions_cleaned'[amount (INR)])
```

### 3. Fraud Cases

```dax
Fraud Cases =
SUM('upi_transactions_cleaned'[fraud_flag])
```

### 4. Fraud Rate

```dax
Fraud Rate =
DIVIDE([Fraud Cases], [Total Transactions])
```

The fraud rate is formatted as a percentage in Power BI.

## 🔍 Key Findings

- The dataset contains 250,000 transactions.
- A total of 480 transactions are marked as fraudulent.
- The overall fraud rate is approximately 0.19%.
- The dashboard supports the exploration of fraud patterns across different transaction characteristics.
- Interactive filters allow users to compare results across banks, merchant categories, devices, networks, dates, and states.

These findings describe the dataset and do not establish the causes of fraudulent transactions.

## 📁 Project Structure

The repository can be organized as follows:

```text
UPI-Transaction-Fraud-Analytics/
│
├── README.md
├── python/
│   └── data_cleaning.py
├── sql/
│   └── analysis_queries.sql
├── dashboard/
│   └── UPI_Transactions_Fraud_Analytics.pbix
└── screenshots/
    └── upi_fraud_dashboard.png
```

*Note: This is a suggested folder structure. The folders and filenames should match the files actually uploaded to the repository.*

## 🚀 How to Use

1. Clone or download the repository.
2. Prepare the transaction dataset.
3. Run the Python data-cleaning script.
4. Import the cleaned dataset into MySQL.
5. Execute the SQL analysis queries.
6. Open the Power BI dashboard in Power BI Desktop.
7. Refresh the data connection if required.
8. Use the dashboard filters and buttons to explore the results.

Additional setup may be required depending on the dataset location and database connection settings.

## ⚠️ Limitations

- The analysis depends on the quality and completeness of the supplied dataset.
- Fraud cases are based on existing fraud labels.
- The project focuses on descriptive analytics and visualization.
- It does not include a machine learning model to predict future fraudulent transactions.
- The observed patterns do not necessarily establish causal relationships.

## 💡 Future Improvements

- Develop a machine learning model to identify potentially fraudulent transactions.
- Add more advanced fraud pattern analysis.
- Explore additional transaction features and behavioral patterns.
- Improve the dashboard with further drill-down analysis and visualizations.

## 👩‍💻 Project Information

**Project Name:** UPI Transaction & Fraud Analytics

**Category:** Data Analytics

**Technologies:** Python, Pandas, MySQL, Power BI, DAX, Power Query

**Dataset Size:** 250,000 transactions

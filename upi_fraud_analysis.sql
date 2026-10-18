-- check fraud count
SELECT fraud_flag,COUNT(*) AS transaction_count
FROM upi_transactions_cleaned
GROUP BY fraud_flag;

-- calculating fraud count
SELECT ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate_percentage
FROM upi_transactions_cleaned;

-- fraud by transaction type
SELECT `transaction type`,
    SUM(fraud_flag) AS fraud_transactions,
    COUNT(*) AS total_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions_cleaned
GROUP BY `transaction type`
ORDER BY fraud_transactions DESC;

-- fraud by state
SELECT
    sender_state,
    SUM(fraud_flag) AS fraud_transactions
FROM upi_transactions_cleaned
GROUP BY sender_state
ORDER BY fraud_transactions DESC
LIMIT 10;

-- fraud by hour of day
SELECT
    hour_of_day,
    SUM(fraud_flag) AS fraud_transactions,
    COUNT(*) AS total_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions_cleaned
GROUP BY hour_of_day
ORDER BY fraud_transactions DESC;

-- fraud by day of week
SELECT
    day_of_week,
    SUM(fraud_flag) AS fraud_transactions,
    COUNT(*) AS total_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions_cleaned
GROUP BY day_of_week
ORDER BY fraud_transactions DESC;

-- high value transactions
SELECT
    `transaction id`,
    `transaction type`,
    `amount (INR)`,
    fraud_flag
FROM upi_transactions_cleaned
ORDER BY `amount (INR)` DESC
LIMIT 10;

-- high value transactions that are fraud
SELECT
    `transaction id`,
    `transaction type`,
    `amount (INR)`,
    fraud_flag
FROM upi_transactions_cleaned
WHERE fraud_flag = 1
ORDER BY `amount (INR)` DESC
LIMIT 10;

-- fraud by merchant category
SELECT
    merchant_category,
    SUM(fraud_flag) AS fraud_transactions,
    COUNT(*) AS total_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions_cleaned
GROUP BY merchant_category
ORDER BY fraud_transactions DESC
LIMIT 10;

-- fraud by sender bank
SELECT
    sender_bank,
    SUM(fraud_flag) AS fraud_transactions,
    COUNT(*) AS total_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions_cleaned
GROUP BY sender_bank
ORDER BY fraud_transactions DESC
LIMIT 10;

-- fraud by device type
SELECT
    device_type,
    SUM(fraud_flag) AS fraud_transactions,
    COUNT(*) AS total_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions_cleaned
GROUP BY device_type
ORDER BY fraud_transactions DESC;

-- fraud by network type
SELECT
    network_type,
    SUM(fraud_flag) AS fraud_transactions,
    COUNT(*) AS total_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions_cleaned
GROUP BY network_type
ORDER BY fraud_transactions DESC;

-- fraud by receiver bank
SELECT
    receiver_bank,
    SUM(fraud_flag) AS fraud_transactions,
    COUNT(*) AS total_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions_cleaned
GROUP BY receiver_bank
ORDER BY fraud_transactions DESC
LIMIT 10;


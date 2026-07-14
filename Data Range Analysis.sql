/*
---------------------------------------------------------
DATE RANGE ANALYSIS
---------------------------------------------------------
Purpose:
1. Check the earliest and latest order dates.
2. Calculate how many months of sales data are available.
3. Identify the oldest and youngest customers from their
   birth dates.

Built-in Functions:
- MIN()
- MAX()
- DATEDIFF()
---------------------------------------------------------
*/

-- Sales data time period
SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Customer age boundaries
SELECT
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;

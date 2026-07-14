/*
---------------------------------------------------------
KEY METRICS ANALYSIS
---------------------------------------------------------
Purpose:
1. Calculate important business metrics from sales data.
2. Summarize overall sales, orders, products, and customers.
3. Generate a consolidated report of key performance indicators.

Built-in Functions:
- SUM()
- COUNT()
- AVG()
- DISTINCT
---------------------------------------------------------
*/

-- Calculate the total revenue generated
SELECT
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales;

-- Calculate the total quantity of items sold
SELECT
    SUM(quantity) AS total_quantity
FROM gold.fact_sales;

-- Calculate the average selling price
SELECT
    AVG(price) AS avg_price
FROM gold.fact_sales;

-- Count the total number of orders
SELECT
    COUNT(order_number) AS total_orders
FROM gold.fact_sales;

-- Count the number of unique orders
SELECT
    COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales;

-- Count the total number of products
SELECT
    COUNT(product_name) AS total_products
FROM gold.dim_products;

-- Count the total number of customers
SELECT
    COUNT(customer_key) AS total_customers
FROM gold.dim_customers;

-- Count customers who have placed at least one order
SELECT
    COUNT(DISTINCT customer_key) AS total_customers
FROM gold.fact_sales;

-- Generate a summary report of key business metrics
SELECT
    'Total Sales' AS measure_name,
    SUM(sales_amount) AS measure_value
FROM gold.fact_sales

UNION ALL

SELECT
    'Total Quantity',
    SUM(quantity)
FROM gold.fact_sales

UNION ALL

SELECT
    'Average Price',
    AVG(price)
FROM gold.fact_sales

UNION ALL

SELECT
    'Total Orders',
    COUNT(DISTINCT order_number)
FROM gold.fact_sales

UNION ALL

SELECT
    'Total Products',
    COUNT(DISTINCT product_name)
FROM gold.dim_products

UNION ALL

SELECT
    'Total Customers',
    COUNT(customer_key)
FROM gold.dim_customers;

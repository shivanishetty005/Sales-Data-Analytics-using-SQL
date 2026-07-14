/*
---------------------------------------------------------
PRODUCT COST SEGMENTATION
---------------------------------------------------------
Purpose:
1. Categorize products into different cost ranges.
2. Count the number of products in each cost category.
3. Analyze the distribution of products based on cost.

SQL Concepts Used:
- CASE
- Common Table Expression (CTE)
- GROUP BY
- ORDER BY
---------------------------------------------------------
*/

-- Categorize products by cost and count products in each category
WITH product_segments AS (
    SELECT
        product_key,
        product_name,
        cost,
        CASE
            WHEN cost < 100 THEN 'Below 100'
            WHEN cost BETWEEN 100 AND 500 THEN '100-500'
            WHEN cost BETWEEN 500 AND 1000 THEN '500-1000'
            ELSE 'Above 1000'
        END AS cost_range
    FROM gold.dim_products
)

SELECT
    cost_range,
    COUNT(product_key) AS total_products
FROM product_segments
GROUP BY cost_range
ORDER BY total_products DESC;

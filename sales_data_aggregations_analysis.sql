SELECT *
FROM `sales_data`.`sql - retail sales analysis_utf` AS sales_data

-- Use EXTRACT(MONTH FROM order_date) for month.
SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    SUM("quantiy" * "price_per_unit") AS total_revenue,
    COUNT(DISTINCT "ï»¿transactions_id") AS total_orders
FROM `sales_data`.`sql - retail sales analysis_utf`
GROUP BY year, month
ORDER BY year, month;

-- Use SUM() for revenue.
SELECT 
    EXTRACT(MONTH FROM sale_date) AS month,
    SUM("quantiy" * "price_per_unit") AS total_revenue
FROM `sales_data`.`sql - retail sales analysis_utf`
WHERE EXTRACT(YEAR FROM sale_date) = 2022
GROUP BY month
ORDER BY month;

-- Top 5 months by revenue
SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    SUM("quantiy" * "price_per_unit") AS total_revenue
FROM `sales_data`.`sql - retail sales analysis_utf`
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 5;


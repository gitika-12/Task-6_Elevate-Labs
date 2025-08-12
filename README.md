# Sales Trend Analysis Using Aggregations

## Project Objective
The goal of this task is to analyze the monthly revenue and order volume trends from an online sales dataset. This helps in understanding the sales performance over time and identifying patterns in revenue and order counts.

## Dataset Description
- **Database/Table:** `sales_date`
- **Table:** `orders`
- **Key Columns:**
  - `order_date` — date when the order was placed
  - `amount` — revenue amount for each order
  - `product_id` — identifier for the product ordered
  - `order_id` — unique identifier for each order

## Tools Used
- MySQL

## Key Analysis Steps
- Extract the **month** and **year** from `order_date` to group sales by month.
- Calculate the **total monthly revenue** using the `SUM()` function on `amount`.
- Calculate the **monthly order volume** by counting distinct `order_id` using `COUNT(DISTINCT order_id)`.
- Group results by year and month to track sales trends over time.
- Sort the results chronologically using `ORDER BY`.
- Optionally limit the results to specific time periods using `WHERE` clause filters.

## Example SQL Query

```sql
-- Use EXTRACT(MONTH FROM order_date) for month.
SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    SUM("quantiy" * "price_per_unit") AS total_revenue,
    COUNT(DISTINCT "ï»¿transactions_id") AS total_orders
FROM `sales_data`.`sql - retail sales analysis_utf`
GROUP BY year, month
ORDER BY year, month;


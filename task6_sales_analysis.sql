-- =====================================================
-- Task 6: Sales Trend Analysis Using Aggregations
-- Name: Vivek Kumar
-- Objective: Analyze monthly revenue and order volume
-- =====================================================

-- Step 1: Use the Database
USE task6_db;

-- Step 2: Check Total Records
SELECT COUNT(*) AS total_records
FROM orders;

-- Step 3: Preview Data
SELECT *
FROM orders
LIMIT 10;

-- =====================================================
-- Step 4: Monthly Revenue and Order Volume Analysis
-- =====================================================

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY year, month;

-- =====================================================
-- Step 5: Top 3 Months by Revenue
-- =====================================================

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;

-- =====================================================
-- Step 6 (Bonus): Monthly Report with Month Name
-- =====================================================

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY year, month_number, month_name
ORDER BY year, month_number;

-- =====================================================
-- End of Task 6
-- =====================================================
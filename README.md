# 📊 Task 6: Sales Trend Analysis Using SQL Aggregations
**

---

## 📌 Objective

The objective of this task is to analyze monthly sales trends using SQL aggregation functions.  
This includes calculating:

- Monthly revenue  
- Monthly order volume  
- Top performing months by revenue  

The goal is to understand sales patterns using structured query techniques.

---

## 🛠 Tools & Technologies Used

- MySQL Server  
- MySQL Command Line Client  
- SQL (Structured Query Language)  
- GitHub (for version control & submission)  

---

## 📂 Dataset Information

- Dataset Name: `orders`  
- Total Records: **300 rows**  
- Important Columns:
  - `order_id`
  - `order_date`
  - `amount`

---

## 🧠 SQL Concepts Used

This task demonstrates the use of:

- `SELECT`
- `COUNT()`
- `SUM()`
- `DISTINCT`
- `YEAR()`
- `MONTH()`
- `MONTHNAME()`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`

---

## 🔎 Steps Performed

### 1️⃣ Database Selection

```sql
USE task6_db;
```

---

### 2️⃣ Verified Data Count

```sql
SELECT COUNT(*) FROM orders;
```

✔ Confirmed total 300 records.

---

### 3️⃣ Previewed Dataset

```sql
SELECT * FROM orders LIMIT 10;
```

✔ Verified structure and column values.

---

### 4️⃣ Monthly Revenue & Order Volume Analysis

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY year, month;
```

✔ Calculated total monthly revenue  
✔ Counted distinct orders  
✔ Sorted results chronologically  

---

### 5️⃣ Top 3 Months by Revenue

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
```

✔ Identified highest revenue months  
✔ Applied sorting and limiting  

---

### 6️⃣ Bonus: Month Name Reporting

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY year, month_number, month_name
ORDER BY year, month_number;
```

✔ Generated professional monthly report with month names  

---

## 📈 Key Insights

- Identified revenue trends month-wise.  
- Determined top 3 highest revenue months.  
- Observed possible seasonal sales pattern.  
- Understood business performance using SQL aggregations.  

---

## 📸 Screenshots Included

- Total Record Count  
- Sample Data Preview  
- Monthly Revenue Report  
- Top 3 Revenue Months  

---

## 📁 Repository Structure

```
Task6_Sales_Trend_Analysis
│
├── task6_sales_analysis.sql
├── orders_dataset_task6.csv
├── Screenshots/
│   ├── record_count.png
│   ├── sample_data.png
│   ├── monthly_analysis.png
│   ├── top3_months.png
│
└── README.md
```

---

## 🎯 Learning Outcome

Through this task, I learned:

- How to analyze time-based sales data  
- How to use SQL aggregation functions effectively  
- How to group data by year and month  
- How to extract meaningful business insights  
- How to structure a professional GitHub SQL project  

---

## ✅ Task Status

✔ SQL Queries Executed Successfully  
✔ Results Verified  
✔ Screenshots Captured  
✔ SQL Script Created  
✔ GitHub Repository Structured  

---

# 🚀 Final Result

This project demonstrates practical implementation of SQL aggregation techniques to analyze real-world sales data and generate meaningful business insights.

# 🚀 Author
Vivek Kumar

Beginner Data Analyst / Python Learner
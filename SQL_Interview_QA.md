# 📊 SQL Interview Questions & Answers  
### Topic: Aggregations, Grouping & Sales Analysis   

---

## 1️⃣ How do you group data by month and year?

### ✅ Answer:

- Use `YEAR()` and `MONTH()` functions to extract year and month.
- Use `GROUP BY` to combine rows with the same year and month.
- Use aggregate functions like `SUM()` or `COUNT()` for calculations.

### 💻 Example Code:

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM orders
GROUP BY year, month
ORDER BY year, month;
```

---

## 2️⃣ What is the difference between COUNT(*) and COUNT(DISTINCT column)?

### ✅ COUNT(*)

- Counts all rows.
- Includes duplicate values.
- Does not ignore rows.

```sql
SELECT COUNT(*) FROM orders;
```

### ✅ COUNT(DISTINCT column)

- Counts only unique values.
- Ignores duplicate values.
- Ignores NULL values.

```sql
SELECT COUNT(DISTINCT order_id) FROM orders;
```

---

## 3️⃣ How do you calculate monthly revenue?

### ✅ Answer:

- Use `SUM(amount)` to calculate total revenue.
- Use `GROUP BY year, month` to group monthly.

### 💻 Example Code:

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY year, month;
```

---

## 4️⃣ What are Aggregate Functions in SQL?

### ✅ Answer:

Aggregate functions perform calculations on multiple rows and return a single value.

### 📌 Common Aggregate Functions:

- `SUM()` → Total value
- `COUNT()` → Number of rows
- `AVG()` → Average value
- `MIN()` → Smallest value
- `MAX()` → Largest value

### 💻 Example:

```sql
SELECT 
    SUM(amount) AS total,
    AVG(amount) AS average,
    MAX(amount) AS highest,
    MIN(amount) AS lowest
FROM orders;
```

---

## 5️⃣ How do you handle NULL values in aggregates?

### ✅ Answer:

- `COUNT(column)` ignores NULL automatically.
- `SUM()` and `AVG()` also ignore NULL.
- Use `COALESCE()` to replace NULL with 0 if needed.

### 💻 Example:

```sql
SELECT 
    SUM(COALESCE(amount, 0)) AS total_revenue
FROM orders;
```

---

## 6️⃣ What is the role of GROUP BY and ORDER BY?

### ✅ GROUP BY

- Groups rows having the same values.
- Used with aggregate functions.
- Performs calculation per group.

### ✅ ORDER BY

- Sorts the result.
- ASC → Ascending (default)
- DESC → Descending

### 💻 Example:

```sql
SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS revenue
FROM orders
GROUP BY month
ORDER BY revenue DESC;
```

---

## 7️⃣ How do you get the Top 3 months by sales?

### ✅ Answer:

- Calculate monthly revenue using `SUM()`.
- Use `ORDER BY total_revenue DESC`.
- Use `LIMIT 3` to get top 3 records.

### 💻 Example Code:

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM orders
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
```

---

# ⭐ Important SQL Execution Order (Interview Favorite)

1. FROM  
2. WHERE  
3. GROUP BY  
4. HAVING  
5. SELECT  
6. ORDER BY  
7. LIMIT  

---

# 🎯 Key Takeaways

- Learned how to group data by time.
- Understood aggregate functions.
- Practiced sorting and limiting results.
- Learned how to handle NULL values.
- Applied SQL in real-world sales analysis.

---
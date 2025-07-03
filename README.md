# SQL_Learning-_Journey
A complete record of my SQL learning journey — includes notes, practice queries, and mini-projects.

## 🗓️ Day 1 Learning – SQL Basics

On Day 1, I focused on learning and practicing the foundational concepts of SQL:

### 🔹 Topics Covered
- **DDL Commands**: `CREATE`, `DROP`, `ALTER`
- **DML Commands**: `INSERT`, `UPDATE`, `DELETE`
- **Constraints**: `PRIMARY KEY`, `UNIQUE`, `CHECK`, `NOT NULL`
- **Filtering with WHERE clause**
- **LIMIT clause** for restricting results

### 🧠 What I Practiced
- Created and populated tables: `students`, `employees`, `books`, and `customers`
- Used `WHERE` clause with various conditions
- Applied constraints in table creation
- Limited output using `LIMIT` for specific queries

### 📂 Files Updated
- ** day_1


## 🗓️ Day 2 Learning – Aggregates, GROUP BY, HAVING & Query Order

Today, I deepened my understanding of SQL by working with grouped data and learning how to filter and format summary results.

### 🔹 Topics Covered
- **Aggregate Functions**:
  - `COUNT()`, `SUM()`, `AVG()`, `MAX()`, `MIN()`
- **`GROUP BY` Clause**:
  - Group data based on one or more columns
- **`HAVING` vs `WHERE`**:
  - `WHERE` filters **rows before grouping**
  - `HAVING` filters **groups after aggregation**
- **Aliasing & Formatting**:
  - Renaming result columns using `AS`
  - Rounding numerical output using `ROUND(value, decimal_places)`
- **Query Structure / Order of Execution**:
  1. `SELECT`
  2. `FROM` 
  3. `WHERE`
  4. `GROUP BY`
  5. `HAVING`
  6. `ORDER BY`
  7. `LIMIT`

### 🧠 What I Practiced
- Calculated total and average salaries by department
- Found grades with the highest number of students
- Filtered grouped results using `HAVING`
- Used `ROUND()` to display clean average values
- Ordered and limited grouped results for top analysis
- Understood and applied the correct **SQL query execution order**

### 📂 Files Updated
- ** day_2



## 🗓️ Day 3 Learning – Conditional Logic, CASE Statements & Subqueries

Today, I focused on enhancing my SQL skills by learning how to apply logic and conditions inside queries using `CASE`, as well as using subqueries to compare rows with calculated aggregates.

---

### 🔹 Topics Covered

- ✅ `CASE` Statement (row-wise conditions)
- ✅ Conditional column labeling (High/Medium/Low salary)
- ✅ Region classification using `IN` inside `CASE`
- ✅ Subqueries in `WHERE` clause (average salary comparison)
- ✅ Conditional Aggregation using `COUNT(CASE WHEN ...)`
- ✅ Gender-wise count grouped by city
- ✅ Combined filtering using `WHERE`, `CASE`, and `GROUP BY`

---

### 🧠 Key Concepts Practiced

1. **Conditional Labels**
   ```sql  
   CASE // query_1
     WHEN salary >= 70000 THEN 'High'
     WHEN salary >= 40000 THEN 'Medium'
     ELSE 'Low'
   END AS salary_status

  CASE  // query_6
    WHEN city IN ('Delhi', 'Lucknow', 'Chandigarh') THEN 'North India'
    ELSE 'Other Region'
  END AS region

  WHERE salary > (SELECT AVG(salary) FROM employees)  // query_8

  COUNT(CASE WHEN gender = 'M' THEN 1 END) AS male_count,
  COUNT(CASE WHEN gender = 'F' THEN 1 END) AS female_count  // query_9


🧪 Practice Done On

  🗃️ Table: employees (custom dataset)
  📌 Focused on: logic-based grouping, filtering, and labeling


📂 Files Updated

  🔹 day3_case_and_subqueries.sql – Contains all Day 3 queries
  🔹 README.md – Documented learning for Day 3





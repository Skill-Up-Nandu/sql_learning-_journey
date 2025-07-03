-- 4. For each department, count:
-- Employees older than 40
-- Employees aged 30–40
-- Employees younger than 30

SELECT department , 
count(CASE WHEN age >=40 THEN 1 END) AS emp_fourties ,
count(CASE WHEN age BETWEEN 30 AND 39 THEN 1 END) AS emp_thirties ,
count(CASE WHEN age < 30 THEN 1 END) AS emp_twenties
FROM employees
GROUP BY department ;



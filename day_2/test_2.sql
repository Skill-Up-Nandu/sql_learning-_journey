-- Practice Questions – Aggregation & GROUP BY SESSION 2

USE learning ; 
SELECT * FROM employees ;

-- 1. Display department-wise employee count, minimum salary, maximum salary, and average salary.

SELECT 
	department , 
	count(*) AS Total_emp ,
	min(salary) AS Minimum_salary , 
	max(salary) AS Maximum_salary , 
	ROUND(avg(salary) , 2) AS avg_salary 
FROM employees
GROUP BY department ;

-- 2. Find departments where the average salary is greater than ₹60,000 and total employees are more than 2.

SELECT 
	department , 
    ROUND(avg(salary) , 0 ) AS avg_salary,
    count(*) AS total_emp
FROM employees
GROUP BY department 
HAVING count(*) > 2 AND avg(salary) > 60000 ; 

-- 3. Get the department with the highest number of employees.

SELECT department , count(*) AS total_emp
FROM employees
GROUP BY department
ORDER BY total_emp DESC
LIMIT 1 ;
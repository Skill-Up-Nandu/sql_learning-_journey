-- Practice Questions – Aggregation & GROUP BY

USE learning ; 

SELECT * FROM employees ; 

-- 1. Count the number of employees in each department.

SELECT department , count(*) AS total_emp 
FROM employees
GROUP BY department ;

-- 2. Find the average salary of employees in each department.

SELECT department , round(avg(salary), 2) AS avg_salary 
FROM employees
GROUP BY department ; 

-- 3. Get the maximum salary in the entire company. 

SELECT max(salary) AS Highest_salary 
FROM employees ;

-- 4. Get the total salary paid to employees in the 'IT' department.

SELECT department , sum(salary) AS total_sal
FROM employees WHERE department = 'it' ; 

-- 5. List departments where the average salary is greater than 60,000.

SELECT department , avg(salary)
FROM employees 
GROUP BY department
HAVING avg(salary) > 60000;
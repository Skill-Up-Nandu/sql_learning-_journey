-- 8. List employees whose salary is greater than the average salary of all employees.

SELECT emp_id , name , salary
FROM employees
WHERE salary > (SELECT avg(salary) FROM employees )  ;

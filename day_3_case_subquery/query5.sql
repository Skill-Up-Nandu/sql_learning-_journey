-- 5. Show total number of employees in each department, but only show departments with more than 2 employees.

SELECT department , count(emp_id) AS total_emp
FROM employees
GROUP BY department
HAVING count(emp_id) > 2 ;
--  3. Show employees who are in IT and earn more than ₹60,000.

SELECT * FROM employees
WHERE ( department = 'It' AND salary > 60000 ) ;
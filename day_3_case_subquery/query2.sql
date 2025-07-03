--  2. Show all female employees from Delhi or Mumbai.

SELECT * FROM employees
WHERE ( city = 'Mumbai' OR city = 'Delhi' ) AND gender  = 'F' ;
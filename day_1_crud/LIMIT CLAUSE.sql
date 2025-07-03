-- LIMIT Clause

USE learning ;
SELECT * FROM employees ;
-- Get the top 5 highest paid employees (use ORDER BY and LIMIT).

SELECT * FROM employees ORDER BY  salary DESC LIMIT 5 ;

-- Show first 3 entries in a products table alphabetically by name.

SELECT * FROM employees ORDER BY name LIMIT 3 ;
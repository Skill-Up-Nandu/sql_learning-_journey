-- 9. For each department, count how many employees are from each city.

SELECT 
	department ,
    count( CASE WHEN city = 'Mumbai' THEN 1 END ) AS Mumbai , 
    count( CASE WHEN city = 'Delhi' THEN 1 END ) AS Delhi , 
    count( CASE WHEN city = 'Chennai' THEN 1 END ) AS Chennai , 
    count( CASE WHEN city = 'Bangalore' THEN 1 END ) AS Bangalore 
FROM employees 
GROUP BY department

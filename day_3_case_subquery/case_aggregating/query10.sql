 -- 10. Show departments where more than 50% of the employees are male and female.
-- (Hint: use COUNT(CASE WHEN gender = 'M') vs COUNT(*) in HAVING clause)

SELECT 
department ,
ROUND(
	count( CASE WHEN gender = 'M' THEN 1 END) * 100.00 / count(*) , 
    2 
    ) AS Male_percenatge ,
ROUND(
	count( CASE WHEN gender = 'F' THEN 1 END) * 100.00 / count(*) , 
    2 
    ) AS Female_percenatge
FROM employees
GROUP BY department 
Having 
	count( CASE WHEN gender = 'M' THEN 1 END) * 100.00 / count(*) > 50 
    OR
    count( CASE WHEN gender = 'F' THEN 1 END) * 100.00 / count(*) > 50 ;
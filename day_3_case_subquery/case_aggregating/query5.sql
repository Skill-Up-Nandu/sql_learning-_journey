-- 5. For each city, show the number of employees in each salary level (High, Medium, Low).

SELECT city , 
count(CASE WHEN salary >= 70000 THEN 1 END) AS High ,
count(CASE WHEN salary BETWEEN 40000 AND 69999 THEN 1 END) AS Medium ,
count(CASE WHEN salary < 40000 THEN 1 END) AS Low
FROM employees
GROUP BY city ;
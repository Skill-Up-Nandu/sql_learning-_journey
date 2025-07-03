-- 7. Show for each city:
-- Total number of employees
-- % of female employees (use COUNT() + CASE + a derived column)

SELECT 
city , 
count(*) AS Total_emp , 
ROUND(
	count(CASE WHEN gender = 'F' THEN 1 END) / count(*) *100  ,
    2
    ) AS Female_percentage
FROM employees
GROUP BY city 
-- 6. Calculate the average salary in each department, but:
-- If department is IT, subtract ₹5,000 from each salary before averaging.
-- If department is HR, increase salary by ₹2,000 before averaging.

SELECT department ,
ROUND(Avg(
	CASE 
		WHEN department = 'IT' THEN salary-5000
		WHEN department = 'HR' THEN salary+2000
		ELSE salary
	END 
    ), 0) AS Adjusted_avg_salary
FROM employees
GROUP BY department ;
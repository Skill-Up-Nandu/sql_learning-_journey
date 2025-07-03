-- 1. . Assign salary levels using CASE: 

-- Add a column showing “High”, “Medium”, or “Low” salary based on salary:
-- High: ≥ 70,000
-- Medium: 40,000–69,999
-- Low: < 40,000

SELECT name , department , salary ,
	CASE
		WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
	END AS Salary_status
FROM employees ;
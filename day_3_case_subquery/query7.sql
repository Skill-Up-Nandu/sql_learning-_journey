-- 7. Show average salary per department, and label each department as:
-- "Well Paid" if average ≥ ₹60,000
-- "Underpaid" otherwise

SELECT department , ROUND(avg(salary),0) AS avg_salary ,
	CASE
		WHEN avg(salary) >= 60000 THEN 'Well Paid'
        ELSE 'Underpaid'
	END AS label
FROM employees
GROUP BY department ;

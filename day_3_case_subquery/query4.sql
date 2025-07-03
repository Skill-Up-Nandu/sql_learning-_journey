--  4. Create a new column called retirement_status:
-- Mark as:

-- "Near Retirement" if age ≥ 40
-- "Mid Career" if age between 30 and 39
-- "Early Career" otherwise

SELECT * ,
	CASE
		WHEN age >= 40 THEN 'Near Retiremnet'
        WHEN age >= 30 THEN 'Mid Career'
        ELSE 'Early Career'
	END AS retirement_status
FROM employees ;
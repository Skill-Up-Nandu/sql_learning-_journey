-- 6. Add a new column to show if an employee is from North India (Delhi, Chandigarh, or Lucknow).

SELECT * ,
	CASE
		WHEN city in ('Delhi', 'Chandigarh', 'Lucknow') THEN 'North_India'
        ELSE 'Other_region'
        END AS Region
FROM employees ;
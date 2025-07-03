-- 8. Classify employees into experience groups by age:
-- Senior: ≥ 40
-- Mid-level: 30–39
-- Junior: < 30
-- Then show a count of each category across the company.

SELECT 
    COUNT( CASE WHEN age >= 40 THEN 1 END) AS Senior ,
    COUNT( CASE WHEN age BETWEEN 30 AND 39 THEN 1 END) AS Mid_Level , 
    COUNT( CASE WHEN age < 30 THEN 1 END) AS Junior 
FROM employees 

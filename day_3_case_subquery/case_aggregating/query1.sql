-- 1. Count how many employees are in each salary level:

-- Use CASE inside COUNT() to categorize:
-- High: ≥ ₹70,000
-- Medium: ₹40,000–₹69,999
-- Low: < ₹40,000

SELECT 
COUNT(CASE WHEN salary >= 70000 THEN 1 END) AS high, 
COUNT(CASE WHEN salary >= 40000 THEN 1 END) AS Medium,
COUNT(CASE WHEN salary < 40000 THEN 1 END) AS Low
from employees ;
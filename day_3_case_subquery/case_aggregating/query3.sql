-- 3. Total salary paid to:
-- Male employees
-- Female employees
-- Use SUM(CASE WHEN ...)

SELECT 
SUM(CASE WHEN gender = 'M' then salary END) AS male_employees ,
SUM(CASE WHEN gender = 'F' then salary END) AS female_employees
FROM employees ;
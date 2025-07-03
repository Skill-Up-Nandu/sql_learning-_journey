--  10. Create a bonus column:
-- 20% bonus if salary ≥ 80,000
-- 10% if 50,000–79,999
-- 5% otherwise

SELECT * ,
CASE
	WHEN salary >= 80000 THEN ROUND(salary*20/100, 0)
    WHEN salary >= 50000 THEN ROUND(salary*10/100, 0)
    ELSE ROUND(salary*5/100, 0)
END AS salry_bonus
FROM employees ;
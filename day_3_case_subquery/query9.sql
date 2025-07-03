-- 9. Show employees grouped by city along with the gender ratio:
-- Use COUNT + CASE for male_count and female_count

SELECT city , 
count(CASE WHEN gender = 'M' THEN 1 END) AS Male_count,
count(CASE WHEN gender = 'F' THEN 1 END) AS Female_count
FROM employees
GROUP BY city ;
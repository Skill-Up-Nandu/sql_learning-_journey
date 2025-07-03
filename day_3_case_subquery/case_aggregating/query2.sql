-- 2. Show how many male and female employees are there in each department.

SELECT department ,
count(CASE WHEN gender = 'M' THEN 1 END) AS Total_male , 
count(CASE WHEN gender = 'F' THEN 1 END) AS Total_female
FROM employees 
GROUP BY department ;
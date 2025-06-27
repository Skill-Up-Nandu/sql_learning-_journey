-- Practice Questions – Aggregation & GROUP BY SESSION 2

USE learning ; 
SELECT * FROM student ; 

-- 1. List each grade and how many students scored it, ordered by the most common grade.

SELECT grade , count(*) AS total_stu_scored 
FROM student
GROUP BY grade
ORDER BY total_stu_scored DESC ;

-- 2. Find the grade with the highest average age of students.

SELECT grade , ROUND(avg(age) , 0) AS avg_age 
FROM student
GROUP BY grade 
ORDER BY avg_age DESC
LIMIT 1 ;

-- 3. Count the number of students in each age group, and list only those with more than 1 student.

SELECT age , count(*) AS total_stu 
FROM student
GROUP BY age 
HAVING count(*) > 1 ;
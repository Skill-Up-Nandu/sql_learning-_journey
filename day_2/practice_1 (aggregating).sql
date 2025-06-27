-- Practice Questions – Aggregation & GROUP BY

use learning ;

SELECT * FROM student ;

-- 1. Count how many students are there in each grade 

SELECT grade , count(id) AS total_students
FROM student 
GROUP BY grade ;

-- 2.  Find the average age of students who scored grade 'A'.

SELECT grade , avg(age) AS Average_age
FROM student
GROUP BY grade ;

-- 3. Get the grade with the highest number of students.

SELECT grade , count(*) AS student_count 
FROM student 
group by grade 
order by student_count DESC
limit 1 ; 

-- 4. Show total students grouped by age.

SELECT age AS Age_group , count(*) AS Total_stu
FROM student
GROUP BY age ;
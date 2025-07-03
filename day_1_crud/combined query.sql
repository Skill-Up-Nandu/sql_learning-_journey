-- Combined

USE learning ;
SELECT * FROM student ;

-- Select all students who:
-- Have grade 'B'
-- Are older than 15
-- And limit the output to 2 records  

SELECT * FROM student 
WHERE (grade = 'b' AND age > 15 ) 
LIMIT 2 ;

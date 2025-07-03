--  DML (Data Manipulation Language)

CREATE DATABASE learning;
USE learning;

-- nsert multiple records into a table called students with fields id, name, age, and grade.

CREATE TABLE student(
	id int PRIMARY KEY,
	name VARCHAR(50),
	age INT CHECK (age > 0),
	grade VARCHAR(2) NOT NULL
    );
    
INSERT INTO student VALUES 
(1, 'Ravi', 16, 'B'),
(2, 'Asha', 14, 'A'),
(3, 'Pooja', 17, 'B'),
(4, 'Amit', 13, 'C'),
(5, 'Neha', 15, 'A'),
(6, 'NANDU', 24, 'B');

SELECT * FROM student;

-- Update the grade of a student named "Ravi" to 'A+'.

UPDATE student
SET grade = 'A+'
WHERE id  = 1;

-- Delete all students whose age is less than 10.

SET SQL_SAFE_UPDATES = 0 ;
DELETE FROM student
WHERE (age < 15);

-- WHERE ClausE 

USE learning ; 

-- Get all employees with salary > 50,000 from a table employees.

CREATE TABLE employees (
	emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary INT 
    ); 

INSERT INTO employees VALUES
(101, 'Raj', 'HR', 48000),
(102, 'Simran', 'IT', 75000),
(103, 'Aman', 'Sales', 62000),
(104, 'Preeti', 'IT', 82000),
(105, 'Vikas', 'HR', 51000);

SELECT * FROM employees ;
SELECT * FROM employees WHERE (salary > 50000) ;

-- Find all books published after the year 2020 from a table books.

CREATE TABLE books (
	book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    year_published INT 
    );

INSERT INTO books VALUES
(1, 'SQL for Beginners', 'John Smith', 2019),
(2, 'Mastering MySQL', 'Jane Doe', 2021),
(3, 'Data Structures', 'Alan Turing', 2022),
(4, 'AI with Python', 'Andrew Ng', 2023),
(5, 'Web Development', 'Tim Berners-Lee', 2018);

SELECT * FROM books ;
SELECT * FROM books WHERE (year_published > 2020) ;

-- Retrieve customers from 'Delhi' OR 'Mumbai' in a table customers.

CREATE TABLE customers (
	cust_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(30)
    );
INSERT INTO customers VALUES
(1, 'Anil', 'Delhi'),
(2, 'Sunita', 'Mumbai'),
(3, 'Rahul', 'Chennai'),
(4, 'Priya', 'Kolkata'),
(5, 'Vivek', 'Mumbai');

SELECT * FROM customers ;
SELECT * FROM customers WHERE (city = 'mumbai' OR city = 'delhi') ;
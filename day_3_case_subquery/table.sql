USE learning ;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    age INT,
    gender CHAR(1), -- 'M' or 'F'
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Aman', 'IT', 75000, 29, 'M', 'Delhi'),
(2, 'Nisha', 'HR', 45000, 32, 'F', 'Mumbai'),
(3, 'Raj', 'Finance', 58000, 45, 'M', 'Delhi'),
(4, 'Simran', 'IT', 86000, 28, 'F', 'Bangalore'),
(5, 'Aryan', 'Marketing', 39000, 30, 'M', 'Chennai'),
(6, 'Pooja', 'HR', 49000, 35, 'F', 'Mumbai'),
(7, 'Ravi', 'IT', 32000, 26, 'M', 'Delhi'),
(8, 'Sneha', 'Finance', 91000, 38, 'F', 'Chennai'),
(9, 'Karan', 'IT', 65000, 40, 'M', 'Mumbai'),
(10, 'Neha', 'Marketing', 42000, 29, 'F', 'Delhi');

SELECT * FROM employees
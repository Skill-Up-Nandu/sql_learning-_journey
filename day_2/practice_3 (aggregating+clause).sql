-- Practice Questions – Aggregation & GROUP BY

USE learning ;

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    city VARCHAR(30)
) ;

INSERT INTO orders VALUES
(1, 101, 2500.00, 'Delhi'),
(2, 102, 3200.00, 'Mumbai'),
(3, 101, 1500.00, 'Delhi'),
(4, 103, 4000.00, 'Bangalore'),
(5, 104, 2100.00, 'Delhi'),
(6, 102, 2700.00, 'Mumbai'),
(7, 105, 3000.00, 'Kolkata'),
(8, 106, 1800.00, 'Chennai'),
(9, 103, 2900.00, 'Bangalore'),
(10, 104, 3100.00, 'Delhi'),
(11, 106, 2500.00, 'Chennai'),
(12, 103, 1500.00, 'Kolkata');

SELECT * FROM orders ; 

-- 1. Find the total order amount per customer.

SELECT customer_id , count(*) AS total_order
FROM orders 
GROUP BY customer_id ;

-- 2. Count how many orders were placed from each city.

SELECT city , count(*) AS total_order
FROM orders
GROUP BY city ;

-- 3. List cities with more than 2 orders (use HAVING).

SELECT city , count(*) AS total_orders
FROM orders
GROUP BY city
HAVING count(*) > 2 ;

-- 4. Get the customer who placed the highest total order amount.

SELECT customer_id , sum(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
limit 1 ;

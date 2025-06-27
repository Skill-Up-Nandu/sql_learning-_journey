-- Practice Questions – Aggregation & GROUP BY SESSION 2

USE learning ; 
SELECT * FROM orders ;

-- 1. Find the total amount spent by each customer, and display only those who have spent more than ₹5,000.

SELECT customer_id , sum(amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING sum(amount) > 5000 ;

-- 2. List the top 3 cities based on total order amount.

SELECT city , sum(amount) AS total_spent
FROM orders
GROUP BY city
ORDER BY total_spent DESC
LIMIT 3;

-- 3. Find the average order value per city, and show only those cities with average order value > ₹2,000.

SELECT city , round(avg(amount) , 2)  AS average_order_value
FROM orders
GROUP BY city
HAVING avg(amount) > 2000 ;

-- 4. List customers who have placed more than 1 order and spent more than ₹4,000 in total.

SELECT customer_id , count(*) AS total_orders , sum(amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING count(*) > 1 AND sum(amount) > 4000 ;

-- 5. Get the city with the highest average orderamount.

SELECT city , round(avg(amount) , 2 ) AS avg_order_amount
FROM orders
GROUP BY city
ORDER BY avg_order_amount DESC
LIMIT 1 ;
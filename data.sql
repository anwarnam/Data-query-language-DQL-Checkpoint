Use commerce;

INSERT INTO orders (customer_id, product_id, order_date, total_amount) VALUES
(1, 1, '2024-03-01', 10000),
(2, 2, '2024-03-05', 8000),
(3, 4, '2024-03-10', 6000),
(1, 5, '2024-03-15', 5000),
(2, 3, '2024-03-20', 7000);
select * from orders ;

SELECT * FROM customers;

SELECT `name`, category 
FROM products 
WHERE price BETWEEN 5000 AND 10000;

SELECT * 
FROM products 
ORDER BY price DESC;

SELECT 
    COUNT(*) AS total_orders, 
    AVG(total_amount) AS average_amount, 
    MAX(total_amount) AS highest_total_amount, 
    MIN(total_amount) AS lowest_total_amount 
FROM orders;

SELECT product_id, COUNT(*) AS number_of_orders 
FROM orders 
GROUP BY product_id;

SELECT customer_id 
FROM orders 
GROUP BY customer_id 
HAVING COUNT(*) > 2;

SELECT MONTH(order_date) AS month, COUNT(*) AS number_of_orders 
FROM orders 
WHERE YEAR(order_date) = 2020 
GROUP BY MONTH(order_date);

SELECT p.`name`, c.fname, o.order_date 
FROM orders o
JOIN products p ON o.product_id = p.id 
JOIN customers c ON o.customer_id = c.id;

SELECT * 
FROM orders 
WHERE order_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH) 
AND order_date < CURRENT_DATE();

SELECT c.id 
FROM customers c 
LEFT JOIN orders o ON c.id = o.customer_id 
WHERE o.id IS NULL;



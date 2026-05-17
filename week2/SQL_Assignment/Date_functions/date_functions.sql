CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_name VARCHAR(50),
order_date DATE,
order_timestamp TIMESTAMP,
delivery_date DATE,
order_amount DECIMAL(10,2)
);

INSERT INTO orders VALUES
(1, 'Karthik', '2024-01-15', '2024-01-15 10:30:45', '2024-01-20', 2500.00);

SELECT CURDATE();

SELECT NOW();

SELECT YEAR(order_date),
MONTH(order_date),
DAY(order_date)
FROM orders;

SELECT MONTHNAME(order_date),
DAYNAME(order_date)
FROM orders;

SELECT order_date,
DATE_ADD(order_date, INTERVAL 5 DAY)
FROM orders;

SELECT DATEDIFF(delivery_date,order_date)
FROM orders;

SELECT DATE_FORMAT(order_date,'%d-%m-%Y')
FROM orders;
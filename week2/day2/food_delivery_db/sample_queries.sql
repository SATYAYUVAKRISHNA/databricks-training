-- Display all customers
SELECT * FROM customers;

-- Display hotel names
SELECT hotel_name FROM hotel_details;

-- Display orders with customer names
SELECT o.order_id, c.customer_name, o.order_amount
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

-- Hotels with rating greater than 4
SELECT * FROM hotel_details
WHERE rating > 4;

-- Total order amount
SELECT SUM(order_amount) AS total_sales
FROM orders;

-- Delivery partner based on rating
SELECT * FROM delivery_partners
ORDER BY rating DESC;
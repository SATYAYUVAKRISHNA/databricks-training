**Schema (MySQL v5.7)**

    CREATE DATABASE food_delivery_db;
    USE food_delivery_db;
    
    CREATE TABLE customers (
        customer_id VARCHAR(10) PRIMARY KEY,
        customer_name VARCHAR(20),
        address VARCHAR(20),
        phone_no BIGINT,
        email_id VARCHAR(20)
    );
    
    CREATE TABLE delivery_partners (
        partner_id VARCHAR(10) PRIMARY KEY,
        partner_name VARCHAR(20),
        phone_no BIGINT,
        rating INT
    );
    
    CREATE TABLE hotel_details (
        hotel_id VARCHAR(10) PRIMARY KEY,
        hotel_name VARCHAR(20),
        hotel_type VARCHAR(20),
        rating INT
    );
    
    CREATE TABLE orders (
        order_id VARCHAR(10) PRIMARY KEY,
        customer_id VARCHAR(10),
        hotel_id VARCHAR(10),
        partner_id VARCHAR(10),
        order_date DATE,
        order_amount INT,
    
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    
        FOREIGN KEY (hotel_id)
        REFERENCES hotel_details(hotel_id),
    
        FOREIGN KEY (partner_id)
        REFERENCES delivery_partners(partner_id)
    );
    

---

**Query #1**

    INSERT INTO customers VALUES
    ('C101','Rahul','Hyderabad',9876543210,'rahul@gmail.com'),
    ('C102','Kiran','Vijayawada',9876543211,'kiran@gmail.com');

There are no results to be displayed.

---
**Query #2**

    INSERT INTO delivery_partners VALUES
    ('P101','Swiggy Rider',9876500001,5),
    ('P102','Zomato Rider',9876500002,4);

There are no results to be displayed.

---
**Query #3**

    INSERT INTO hotel_details VALUES
    ('H101','Paradise','Biryani',5),
    ('H102','KFC','Fast Food',4);

There are no results to be displayed.

---
**Query #4**

    INSERT INTO orders VALUES
    ('O101','C101','H101','P101','2026-05-10',450),
    ('O102','C102','H102','P102','2026-05-11',300);

There are no results to be displayed.

---
**Query #5**

    -- Display all customers
    SELECT * FROM customers;

| customer_id | customer_name | address    | phone_no   | email_id        |
| ----------- | ------------- | ---------- | ---------- | --------------- |
| C101        | Rahul         | Hyderabad  | 9876543210 | rahul@gmail.com |
| C102        | Kiran         | Vijayawada | 9876543211 | kiran@gmail.com |

---
**Query #6**

    -- Display hotel names
    SELECT hotel_name FROM hotel_details;

| hotel_name |
| ---------- |
| Paradise   |
| KFC        |

---
**Query #7**

    -- Display orders with customer names
    SELECT o.order_id, c.customer_name, o.order_amount
    FROM orders o
    JOIN customers c
    ON o.customer_id = c.customer_id;

| order_id | customer_name | order_amount |
| -------- | ------------- | ------------ |
| O101     | Rahul         | 450          |
| O102     | Kiran         | 300          |

---
**Query #8**

    -- Hotels with rating greater than 4
    SELECT * FROM hotel_details
    WHERE rating > 4;

| hotel_id | hotel_name | hotel_type | rating |
| -------- | ---------- | ---------- | ------ |
| H101     | Paradise   | Biryani    | 5      |

---
**Query #9**

    -- Total order amount
    SELECT SUM(order_amount) AS total_sales
    FROM orders;

| total_sales |
| ----------- |
| 750         |

---
**Query #10**

    -- Delivery partner based on rating
    SELECT * FROM delivery_partners
    ORDER BY rating DESC;

| partner_id | partner_name | phone_no   | rating |
| ---------- | ------------ | ---------- | ------ |
| P101       | Swiggy Rider | 9876500001 | 5      |
| P102       | Zomato Rider | 9876500002 | 4      |

---

[View on DB Fiddle](https://www.db-fiddle.com/)
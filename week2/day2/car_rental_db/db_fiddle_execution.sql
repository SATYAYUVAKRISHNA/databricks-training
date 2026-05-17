**Schema (MySQL v5.7)**

    CREATE DATABASE car_rental_db;
    USE car_rental_db;
    
    CREATE TABLE owners (
        owner_id VARCHAR(10) PRIMARY KEY,
        owner_name VARCHAR(20),
        address VARCHAR(20),
        phone_no BIGINT,
        email_id VARCHAR(20)
    );
    
    CREATE TABLE customers (
        customer_id VARCHAR(10) PRIMARY KEY,
        customer_name VARCHAR(20),
        address VARCHAR(20),
        phone_no BIGINT,
        email_id VARCHAR(20)
    );
    
    CREATE TABLE cars (
        car_id VARCHAR(10) PRIMARY KEY,
        car_name VARCHAR(20),
        car_type VARCHAR(20),
        owner_id VARCHAR(10),
    
        FOREIGN KEY (owner_id)
        REFERENCES owners(owner_id)
    );
    
    CREATE TABLE rentals (
        rental_id VARCHAR(10) PRIMARY KEY,
        customer_id VARCHAR(10),
        car_id VARCHAR(10),
        pickup_date DATE,
        return_date DATE,
        km_driven INT,
        fare_amount DOUBLE(10,2),
    
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    
        FOREIGN KEY (car_id)
        REFERENCES cars(car_id)
    );

---

**Query #1**

    INSERT INTO owners VALUES
    ('O101','Ramesh','Hyderabad',9876543200,'ramesh@gmail.com'),
    ('O102','Suresh','Vijayawada',9876543201,'suresh@gmail.com');

There are no results to be displayed.

---
**Query #2**

    INSERT INTO customers VALUES
    ('C101','Arjun','Guntur',9876543210,'arjun@gmail.com'),
    ('C102','Krishna','Tenali',9876543211,'krishna@gmail.com');

There are no results to be displayed.

---
**Query #3**

    INSERT INTO cars VALUES
    ('CAR101','Swift','Hatchback','O101'),
    ('CAR102','Innova','SUV','O102');

There are no results to be displayed.

---
**Query #4**

    INSERT INTO rentals VALUES
    ('R101','C101','CAR101','2026-05-01','2026-05-03',250,5000.00),
    ('R102','C102','CAR102','2026-05-04','2026-05-06',180,4000.00);

There are no results to be displayed.

---
**Query #5**

    -- Display all cars
    SELECT * FROM cars;

| car_id | car_name | car_type  | owner_id |
| ------ | -------- | --------- | -------- |
| CAR101 | Swift    | Hatchback | O101     |
| CAR102 | Innova   | SUV       | O102     |

---
**Query #6**

    -- Display owner details
    SELECT * FROM owners;

| owner_id | owner_name | address    | phone_no   | email_id         |
| -------- | ---------- | ---------- | ---------- | ---------------- |
| O101     | Ramesh     | Hyderabad  | 9876543200 | ramesh@gmail.com |
| O102     | Suresh     | Vijayawada | 9876543201 | suresh@gmail.com |

---
**Query #7**

    -- Car and owner details
    SELECT c.car_name, c.car_type, o.owner_name
    FROM cars c
    JOIN owners o
    ON c.owner_id = o.owner_id;

| car_name | car_type  | owner_name |
| -------- | --------- | ---------- |
| Swift    | Hatchback | Ramesh     |
| Innova   | SUV       | Suresh     |

---
**Query #8**

    -- Rentals based on fare amount
    SELECT * FROM rentals
    WHERE fare_amount > 4000;

| rental_id | customer_id | car_id | pickup_date | return_date | km_driven | fare_amount |
| --------- | ----------- | ------ | ----------- | ----------- | --------- | ----------- |
| R101      | C101        | CAR101 | 2026-05-01  | 2026-05-03  | 250       | 5000        |

---
**Query #9**

    -- Total revenue
    SELECT SUM(fare_amount) AS total_revenue
    FROM rentals;

| total_revenue |
| ------------- |
| 9000          |

---
**Query #10**

    -- Number of times each car rented
    SELECT car_id, COUNT(*) AS rented_count
    FROM rentals
    GROUP BY car_id;

| car_id | rented_count |
| ------ | ------------ |
| CAR101 | 1            |
| CAR102 | 1            |

---

[View on DB Fiddle](https://www.db-fiddle.com/)
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
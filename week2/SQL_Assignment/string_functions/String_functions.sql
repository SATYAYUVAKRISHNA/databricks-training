CREATE TABLE employees (
emp_id INT PRIMARY KEY,
full_name VARCHAR(100),
email VARCHAR(100),
department VARCHAR(50),
city VARCHAR(50),
salary VARCHAR(20),
remarks VARCHAR(200)
);

INSERT INTO employees VALUES
(1, 'Karthik Kondpak', 'karthik.k@gmail.com', 'Data Engineering', 'Hyderabad', '75000', ' Top performer '),
(2, 'Veena Reddy', 'veena_r@company.com', 'Analytics', 'Bangalore', '65000', 'Excellent communication'),
(3, 'Ravi kumar', 'ravi.kumar@org.in', 'Data Science', 'Chennai', '85000', 'Needs improvement'),
(4, 'Anil', 'anil@abc.com', 'DEVOPS', 'Pune', '70000', NULL),
(5, ' Suresh ', 'suresh@xyz.com', 'data engineering', ' hyderabad ', '60000', ' ');

SELECT full_name, LENGTH(full_name) FROM employees;

SELECT UPPER(department), LOWER(city) FROM employees;

SELECT TRIM(full_name) FROM employees;

SELECT CONCAT(full_name,' - ',department) FROM employees;

SELECT SUBSTRING(email,1,7) FROM employees;

SELECT LEFT(full_name,4), RIGHT(city,3)
FROM employees;

SELECT email, INSTR(email,'@')
FROM employees;

SELECT REPLACE(department,'Data','Big Data')
FROM employees;

SELECT full_name, REVERSE(full_name)
FROM employees;

SELECT LPAD(emp_id,5,'0')
FROM employees;

SELECT full_name, IFNULL(remarks,'No remarks')
FROM employees;
CREATE TABLE employee_salary (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
base_salary DECIMAL(10,2),
bonus DECIMAL(10,2),
tax_percent DECIMAL(5,2),
experience_years INT
);

INSERT INTO employee_salary VALUES
(1, 'Karthik', 75000.75, 5000.50, 10.00, 6),
(2, 'Veena', 65000.40, 4000.25, 8.50, 4),
(3, 'Ravi', 85000.90, 6000.75, 12.00, 8),
(4, 'Anil', 70000.10, NULL, 9.00, 5),
(5, 'Suresh', 60000.55, 3000.30, 7.50, 3);

SELECT ABS(-100);

SELECT ROUND(base_salary,2)
FROM employee_salary;

SELECT CEIL(base_salary)
FROM employee_salary;

SELECT FLOOR(base_salary)
FROM employee_salary;

SELECT TRUNCATE(base_salary,1)
FROM employee_salary;

SELECT MOD(experience_years,2)
FROM employee_salary;

SELECT POWER(2,3);

SELECT SQRT(64);

SELECT SIGN(base_salary)
FROM employee_salary;

SELECT FORMAT(base_salary,2)
FROM employee_salary;
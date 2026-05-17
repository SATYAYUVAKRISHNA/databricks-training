CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
manager_id INT,
dept_id INT
);

CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

SELECT e.emp_name,d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id=d.dept_id;

SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id=d.dept_id;

SELECT e.emp_name,d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id=d.dept_id;
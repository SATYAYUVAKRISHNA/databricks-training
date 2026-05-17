CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);

SELECT emp_name,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;

SELECT emp_name,
RANK() OVER(ORDER BY salary DESC) AS rank_num
FROM employees;

SELECT emp_name,
DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
FROM employees;
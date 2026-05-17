CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    salary INT,
    bonus INT,
    manager_id INT
);

INSERT INTO Employees VALUES
(1, 'Amit', 50000, NULL, 101),
(2, 'John', NULL, 5000, 102),
(3, 'Sara', 60000, NULL, NULL);

SELECT * FROM Employees
WHERE salary IS NULL;

SELECT name, IFNULL(salary,0)
FROM Employees;

SELECT name, COALESCE(salary,bonus,0)
FROM Employees;

SELECT NULLIF(0,0);

SELECT name,
COALESCE(salary,0) + COALESCE(bonus,0) AS total_earnings
FROM Employees;
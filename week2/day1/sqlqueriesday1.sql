**Schema (MySQL v5.7)**

    
    CREATE TABLE Department (
        department_id INT PRIMARY KEY,
        department_name VARCHAR(30) NOT NULL,
        department_block_number INT
    );
    
    -- =========================================
    -- Create Student Table
    -- =========================================
    CREATE TABLE Student (
        student_id INT PRIMARY KEY,
        student_name VARCHAR(30) NOT NULL,
        address VARCHAR(40),
        city VARCHAR(30),
        department_id INT,
        FOREIGN KEY (department_id)
            REFERENCES Department(department_id)
    );
    
    -- =========================================
    -- Create Staff Table
    -- =========================================
    CREATE TABLE Staff (
        staff_id INT PRIMARY KEY,
        staff_name VARCHAR(30) NOT NULL,
        department_id INT,
        FOREIGN KEY (department_id)
            REFERENCES Department(department_id)
    );
    
    -- =========================================
    -- Create Subject Table
    -- =========================================
    CREATE TABLE Subject (
        subject_id INT PRIMARY KEY,
        subject_name VARCHAR(30) NOT NULL,
        subject_code VARCHAR(10),
        staff_id INT,
        FOREIGN KEY (staff_id)
            REFERENCES Staff(staff_id)
    );
    
    -- =========================================
    -- Create Mark Table
    -- =========================================
    CREATE TABLE Mark (
        value INT,
        subject_id INT,
        student_id INT,
        PRIMARY KEY (subject_id, student_id),
        FOREIGN KEY (subject_id)
            REFERENCES Subject(subject_id),
        FOREIGN KEY (student_id)
            REFERENCES Student(student_id)
    );
    
    -- =========================================
    -- Insert Data into Department
    -- =========================================
    INSERT INTO Department VALUES
    (1, 'Computer Science', 101),
    (2, 'Mechanical', 102),
    (3, 'Electronics', 103),
    (4, 'Civil', 104);
    
    -- =========================================
    -- Insert Data into Student
    -- =========================================
    INSERT INTO Student VALUES
    (1, 'Rahul', 'Street 1', 'Hyderabad', 1),
    (2, 'Anjali', 'Street 2', 'Vijayawada', 1),
    (3, 'Kiran', 'Street 3', 'Guntur', 2),
    (4, 'Sneha', 'Street 4', 'Warangal', 3),
    (5, 'Arjun', 'Street 5', 'Nellore', 4);
    
    -- =========================================
    -- Insert Data into Staff
    -- =========================================
    INSERT INTO Staff VALUES
    (1, 'Dr. Ramesh', 1),
    (2, 'Dr. Suresh', 2),
    (3, 'Dr. Kavitha', 3),
    (4, 'Dr. Naresh', 4);
    
    -- =========================================
    -- Insert Data into Subject
    -- =========================================
    INSERT INTO Subject VALUES
    (1, 'Database Systems', 'DBMS101', 1),
    (2, 'Thermodynamics', 'MECH201', 2),
    (3, 'Digital Electronics', 'ECE301', 3),
    (4, 'Structural Analysis', 'CIV401', 4),
    (5, 'Operating Systems', 'OS102', 1);
    
    -- =========================================
    -- Insert Data into Mark
    -- =========================================
    INSERT INTO Mark VALUES
    (85, 1, 1),
    (90, 5, 1),
    (78, 1, 2),
    (88, 5, 2),
    (70, 2, 3),
    (92, 3, 4),
    (80, 4, 5);
    
    
    

---

**Query #1**

    -- Question 1:
    -- Display all records from Student table.
    SELECT * FROM Student;

| student_id | student_name | address  | city       | department_id |
| ---------- | ------------ | -------- | ---------- | ------------- |
| 1          | Rahul        | Street 1 | Hyderabad  | 1             |
| 2          | Anjali       | Street 2 | Vijayawada | 1             |
| 3          | Kiran        | Street 3 | Guntur     | 2             |
| 4          | Sneha        | Street 4 | Warangal   | 3             |
| 5          | Arjun        | Street 5 | Nellore    | 4             |

---
**Query #2**

    -- Question 2:
    -- Display address and city together in a single column.
    SELECT CONCAT(address, ", ", city) AS full_address
    FROM Student;

| full_address         |
| -------------------- |
| Street 1, Hyderabad  |
| Street 2, Vijayawada |
| Street 3, Guntur     |
| Street 4, Warangal   |
| Street 5, Nellore    |

---
**Query #3**

    -- Question 3:
    -- Display address and city in descending order.
    SELECT CONCAT(address, ", ", city) AS address
    FROM Student
    ORDER BY CONCAT(address, ", ", city) DESC;

| address              |
| -------------------- |
| Street 5, Nellore    |
| Street 4, Warangal   |
| Street 3, Guntur     |
| Street 2, Vijayawada |
| Street 1, Hyderabad  |

---
**Query #4**

    -- Question 4:
    -- Display address and city in ascending order.
    SELECT CONCAT(address, ", ", city) AS address
    FROM Student
    ORDER BY CONCAT(address, ", ", city);

| address              |
| -------------------- |
| Street 1, Hyderabad  |
| Street 2, Vijayawada |
| Street 3, Guntur     |
| Street 4, Warangal   |
| Street 5, Nellore    |

---
**Query #5**

    -- Question 5:
    -- Display student names and their department names
    -- for students who belong to Coimbatore city.
    SELECT s.student_name,
           d.department_name
    FROM Student s
    INNER JOIN Department d
    ON s.department_id = d.department_id
    WHERE s.city = 'Coimbatore'
    ORDER BY s.student_name;

There are no results to be displayed.

---
**Query #6**

    -- Question 6:
    -- Display department names whose block number is 3.
    SELECT department_name
    FROM Department
    WHERE department_block_number = 3
    ORDER BY department_name;

There are no results to be displayed.

---

[View on DB Fiddle](https://www.db-fiddle.com/)
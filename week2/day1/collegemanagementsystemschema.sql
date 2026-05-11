-- =========================================
-- College Management System (CMS)
-- Database Starter File
-- =========================================

-- Drop tables if already exist
DROP TABLE IF EXISTS Mark;
DROP TABLE IF EXISTS Subject;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Department;

-- =========================================
-- Create Department Table
-- =========================================
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

-- =========================================
-- View Tables
-- =========================================
SELECT * FROM Department;
SELECT * FROM Student;
SELECT * FROM Staff;
SELECT * FROM Subject;
SELECT * FROM Mark;
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create Tables
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Insert Data
INSERT INTO Department VALUES (101, 'Computer'), (102, 'Mechanical'), (103, 'Civil');

INSERT INTO Student VALUES 
(1, 'Gaurav', 101),
(2, 'Rahul', 102),
(3, 'Amit', NULL);

-- INNER JOIN
SELECT S.name, D.dept_name
FROM Student S
INNER JOIN Department D
ON S.dept_id = D.dept_id;

-- LEFT JOIN
SELECT S.name, D.dept_name
FROM Student S
LEFT JOIN Department D
ON S.dept_id = D.dept_id;

-- RIGHT JOIN
SELECT S.name, D.dept_name
FROM Student S
RIGHT JOIN Department D
ON S.dept_id = D.dept_id;

-- CROSS JOIN
SELECT S.name, D.dept_name
FROM Student S
CROSS JOIN Department D;

-- Create View
CREATE VIEW Student_Department_View AS
SELECT S.name, D.dept_name
FROM Student S
INNER JOIN Department D
ON S.dept_id = D.dept_id;

-- View Data
SELECT * FROM Student_Department_View;

-- Drop View
DROP VIEW Student_Department_View;

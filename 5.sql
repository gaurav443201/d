CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert Data
INSERT INTO Student VALUES (1, 'Gaurav', 85);
INSERT INTO Student VALUES (2, 'Rahul', 90);
INSERT INTO Student VALUES (3, 'Amit', 70);

INSERT INTO Department VALUES (101, 'Computer'), (102, 'Mechanical');

-- Subquery with AVG
SELECT * 
FROM Student
WHERE marks > (SELECT AVG(marks) FROM Student);

-- Subquery with MAX
SELECT * 
FROM Student
WHERE marks = (SELECT MAX(marks) FROM Student);

-- Subquery with IN
SELECT * 
FROM Student
WHERE id IN (SELECT id FROM Student WHERE marks > 80);

-- Subquery with EXISTS
SELECT * 
FROM Student S
WHERE EXISTS (
    SELECT * FROM Department D WHERE D.dept_id = 101
);

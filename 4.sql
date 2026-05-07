CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);

-- Insert Data
INSERT INTO Student VALUES (1, 'Gaurav', 'BCA', 85);
INSERT INTO Student VALUES (2, 'Rahul', 'BBA', 90);
INSERT INTO Student VALUES (3, 'Amit', 'BCA', 75);
INSERT INTO Student VALUES (4, 'Neha', 'BBA', 88);
INSERT INTO Student VALUES (5, 'Riya', 'BCA', 92);

-- Aggregate Functions
SELECT COUNT(*) FROM Student;
SELECT SUM(marks) FROM Student;
SELECT AVG(marks) FROM Student;
SELECT MAX(marks) FROM Student;
SELECT MIN(marks) FROM Student;

-- GROUP BY
SELECT course, COUNT(*) AS total_students
FROM Student
GROUP BY course;

-- GROUP BY with SUM
SELECT course, SUM(marks) AS total_marks
FROM Student
GROUP BY course;

-- HAVING clause
SELECT course, AVG(marks) AS avg_marks
FROM Student
GROUP BY course
HAVING AVG(marks) > 80;

-- HAVING with COUNT
SELECT course, COUNT(*) 
FROM Student
GROUP BY course
HAVING COUNT(*) > 1;

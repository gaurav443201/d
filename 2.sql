-- Create database
CREATE DATABASE CollegeDB;

-- Select database
USE CollegeDB;

-- Create Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE
);

-- Create Student table
CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age >= 18),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Insert data into Department
INSERT INTO Department VALUES (101, 'Computer');
INSERT INTO Department VALUES (102, 'Mechanical');

-- Insert data into Student
INSERT INTO Student VALUES (1, 'Gaurav', 'gaurav@gmail.com', 20, 101);
INSERT INTO Student VALUES (2, 'Rahul', 'rahul@gmail.com', 22, 102);

-- ALTER: Add column
ALTER TABLE Student ADD phone VARCHAR(15);

-- ALTER: Modify column
ALTER TABLE Student MODIFY name VARCHAR(100);

-- ALTER: Drop column
ALTER TABLE Student DROP COLUMN phone;

-- Rename table
RENAME TABLE Student TO Student_Details;

-- Truncate table
TRUNCATE TABLE Student_Details;

-- Drop tables
DROP TABLE Student_Details;
DROP TABLE Department;

-- Drop database (optional, write only if asked)
DROP DATABASE CollegeDB;

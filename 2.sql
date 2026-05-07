CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT
);

-- INSERT
INSERT INTO Student VALUES (1, 'Gaurav', 20, 85);
INSERT INTO Student VALUES (2, 'Rahul', 22, 90);
INSERT INTO Student VALUES (3, 'Amit', 21, 70);

-- UPDATE with arithmetic
UPDATE Student SET marks = marks + 10 WHERE id = 3;

-- DELETE
DELETE FROM Student WHERE id = 2;

-- Logical Operator
SELECT * FROM Student WHERE age > 20 AND marks > 80;

-- Pattern Matching
SELECT * FROM Student WHERE name LIKE 'A%';

-- String Function
SELECT LOWER(name) FROM Student;

-- Set Operator (UNION)
SELECT name FROM Student
UNION
SELECT name FROM Student;

-- TRANSACTION CONTROL
START TRANSACTION;

UPDATE Student SET marks = 95 WHERE id = 1;

SAVEPOINT sp1;

UPDATE Student SET marks = 60 WHERE id = 3;

ROLLBACK TO sp1;

COMMIT;

-- DCL (Access Control)
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'pass123';

GRANT SELECT, INSERT ON CollegeDB.Student TO 'user1'@'localhost';

REVOKE INSERT ON CollegeDB.Student FROM 'user1'@'localhost';

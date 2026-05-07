CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

-- BEFORE INSERT Trigger
DELIMITER //

CREATE TRIGGER before_insert_marks
BEFORE INSERT ON Student
FOR EACH ROW
BEGIN
    IF NEW.marks < 0 THEN
        SET NEW.marks = 0;
    END IF;

    IF NEW.marks > 100 THEN
        SET NEW.marks = 100;
    END IF;
END //

DELIMITER ;

-- BEFORE UPDATE Trigger
DELIMITER //

CREATE TRIGGER before_update_marks
BEFORE UPDATE ON Student
FOR EACH ROW
BEGIN
    IF NEW.marks < 0 THEN
        SET NEW.marks = 0;
    END IF;
END //

DELIMITER ;

-- Test Data
INSERT INTO Student VALUES (1, 'Gaurav', 85);
INSERT INTO Student VALUES (2, 'Rahul', 120);

UPDATE Student SET marks = -20 WHERE id = 1;

SELECT * FROM Student;

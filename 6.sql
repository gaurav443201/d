CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO Student VALUES 
(1, 'Gaurav', 85),
(2, 'Rahul', 90),
(3, 'Amit', 70);

DELIMITER //

CREATE PROCEDURE HighMarks()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE s_name VARCHAR(50);
    DECLARE s_marks INT;

    DECLARE cur CURSOR FOR SELECT name, marks FROM Student;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO s_name, s_marks;

        IF done THEN
            LEAVE read_loop;
        END IF;

        IF s_marks > 80 THEN
            SELECT s_name, s_marks;
        END IF;

    END LOOP;

    CLOSE cur;
END //

DELIMITER ;

-- Call Procedure
CALL HighMarks();

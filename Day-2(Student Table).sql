CREATE DATABASE school;
use school;
CREATE TABLE Students (
    id INT,
    name VARCHAR(50),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Amit', 78),
(2, 'Riya', 92),
(3, 'John', 65),
(4, 'Sara', 85),
(5, 'David', 55);

SELECT * FROM Students;
 -- Students who scored more than 80 marks
SELECT * FROM Students WHERE marks>80;
-- Students sorted by marks in sorted descending order 
SELECT * FROM Students ORDER BY marks DESC;
-- Top 2 students based on marks
SELECT * FROM Students ORDER BY marks DESC LIMIT 2;
-- Students who scored b/w 60 and 90
SELECT * FROM Students WHERE marks BETWEEN 60 and 90;
-- Studets whose name end with 'a'
SELECT * FROM Students WHERE name like "%a";
-- Student with minimum marks
SELECT * FROM Students WHERE marks=(SELECT min(marks) FROM Students);

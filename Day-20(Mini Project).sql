CREATE DATABASE StudentManagement;
USE StudentManagement;
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    department_id INT
);
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
);
CREATE TABLE Marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(100),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
INSERT INTO Departments (department_name)
VALUES ('Computer Science'), ('Physics'), ('Mathematics');

INSERT INTO Students (name, gender, age, department_id)
VALUES 
('Aman', 'Male', 20, 1),
('Sara', 'Female', 21, 1),
('Ravi', 'Male', 22, 2),
('Neha', 'Female', 20, 3);

INSERT INTO Marks (student_id, subject, marks)
VALUES 
(1, 'DBMS', 85),
(1, 'SQL', 90),
(2, 'DBMS', 78),
(2, 'SQL', 88),
(3, 'Physics', 92),
(4, 'Maths', 95);

SELECT s.student_id, s.name, d.department_name
FROM Students s
JOIN Departments d
ON s.department_id = d.department_id;

SELECT s.name, m.subject, m.marks
FROM Students s
JOIN Marks m
ON s.student_id = m.student_id;

SELECT s.name, d.department_name, m.subject, m.marks
FROM Students s
JOIN Departments d ON s.department_id = d.department_id
JOIN Marks m ON s.student_id = m.student_id;

SELECT student_id, AVG(marks) AS average_marks
FROM Marks
GROUP BY student_id;

SELECT student_id, SUM(marks) AS total_marks
FROM Marks
GROUP BY student_id;

SELECT MAX(marks) AS highest_marks
FROM Marks;

SELECT department_id, COUNT(student_id) AS total_students
FROM Students
GROUP BY department_id;

SELECT name
FROM Students
WHERE student_id IN (
    SELECT student_id
    FROM Marks
    GROUP BY student_id
    HAVING AVG(marks) > (
        SELECT AVG(marks) FROM Marks
    )
);

SELECT name
FROM Students
WHERE student_id = (
    SELECT student_id
    FROM Marks
    GROUP BY student_id
    ORDER BY SUM(marks) DESC
    LIMIT 1
);

SELECT department_name
FROM Departments
WHERE department_id IN (
    SELECT department_id
    FROM Students
    GROUP BY department_id
    HAVING COUNT(*) > 1
);
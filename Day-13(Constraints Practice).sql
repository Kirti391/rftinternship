use School;

CREATE TABLE Student_table(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    marks INT DEFAULT 0,
  CHECK (marks >= 0 AND marks <= 100)
);
INSERT INTO Students (student_id, student_name, email, marks)
VALUES
(1, 'Rahul', 'rahul@gmail.com', 85),
(2, 'Priya', 'priya@gmail.com', 92),
(3, 'Amit', 'amit@gmail.com');
SELECT * FROM Student_table;
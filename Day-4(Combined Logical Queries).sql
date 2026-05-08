use company;
-- Employees with salary>50000 and dept='HR'
SELECT * FROM Employees WHERE salary>50000 AND dept='HR';
-- Empolyees sorted by salary(highest to lowest)
SELECT * FROM Employees ORDER BY salary DESC;
-- Products with rating b/w 4.0 and 4.8
SELECT * FROM Products WHERE rating BETWEEN 4.0 AND 4.8;

use school;
-- students with marks<70 or marks>90
SELECT * FROM students WHERE marks<70 OR marks>90;
-- Students sorted alphabetically by name
SELECT * FROM students ORDER By name ;

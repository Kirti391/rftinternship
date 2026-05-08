use company;
-- Highest Paid emplyoyee
SELECT * FROM employees ORDER BY salary DESC LIMIT 1;
-- Cheapest Product
SELECT * FROM Products ORDER BY price LIMIT 1;
-- Employees whose salary ia above avg
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

use school;
-- Student having Highest marks
SELECT * FROM Students ORDER BY marks DESC LIMIT 1;
-- Students whose marks are not between 60 and 80
SELECT * FROM Students WHERE marks NOT BETWEEN 60 AND 80;


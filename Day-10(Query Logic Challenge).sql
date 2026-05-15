use company;
-- Second highest salary
SELECT MAX(salary) AS second_highest_salary FROM Employees WHERE salary < (SELECT MAX(salary) FROM Employees);
-- Employees whose salary is minimum in HR department
SELECT * FROM Employees WHERE dept = 'HR' AND salary = (SELECT MIN(salary) FROM Employees WHERE dept = 'HR');
-- Products with price higher than average price
SELECT * FROM Products WHERE price > (SELECT AVG(price) FROM Products);
-- Products with highest rating
SELECT * FROM Products WHERE rating = (SELECT MAX(rating) FROM Products);

-- Students scoring above average marks
use school;
SELECT * FROM Students WHERE marks > (SELECT AVG(marks) FROM Students);


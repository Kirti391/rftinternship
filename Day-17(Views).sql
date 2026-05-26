USE company;
-- Create a view for high salary employees
CREATE VIEW HighSalaryEmployees AS
SELECT 
    id,
    name,
    dept,
    salary
FROM employees
WHERE salary > 50000;

--  Create a view for expensive products

CREATE VIEW ExpensiveProducts AS
SELECT 
    id,
    name,
    price,
    rating
FROM Products
WHERE price > 5000;

-- Create combined employee-department view

CREATE VIEW EmployeeDepartmentView AS
SELECT 
    e.id,
    e.name,
    e.dept,
    e.salary,
    d.manager
FROM employees e
INNER JOIN Departments d
ON e.dept = d.dept_name;

-- Retrieve data from created views
SELECT * FROM HighSalaryEmployees;
SELECT * FROM ExpensiveProducts;
SELECT * FROM EmployeeDepartmentView;
-- Update data using views
UPDATE HighSalaryEmployees
SET salary = salary + 2000
WHERE name = 'Amit';

USE school;
-- Create a view for student toppers
CREATE VIEW StudentToppers AS
SELECT 
    id,
    name,
    marks
FROM Students
WHERE marks >= 80;

-- Retrieve data from student topper view
SELECT * FROM StudentToppers;
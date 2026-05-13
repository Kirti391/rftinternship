USE company;

-- Increase salary of all employees by 5000
UPDATE Employees
SET salary = salary + 5000
WHERE dept = 'IT';

SELECT * FROM Employees;

-- Change department of Amit to Finance
UPDATE Employees 
SET dept = 'Finance' 
WHERE name = 'Amit';

SELECT * FROM Employees;

-- Delete products cheaper than 2000
DELETE FROM Products 
WHERE price < 2000;

SELECT * FROM Products;

---------------------------------------------------

USE school;

-- Update marks of David to 75
UPDATE Students 
SET marks = 75 
WHERE name = 'David';

-- Delete students scoring below 60
DELETE FROM Students 
WHERE marks < 60;

SELECT * FROM Students;
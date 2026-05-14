USE company;

-- Display employee names in uppercase
SELECT UPPER(name) AS employee_name FROM Employees;

-- Concatenate employee name and department
SELECT CONCAT(name, ' - ', dept) AS employee_department FROM Employees;

-- Display first 3 characters of employee names
SELECT SUBSTRING(name, 1, 3) AS first_three_characters FROM Employees;

-- Replace "IT" with "Tech" in output
SELECT REPLACE(dept, 'IT', 'Tech') AS updated_department FROM Employees;

-- Find names containing letter 'a'
SELECT name FROM Employees WHERE name LIKE '%a%';

-- Find length of each product name
SELECT name, LENGTH(name) AS name_length FROM Products;

-- Display product names ending with 'e'
SELECT name FROM Products WHERE name LIKE '%e';

USE school;
-- Display student names in lowercase
SELECT LOWER(name) AS student_name FROM Students;


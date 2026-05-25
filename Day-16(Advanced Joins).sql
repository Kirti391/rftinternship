USE company;
--  Perform LEFT JOIN between Employees and Departments
SELECT 
    e.id,
    e.name,
    e.dept,
    d.manager
FROM employees e
LEFT JOIN Departments d
ON e.dept = d.dept_name;

-- Perform RIGHT JOIN between Employees and Departments
SELECT 
    e.id,
    e.name,
    d.dept_name,
    d.manager
FROM employees e
RIGHT JOIN Departments d
ON e.dept = d.dept_name;


-- Perform FULL OUTER JOIN
-- MySQL does not support FULL OUTER JOIN directly.
-- We can achieve it using UNION.

SELECT 
    e.id,
    e.name,
    d.dept_name,
    d.manager
FROM employees e
LEFT JOIN Departments d
ON e.dept = d.dept_name

UNION

SELECT 
    e.id,
    e.name,
    d.dept_name,
    d.manager
FROM employees e
RIGHT JOIN Departments d
ON e.dept = d.dept_name;

-- Find employees without matching departments
SELECT 
    e.id,
    e.name,
    e.dept
FROM employees e
LEFT JOIN Departments d
ON e.dept = d.dept_name
WHERE d.dept_name IS NULL;

--  Find departments without employees
SELECT 
    d.dept_id,
    d.dept_name,
    d.manager
FROM Departments d
LEFT JOIN employees e
ON d.dept_name = e.dept
WHERE e.id IS NULL;
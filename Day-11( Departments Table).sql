use company;
CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50),
    manager VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'IT', 'Rajesh'),
(2, 'HR', 'Meena'),
(3, 'Finance', 'Karan');

-- Display employee names with manager names
SELECT 
    e.name AS employee_name,
    d.manager
FROM employees e
INNER JOIN Departments d
ON e.dept = d.dept_name;

-- Show employees working in HR department
SELECT 
    e.name,
    e.dept
FROM employees e
WHERE e.dept = 'HR';


--  Retrieve all employee and department details using INNER JOIN
SELECT 
    e.id,
    e.name,
    e.age,
    e.dept,
    e.salary,
    d.manager
FROM employees e
INNER JOIN Departments d
ON e.dept = d.dept_name;


-- Display all departments even if employees are absent
SELECT 
    d.dept_name,
    e.name AS employee_name
FROM Departments d
LEFT JOIN employees e
ON d.dept_name = e.dept;


--  Show total employees under each manager
SELECT 
    d.manager,
    COUNT(e.id) AS total_employees
FROM Departments d
LEFT JOIN employees e
ON d.dept_name = e.dept
GROUP BY d.manager;


-- Find manager of highest paid employee
SELECT 
    e.name AS employee_name,
    e.salary,
    d.manager
FROM employees e
INNER JOIN Departments d
ON e.dept = d.dept_name
ORDER BY e.salary DESC
LIMIT 1;


-- Display departments without employees
SELECT 
    d.dept_name
FROM Departments d
LEFT JOIN employees e
ON d.dept_name = e.dept
WHERE e.id IS NULL;
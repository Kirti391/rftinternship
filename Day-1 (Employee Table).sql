CREATE DATABASE company;
use company;
CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    age INT,
    dept VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO employees(name, age, dept, salary)
VALUES
( "Fatima", 27, "IT",60000),
( "Amit", 28, "IT",50000),
( "Garima", 30, "HR",75000),
( "Rakesh", 29, "Finance",45000),
( "Akshita", 26, "IT",65000),
( "Shravan", 27, "IT",40000);

-- All records from the employee table
SELECT * FROM employees;
-- only name and salaries of the employee
SELECT name,salary FROM employees;
-- Employee with salary>50000
SELECT name, salary FROM employees WHERE salary>50000;
 -- Employee working in HR Department 
 SELECT * FROM employees WHERE dept="HR";
 -- Employee with age<30
 SELECT * FROM employees WHERE age<30;
 -- Empoyee with salary between 45000 and 65000
 SELECT * FROM employees WHERE salary BETWEEN 45000 AND 65000;
 -- Employee with IT dept and age<30
 SELECT * FROM employees WHERE dept="IT" AND age<30;
 -- Employee whose name start with "s"
 SELECT * FROM employees WHERE name LIKE 'S%';
 -- Employee not working in HR
 SELECT * FROM employees WHERE dept !='HR';
 


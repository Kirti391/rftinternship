use company;

-- Total no. of employees
SELECT count(*)  AS total_employee FROM Employees;
-- Average salary of employees
SELECT avg(salary) AS avg_salary FROM Employees;
-- Highest and Lowest Salary
SELECT MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary FROM Employees;
-- Total Salary paid department-wise
SELECT  dept, sum(salary) AS total_salary FROM Employees GROUP BY dept;
-- Dept having highest avg salary
SELECT dept, AVG(salary) AS avg_salary FROM Employees GROUP BY dept ORDER BY avg_salary DESC LIMIT 1;

-- Total no. of products
SELECT COUNT(*) AS total_products FROM Products;
-- Average product rating
SELECT AVG(rating) AS avg_rating FROM Products;
-- Total products with rating>4.0
SELECT COUNT(*) AS high_rated_products FROM Products WHERE rating > 4.0;

use school;
-- Average marks of students
SELECT AVG(marks) AS avg_marks FROM Students;
use company;
-- Count employees department-wise
SELECT dept, COUNT(*) AS total_employees FROM employees GROUP BY dept;
-- Display avg salary department-wise
SELECT dept, AVG(salary) AS avg_salary FROM employees GROUP BY dept;
-- Department with more than one employee
SELECT dept, COUNT(*) AS total_employees FROM employees GROUP BY dept HAVING COUNT(*) > 1;
-- Department with avg salary>50000
SELECT dept, AVG(salary) AS avg_salary FROM employees GROUP BY dept HAVING AVG(salary) > 50000;
-- Department with total salary above 100000
SELECT dept, SUM(salary) AS total_salary FROM employees GROUP BY dept HAVING SUM(salary) > 100000;

-- total price of products category-wise(create category column)
SELECT * FROM Products;
ALTER TABLE Products ADD category VARCHAR(50);
UPDATE Products SET category = 'Electronics' WHERE id IN (1,2,3);
UPDATE Products SET category = 'Accessories' WHERE id IN (4,5);
SELECT category, SUM(price) AS total_price FROM Products GROUP BY category;

use school;
-- Count students based on marks ranges
SELECT
    CASE
        WHEN marks BETWEEN 0 AND 35 THEN '0-35'
        WHEN marks BETWEEN 36 AND 50 THEN '36-50'
        WHEN marks BETWEEN 51 AND 70 THEN '51-70'
        WHEN marks BETWEEN 71 AND 100 THEN '71-100'
    END AS marks_range, COUNT(*) AS student_count FROM Students GROUP BY marks_range;
-- Avg marks >70
SELECT AVG(marks) AS avg_marks FROM Students HAVING AVG(marks) > 70;




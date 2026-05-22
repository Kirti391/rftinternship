use company;
-- Employee with the longest name
SELECT *
FROM Employees
ORDER BY LENGTH(name) DESC
LIMIT 1;

-- Products sorted by rating then price
SELECT *
FROM Products
ORDER BY rating DESC, price ASC;

-- Duplicate salaries (if any)
SELECT salary, COUNT(*) AS cnt
FROM Employees
GROUP BY salary
HAVING COUNT(*) > 1;

-- Students whose names start with vowels
use school;
SELECT *
FROM Students
WHERE UPPER(SUBSTRING(name, 1, 1)) IN ('A','E','I','O','U');

-- Top 3 students
SELECT *
FROM Students
ORDER BY marks DESC
LIMIT 3;
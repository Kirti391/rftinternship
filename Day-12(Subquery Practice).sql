USE company;

-- employees earning more than average salary
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- products cheaper than average price
SELECT *
FROM Products
WHERE price < (
    SELECT AVG(price)
    FROM Products
);
--  employees with second highest salary
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
    )
);

--  products with maximum rating
SELECT *
FROM Products
WHERE rating = (
    SELECT MAX(rating)
    FROM Products
);

-- employees working in same department as Amit
SELECT *
FROM employees
WHERE dept = (
    SELECT dept
    FROM employees
    WHERE name = 'Amit'
);
USE school;

-- students scoring highest marks
SELECT *
FROM Students
WHERE marks = (
    SELECT MAX(marks)
    FROM Students
);

-- students scoring below average marks
SELECT *
FROM Students
WHERE marks < (
    SELECT AVG(marks)
    FROM Students
);


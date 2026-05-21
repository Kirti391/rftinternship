USE company;

-- Display Employee Salary Status
SELECT 
    name,
    salary,
    CASE
        WHEN salary > 60000 THEN 'High'
        WHEN salary BETWEEN 45000 AND 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_status
FROM employees;

-- Display Product Category based on price
SELECT 
    name,
    price,
    CASE
        WHEN price >= 5000 THEN 'Premium'
        WHEN price BETWEEN 2000 AND 4999 THEN 'Medium'
        ELSE 'Budget'
    END AS product_category
FROM Products;
USE school;

-- Display Student Result Status
SELECT 
    name,
    marks,
    CASE
        WHEN marks >= 80 THEN 'Excellent'
        WHEN marks BETWEEN 60 AND 79 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS result_status
FROM Students;


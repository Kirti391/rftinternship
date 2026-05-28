use company;
-- Display all employees
DELIMITER $$

CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM employees;
END $$

DELIMITER ;


-- Find employee by department
DELIMITER $$

CREATE PROCEDURE GetEmployeesByDepartment(IN dept VARCHAR(100))
BEGIN
    SELECT *
    FROM employees
    WHERE department = dept;
END $$

DELIMITER ;

-- Prevent negative salary insertion
DELIMITER $$

CREATE TRIGGER before_employee_insert
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END $$

DELIMITER ;

-- Calculate average salary

DELIMITER $$

CREATE PROCEDURE GetAverageSalary()
BEGIN
    SELECT AVG(salary) AS average_salary
    FROM employees;
END $$

DELIMITER ;


-- Log deleted students
use school;  

DELIMITER $$

CREATE TRIGGER after_student_delete
AFTER DELETE ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_delete_log(id, name)
    VALUES (OLD.id, OLD.name);
END $$

DELIMITER ;


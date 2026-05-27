---------------------------------------------------
-- Create index on employee name
USE company;

CREATE INDEX idx_employee_name
ON employees(name);
-- Create index on student marks
USE school;
CREATE INDEX idx_student_marks
ON Students(marks);
-- Create composite index on multiple columns
USE company;
CREATE INDEX idx_emp_dept_salary
ON employees(dept, salary);

-- Check indexes (optional)
SHOW INDEX FROM employees;

SHOW INDEX FROM Students;
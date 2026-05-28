# 📘 Indexing in SQL

## What is Indexing?

Indexing is a database optimization technique used to improve the speed of data retrieval operations.

An index works like the index of a book. Instead of scanning the entire table row by row, the database directly locates the required data using the index.

Indexes are mainly used to improve the performance of `SELECT` queries.

---

# 🔹 Create Index on Employee Name

```sql
USE company;

CREATE INDEX idx_employee_name
ON employees(name);
```

### Explanation
This index improves the performance of queries searching employees by name.

Example:

```sql
SELECT * FROM employees
WHERE name = 'Amit';
```

---

# 🔹 Create Index on Student Marks

```sql
USE school;

CREATE INDEX idx_student_marks
ON Students(marks);
```

### Explanation
This index helps retrieve student records faster based on marks.

Example:

```sql
SELECT * FROM Students
WHERE marks > 80;
```

---

# 🔹 Create Composite Index on Multiple Columns

```sql
USE company;

CREATE INDEX idx_emp_dept_salary
ON employees(dept, salary);
```

### Explanation
A composite index is created on more than one column.

This index improves performance for queries involving both `dept` and `salary`.

Example:

```sql
SELECT * FROM employees
WHERE dept = 'IT'
AND salary > 50000;
```

---

# ✅ Advantages of Indexing

## 1. Faster Data Retrieval
Indexes help the database find records quickly without scanning the entire table.

---

## 2. Improves WHERE Clause Performance
Queries using `WHERE` conditions become faster.

Example:

```sql
SELECT * FROM employees
WHERE name = 'Amit';
```

---

## 3. Faster Sorting and Grouping
Indexes improve performance of:
- ORDER BY
- GROUP BY
- JOIN operations

---

## 4. Reduces Full Table Scans
Without indexing, databases scan every row.
Indexes avoid unnecessary scanning.

---

## 5. Better Query Optimization
The query optimizer uses indexes to execute queries efficiently.

---

# ❌ Disadvantages of Indexing

## 1. Uses Extra Storage
Indexes require additional disk space.

---

## 2. Slower INSERT, UPDATE, DELETE
Whenever data changes, indexes must also be updated.

---

## 3. Too Many Indexes Reduce Performance
Creating excessive indexes can slow down write operations.

---

# 📊 Query Performance Comparison (Theory)

# 🔸 Before Indexing

Query:

```sql
SELECT * FROM employees
WHERE name = 'Amit';
```

### What Happens?
- Database performs a full table scan
- Every row is checked one by one
- Slower performance for large tables

---

# 🔸 After Indexing

Index Created:

```sql
CREATE INDEX idx_employee_name
ON employees(name);
```

### Result
- Database uses the index directly
- Faster searching
- Reduced query execution time

---

# 📘 Types of Indexes

## 1. Single Column Index
Created on one column.

Example:

```sql
CREATE INDEX idx_employee_name
ON employees(name);
```

---

## 2. Composite Index
Created on multiple columns.

Example:

```sql
CREATE INDEX idx_emp_dept_salary
ON employees(dept, salary);
```

---

## 3. Unique Index
Ensures unique values in indexed columns.

Example:

```sql
CREATE UNIQUE INDEX idx_unique_email
ON employees(email);
```

---

# 🎯 Conclusion

Indexing is one of the most important database optimization techniques.

It improves query performance, speeds up data retrieval, and helps databases handle large amounts of data efficiently.

However, indexes should be used carefully because excessive indexing can increase storage usage and reduce write performance.

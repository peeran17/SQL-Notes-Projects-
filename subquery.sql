📚 SQL Notes – Subqueries (Revision)
Definition

A Subquery is a query written inside another query to provide data to the outer query.

Simple Definition:

Query inside another query = Subquery

Syntax
SELECT column_name
FROM table_name
WHERE column_name operator
(
    SELECT column_name
    FROM table_name
);
How It Works
Subquery Executes First
          ↓
Returns Result
          ↓
Outer Query Uses That Result
          ↓
Final Output
Example 1: Employees Earning Above Average Salary
SELECT *
FROM Employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);
Execution:

Step 1:

SELECT AVG(Salary)
FROM Employee;

Output:

70000

Step 2:

SELECT *
FROM Employee
WHERE Salary > 70000;
Why Do We Use Subqueries?

✅ To get dynamic values

✅ To avoid writing multiple queries

✅ To perform complex calculations and reports

✅ To filter data based on another query's result

Types of Subqueries
1. Single-Row Subquery

Definition:

Returns only one value.

##Example:

SELECT *
FROM Employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);

Returns:

70000
2. Multiple-Row Subquery

Definition:

Returns multiple values.

Example:

SELECT Name
FROM Employee
WHERE DepartmentID IN
(
    SELECT DepartmentID
    FROM Department
    WHERE Location = 'Chennai'
);

Subquery may return:

1
3
5
3. Correlated Subquery

Definition:

A subquery that depends on the outer query for its execution.

Example:

SELECT Name, Salary
FROM Employee e
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
    WHERE DepartmentID = e.DepartmentID
);
Common Functions Used with Subqueries
AVG()
SELECT *
FROM Employee
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);
MAX()
SELECT *
FROM Employee
WHERE Salary =
(
    SELECT MAX(Salary)
    FROM Employee
);
MIN()
SELECT *
FROM Employee
WHERE Salary =
(
    SELECT MIN(Salary)
    FROM Employee
);
IN
SELECT *
FROM Employee
WHERE DepartmentID IN
(
    SELECT DepartmentID
    FROM Department
    WHERE Location = 'Chennai'
);
EXISTS
SELECT *
FROM Employee e
WHERE EXISTS
(
    SELECT *
    FROM Department d
    WHERE e.DepartmentID = d.DepartmentID
);
Real-Life Uses
HR System
Find employees earning above average salary.
Find highest-paid employee.
Banking System
Find account with maximum balance.
Find customers with transactions above average amount.
E-Commerce
Find products above average price.
Find customers who placed maximum orders.
Interview Definition

A Subquery is a query nested inside another query that provides intermediate results to the outer query.

Memory Trick
Subquery = Query inside another Query
Inner Query Executes First
           ↓
Returns Result
           ↓
Outer Query Uses Result
           ↓
Final Output
Placement Priority ⭐⭐⭐⭐⭐

Master these patterns:

✅ AVG() Subquery
✅ MAX() Subquery
✅ MIN() Subquery
✅ IN Subquery
✅ EXISTS Subquery
✅ Correlated Subquery

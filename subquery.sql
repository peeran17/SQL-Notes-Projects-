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



The four main subquery patterns
You don't need to memorize every variation at once. First, learn to recognize what the question is asking.

Type 1: Scalar subquery

One value
When: The question compares something with one calculated value.

Example: Find orders above the average amount.

SQL


WHERE Amount > (
    SELECT AVG(Amount)
    FROM Orders
)

Look for phrases like above average, maximum, minimum, or equal to the overall average.

Type 2: IN subquery

Multiple values
When: You want to match against a list of values returned by another query.

Example: Find customers who have placed an Electronics order.

SQL


SELECT CustomerID
FROM Orders
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE Category = 'Electronics'
);

The inner query returns customer IDs that ordered Electronics. The outer query matches those IDs.

#################Type 3: Correlated subquery###########################

Depends on the outer row
When: You need to compare each row against a value calculated for its own group.

Example: Find orders whose amount is greater than the average amount for that order's category.

SQL


SELECT o.OrderID, o.Category, o.Amount
FROM Orders AS o
WHERE o.Amount > (
    SELECT AVG(i.Amount)
    FROM Orders AS i
    WHERE i.Category = o.Category
);

The inner query refers to o.Category from the outer query. That connection makes it correlated.

Type 4: EXISTS subquery

Checks existence
When: You only need to know whether at least one matching row exists.

Example: Find customers who have at least one Electronics order.

SQL


SELECT c.CustomerID
FROM (
    SELECT DISTINCT CustomerID
    FROM Orders
) AS c
WHERE EXISTS (
    SELECT 1
    FROM Orders AS o
    WHERE o.CustomerID = c.CustomerID
      AND o.Category = 'Electronics'
);

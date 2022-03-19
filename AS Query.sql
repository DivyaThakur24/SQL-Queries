-- SQLite
--Employee's age on the date of their hiring
SELECT FirstName || ' ' || LastName AS EmployeeName, 
strftime('%Y', HireDate) - strftime('%Y', BirthDate) AS Age
FROM employees;

SELECT c.FirstName ||' ' || c.LastName AS CustomerName, e.FirstName || ' ' || e.LastName AS EmployeeName
FROM customers AS c, employees AS e;

SELECT *
FROm employees;
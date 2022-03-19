-- SQLite
SELECT c.FirstName || ' ' || c.LastName AS CustomerName, c.Country AS CustomerCountry, e.FirstName || ' ' || e.LastName AS EmployeeName, e.Country AS EmployeeCountry
FROM customers AS c, employees AS e;

SELECT c.FirstName || ' ' || c.LastName AS CustomerName, c.Country AS CustomerCountry, e.FirstName || ' ' || e.LastName AS EmployeeName, e.Country AS EmployeeCountry
FROM customers AS c, employees AS e;
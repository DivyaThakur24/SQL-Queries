-- SQLite
SELECT FirstName || ' ' || LastName AS EmployeeName
FROM employees;

SELECT Address || ',' || City || ',' || State || ',' || Country || ',' || PostalCode AS EmployeeAddress
FROM employees;
-- SQLite
WITH Customer_Info AS (
SELECT CustomerId, FirstName || ' ' || LastName AS Name, City, State, Country
FROM customers
),
Invoice_Info AS (
SELECT CustomerId, Total
FROM invoices
)

SELECT ci.CustomerId, ci.Name, ci.City, ci.State, ci.Country, SUM(ii.Total) AS Sum_Total
FROM Customer_Info AS ci 
JOIN Invoice_info AS ii
ON ci.CustomerId = ii.CustomerId
GROUP BY 1
ORDER BY 6;

SELECT c.CustomerId,c.FirstName, SUM(i.Total)
FROM customers AS c
JOIN invoices AS i
ON c.CustomerId = i.CustomerId
GROUP BY 1;

WITH Customers_Info AS (
SELECT CustomerId, FirstName || ' ' || LastName AS Name, City, State, Country
FROM customers
),
Invoices_Info AS (
SELECT CustomerId, Total
FROM invoices
)

SELECT ci.CustomerId,ci.Name, ci.City, ci.State, ci.Country, SUM(ii.Total) AS Sum_Total
FROM Customers_Info AS ci 
JOIN Invoices_info AS ii
ON ci.CustomerId = ii.CustomerId
GROUP BY 1
ORDER BY 6 DESC;


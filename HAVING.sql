-- SQLite
SELECT c.Country, SUM(i.Total) AS CountryTotal
FROM customers AS c
LEFT JOIN invoices AS i
ON c.CustomerId = i.CustomerId
GROUP BY c.Country  
HAVING CountryTotal > 70.00
ORDER BY CountryTotal DESC; 

SELECT c.Country, COUNT(c.CustomerID) AS NumberOfCustomers, SUM(i.Total) AS CountryTotal
FROM customers AS c 
LEFT JOIN invoices AS i 
ON c.CustomerId = i.CustomerId
GROUP BY c.Country
HAVING CountryTotal > 70.00
ORDER BY CountryTotal;
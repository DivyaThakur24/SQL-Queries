-- SQLite
SELECT CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId
FROM customers;

SELECT c.Company, i.Total
FROM customers AS c
RIGHT JOIN invoices AS i
ON c.CustomerId = i.CustomerId;
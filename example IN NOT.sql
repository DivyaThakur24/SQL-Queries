-- SQLite
SELECT CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId
FROM customers;

SELECT FirstName, Country
FROM customers
WHERE Country NOT IN ('USA', 'Canada');

SELECT FirstName, Country
FROM customers
WHERE NOT Country = 'USA' AND NOT Country = 'Canada';
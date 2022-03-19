-- SQLite
SELECT CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId
FROM customers
WHERE NOT Country = 'USA' AND NOT Country = 'Canada';

SELECT *
FROM customers
WHERE NOT Country = 'USA' AND NOT Country = 'Canada';

SELECT *
FROM customers
WHERE Country NOT IN ('USA', 'Canada');
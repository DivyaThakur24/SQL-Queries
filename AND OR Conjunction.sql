-- SQLite
SELECT CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId
FROM customers
WHERE Country='Germany' AND (City='Berlin' OR City='Frankfurt');

SELECT CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId
FROM customers
WHERE Country='Germany' OR (City='Delhi' OR City='Bangalore');

SELECT *
FROM customers
WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Frankfurt');

SELECT City, State, Country, FirstName || ' ' || LastName AS Name
FROM customers
WHERE Country = 'Germany' OR (City = 'Delhi' OR City = 'Bangalore');
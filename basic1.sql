-- SQLite
--From what all countries, our customers belong to
--How many total countries, customers come from\
--Customers who belong to USA
SELECT FirstName, LastName, Phone, Email, Country
FROM customers
WHERE country = 'USA';
-- SQLite
SELECT FirstName, Country
FROM customers
WHERE Country IN ('USA','Brazil', 'Germany', 'Finland', 'Hungary');
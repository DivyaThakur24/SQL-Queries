-- SQLite
SELECT Email, FirstName || ' ' || LastName AS CustomerName
FROM customers
WHERE Email LIKE '%apple%';

SELECT Email, FirstName || ' ' || LastName AS CustomerName
FROM customers
WHERE Email LIKE '%gmail%';

SELECT Name
FROM artists
WHERE Name LIKE 'A%';


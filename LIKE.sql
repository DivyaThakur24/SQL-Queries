-- SQLite
SELECT Name
FROM artists
WHERE Name LIKE 'B%';

SELECT Name
FROM artists
WHERE Name LIKE '%b%';

SELECT Name
FROM artists
WHERE Name LIKE '_b%';

SELECT Name
FROM artists
WHERE Name LIKE 'a%o';

SELECT Name
FROM artists
WHERE Name LIKE 'a_%';

SELECT Name
FROM artists
WHERE Name LIKE 'a__%';
-- SQLite
--Starting from A
SELECT Name
FROM artists
WHERE Name LIKE 'A_'; 
--Ending with a
SELECT Name
FROM artists
WHERE Name LIKE '%a';
--Have a somewhere in the middle of their names
SELECT Name
FROM artists
WHERE Name LIKE '%a%';
--b in it's second position -- atleast 2 characters %-0,1,or more
SELECT Name
FROM artists
WHERE Name LIKE '_b%'; 
--r in it's 3rd position -- atleast 3 characters
SELECT Name
FROM artists
WHERE Name LIKE '__r%';
--starting with a, ao, aro, abo, abbo, auuuuo, end with o
SELECT Name
FROM artists
WHERE Name LIKE 'a%o';

SELECT *
FROM artists;
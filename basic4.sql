-- SQLite
--Name, Composer, Milliseconds less than 200000
SELECT COUNT(DISTINCT Composer)
FROM tracks
WHERE Composer IS NOT NULL;
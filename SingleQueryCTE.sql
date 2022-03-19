-- SQLite
--SubQuery
SELECT UnitPrice, Sum_Quantity, GenreName
FROM (SELECT ii.UnitPrice AS UnitPrice, SUM(ii.Quantity) AS Sum_Quantity, g.Name AS GenreName 
        FROM invoice_items AS ii
        JOIN tracks AS t 
        ON ii.TrackId = t.TrackId
        JOIN genres AS g 
        ON g.GenreId = t.GenreId
        GROUP BY 1,3) AS sub
WHERE GenreName IN ('Jazz', 'Drama', 'TV Shows');

--How many tracks of each genre were sold?
--CTE
WITH sub AS (SELECT ii.UnitPrice AS UnitPrice, ii.Quantity AS Quantity, g.Name AS GenreName
        FROM invoice_items AS ii
        JOIN tracks AS t 
        ON ii.TrackId = t.TrackId
        JOIN genres AS g 
        ON g.GenreId = t.GenreId
        WHERE GenreName IN ('Jazz', 'Drama', 'TV Shows'))

SELECT UnitPrice, SUM(Quantity), GenreName
FROM sub
GROUP BY 1,3;


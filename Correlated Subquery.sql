-- SQLite
SELECT UnitPrice, SUM(Quantity), GenreName
FROM
(SELECT ii.UnitPrice AS UnitPrice, SUM(ii.Quantity) AS Quantity, g.Name AS GenreName
FROM invoice_items AS ii
JOIN tracks AS t 
ON ii.TrackId = t.TrackId
JOIN genres AS g 
ON g.GenreId = t.GenreId
GROUP BY 1,3)
WHERE GenreName = 'Jazz' OR GenreName = 'Drama'
GROUP BY 1;

SELECT ii.UnitPrice AS UnitPrice, SUM(ii.Quantity) AS Quantity, g.Name AS GenreName
FROM invoice_items AS ii
JOIN tracks AS t 
ON ii.TrackId = t.TrackId
JOIN genres AS g 
ON g.GenreId = t.GenreId
GROUP BY 1,3;

SELECT UnitPrice, Quantity, GenreName
FROM (SELECT ii.UnitPrice AS UnitPrice, SUM(ii.Quantity) AS Quantity, g.Name AS GenreName 
        FROM invoice_items AS ii
        JOIN tracks AS t 
        ON ii.TrackId = t.TrackId
        JOIN genres AS g 
        ON g.GenreId = t.GenreId
        GROUP BY 1,3) AS sub
WHERE GenreName IN ('Jazz', 'Drama');

SELECT UnitPrice, SUM(Quantity), GenreName
FROM (SELECT ii.UnitPrice AS UnitPrice, SUM(ii.Quantity) AS Quantity, g.Name AS GenreName
        FROM invoice_items AS ii
        JOIN tracks AS t 
        ON ii.TrackId = t.TrackId
        JOIN genres AS g 
        ON g.GenreId = t.GenreId
        GROUP BY 1,3) AS S
WHERE GenreName IN('TV Shows', 'Jazz', 'Drama')
GROUP BY 1,3;




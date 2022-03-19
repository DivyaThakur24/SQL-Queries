-- SQLite
SELECT Name, Title
FROM artists, albums
WHERE artists.ArtistId = albums.ArtistId;

SELECT artists.Name, albums.Title
FROM artists
INNER JOIN albums ON artists.ArtistId = albums.ArtistId;

SELECT c.CustomerID, i.CustomerId, c.FirstName, i.Total
FROM customers AS c
JOIN invoices AS i ON c.CustomerId = i.CustomerId;


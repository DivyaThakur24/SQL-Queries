-- SQLite
SELECT UnitPrice, COUNT(TrackId) AS NumberOfTracks
FROM tracks
GROUP BY UnitPrice;

SELECT Country, COUNT(*) AS Customers
FROM customers
GROUP BY Country;
-- SQLite
SELECT TrackId, Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice
FROM tracks;

SELECT *
FROM genres;

SELECT t.Composer, t.Name, g.Name
FROM tracks AS t
LEFT JOIN genres AS g ON t.GenreId = g.GenreId;
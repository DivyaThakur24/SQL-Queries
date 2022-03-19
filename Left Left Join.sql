-- SQLite
SELECT MediaTypeId, Name
FROM media_types;

SELECT TrackId, Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice
FROM tracks;

SELECT m.Name, a.Title AS AlbumName
FROM tracks AS t
LEFT JOIN media_types AS m ON m.MediaTypeId = t.MediaTypeId
LEFT JOIN albums AS a  ON a.AlbumId = t.AlbumId;

SELECT t.Composer, a.Title AS AlbumName
FROM tracks AS t
LEFT JOIN albums AS a  ON a.AlbumId = t.AlbumId;
-- SQLite
SELECT *
FROM Tracks;

SELECT *
FROM media_types;

--How many number of tracks fall into each category of Media types?

SELECT COUNT(t.TrackId), m.MediaTypeId 
FROM tracks AS t 
LEFT JOIN media_types AS m
ON t.MediaTypeId = m.MediaTypeId
GROUP BY m.MediaTypeId;

SELECT COUNT(TrackId) AS NumberOFTracks, m.MediaTypeId, m.Name
FROM tracks AS t 
LEFT JOIN media_types AS m 
ON t.MediaTypeId = m.MediaTypeId
GROUP BY m.MediaTypeId;

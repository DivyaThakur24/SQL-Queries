SELECT Title, Name
FROM albums, artists
WHERE albums.ArtistId = artists.ArtistID;

SELECT albums.Title, artists.Name
FROM albums
JOIN artists ON albums.ArtistId = artists.ArtistID;


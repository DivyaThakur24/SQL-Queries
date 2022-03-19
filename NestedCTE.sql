-- SQLite
SELECT COUNT(Tracks), Playlist_Name
FROM (SELECT t.Name Tracks, t.Milliseconds Time_in_ms, p.Name Playlist_Name
    FROM tracks t
    JOIN playlist_track pt
    ON t.TrackId = pt.TrackId
    JOIN playlists p
    ON p.PlaylistId = pt.PlaylistId
    WHERE t.Milliseconds > (SELECT AVG(Milliseconds) FROM tracks)
    ORDER BY 2,3) AS sub
GROUP BY 2;

WITH avg AS (
SELECT AVG(Milliseconds) FROM tracks
),
sub AS (
SELECT t.Name Tracks, t.Milliseconds Time_in_ms, p.Name Playlist_Name
    FROM tracks t
    JOIN playlist_track pt
    ON t.TrackId = pt.TrackId
    JOIN playlists p
    ON p.PlaylistId = pt.PlaylistId
    WHERE t.Milliseconds > (SELECT * FROM avg)
    ORDER BY 2,3
)

SELECT COUNT(Tracks), Playlist_Name
FROM sub
GROUP BY 2;

WITH avg AS (SELECT AVG(Milliseconds) FROM tracks),
     sub AS (SELECT t.Name Tracks, t.Milliseconds Time_in_ms, p.Name Playlist_Name
            FROM tracks t
            JOIN playlist_track pt
            ON t.TrackId = pt.TrackId
            JOIN playlists p
            ON p.PlaylistId = pt.PlaylistId
            WHERE t.Milliseconds > (SELECT * FROM avg)
            ORDER BY 2,3)

SELECT COUNT(Tracks), Playlist_Name
FROM sub
GROUP BY 2;




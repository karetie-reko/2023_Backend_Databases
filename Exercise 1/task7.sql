/*
Fetch album and track information for the artist "Iron Maiden".
Select album name, album year, track name, track number and track length to the result.
Sort the result primarily by album name and secondarily by track number.
*/

SELECT a.name, a.year, b.name, b.length, b.track_number FROM album a
LEFT JOIN track b ON a.id = b.album_id
left JOIN artist c on a.artist_id = c.id
WHERE c.name = "Iron Maiden"
order by a.name, b.track_number;
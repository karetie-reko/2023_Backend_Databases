/*
Calculate and return the count of albums each band has in the database.
Include Artist name and album count into the result.
Name the result columns as "Artist" and "Album count".
*/

SELECT a.name AS Artist, COUNT(b.id) AS "Album count"
From artist a
JOIN album b on a.id = b.artist_id
GROUP BY a.name;
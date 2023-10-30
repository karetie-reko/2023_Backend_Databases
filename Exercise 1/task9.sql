/*
Fetch artist name and their albums. Include albums without artist information in the
result set.
Include artist's name, albums name and release year to the result.

Hae artistien nimi ja kaikki artistin albumit. Sisällytä tulosjoukkoon myös ne albumit,
joille ei ole asetettu artistia.
Ota tulokseen mukaan artistin nimi, albumin nimi ja julkaisuvuosi.
*/

SELECT a.name AS Artist, IFNULL(b.name, 'Unreleased') AS Album, IFNULL(b.year, 0) AS Year
From artist a
JOIN album b on a.id = b.artist_id;
/*
Insert a new album called "The Final Frontier" and all the tracks for that
album. Information of tracks is listed below. The artist is Iron Maiden, release year 2010.

Lisää uusi albumi tietokantaan. Albumin nimi on "The Final Frontier", julkaisuvuosi 2010. Artisti on Iron Maiden.
Kappaleiden tiedot on listattu alla, lisää myös ne tietokantaan.

 1. Satellite 15... The Final Frontier 8.40
 2. El Dorado 6.49
 3. Mother of Mercy Harris 5.20
 4. Coming Home 5.52
 5. The Alchemist 4.29
 6. Isle of Avalon 9.06
 7. Starblind 7.48
 8. The Talisman 9.03
 9. The Man Who Would Be King 8.28
 10. When the Wild Wind Blows 10.59
*/

INSERT into album(name, year, artist_id)
VALUES ("The Final Frontier", "2010", 1);
INSERT into track (name, length, track_number, album_id) VALUES("Satellite 15", "8.40", 1, 8),
("El Dorado", "6.49", 2, 8),
("Mother of Mercy Harris", "5.20", 3, 8),
("Coming Home", "5.52", 4, 8),
("The Alchemist", "4.29", 5, 8),
("Isle of Avalon", "9.06", 6, 8),
("Starblind", "7.48", 7, 8), ("The Talisman", "9.03", 8, 8),
("The Man Who Would Be King", "8.28", 9, 8),
("When the Wild Wind Blows", "10.59", 10, 8);
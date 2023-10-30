/*
Listaa kaikki ruokalajit, joissa on käytetty ainesosaa "Peruna".

List all the dishes which contains ingredient "Peruna".
*/

// Ensimmäinen rivi: Muutetaan dish.name muotoon dishName
// Haetaan dish.name dishes sarakkeesta ja asetetaan se kirjaimelle d
// Yhdistetään contains sarake d.id taulukon kanssa ja kerrotaan ohjelmalle, että d.if ja c.dish_id on sama
// asetetaan ingredients muuttujalle i yhdistetään c.ingredient_id i.id:een kanssa
// Lopuksi haetaan aterioita asettamalla ingredients = "Peruna" Näin ohjelma vertaa raaka-aineiden nimiä asetetun arvon kanssa, 
// sen jälkeen ohjelma katsoo onko ruokalajin c osiossa Perunan id:eetä mikäli on ohjelma palauttaa
// Palauttaa kyseisen ruokalajin id:een ja sitä kautta myös ruokalajin nimen.

SELECT DISTINCT d.name as dishName
from dishes d
JOIN contains c ON d.id = c.dish_id
JOIN  ingredients i on c.ingredient_id = i.id;
Where i.name = "Peruna";

/*Add users for the web news paper database. There should be at least two users defined, one for article authors who can post new articles
and another role for readers. Readers are not allowed to publish articles, but they can comment on them. Apply privileges to proper
tables for each user created.

Lisää käyttäjät verkkolehtitietokannalle. Tietokannan tulee sisältää ainakin kaksi käyttäjää, toinen artikkeleiden kirjoittajille ja toinen
artikkelijen lukijoille. Kirjoittaja voi julkaista uusia artikkeleita. Lukija ei voi julkaista artikkeleja, mutta tämä käyttäjä voi kommentoida niitä.
Anna luoduille käyttäjille tähän käyttötarkoitukseen soveltuvat oikeudet kuhunkin tauluun.
*/
Alter table Kayttajat modify column user_info VARCHAR (30) default 'N/A'
create user 'user'@'localhost' identified by 'user';
grant insert, select on Verkkolehti.Kommentit TO 'user'@'localhost';
grant select on Verkkolehti.Artikkelit TO 'user'@'localhost';
grant select, update, insert on Verkkolehti.Kayttajat TO 'user'@'localhost';
create user 'author'@'localhost' identified by 'admin';
grant insert, update, delete, select on Verkkolehti.Artikkelit TO 'author'@'localhost';
grant insert, update, delete, select on Verkkolehti.Kommentit TO 'author'@'localhost';
grant insert, update, delete, select on Verkkolehti.Kayttajat TO 'author'@'localhost';
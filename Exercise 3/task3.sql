/*
In some use cases we cound have multiple users with identical or very similar privileges. For this SQL defines user roles. Roles are predefined sets of
privileges which can be granted for users and toggled on or off. In out news paper website example there could be separate roles for e.g. authors and readers.
Define those roles and apply suitable privileges for them. Remove existing privileges from users created in the previous task and replace them with
newly created roles. Enable roles for users.

Joissain järjestelmissä voimme tarvita useita eri käyttäjiä, joilla on samat tai lähes samat käyttöoikeudet. Tätä käyttötapausta varten SQL määrittää
roolit. Rooli on ennalta määritelty joukko käyttöoikeuksia, jotka voidaan antaa käyttäjille oikeuksien sijaan (tai lisäksi) ja jotka voidaan kytkeä päälle
tai pois tarvittaessa. Verkkolehtitietokantaesimerkissämme voisi olla esimerkiksi määritettynä roolit artikkelin kirjoittajalle ja lukijalle. Määritä nämä
roolit ja anna soveltuvat käyttöoikeudet näille. Poista aiemmin määrittelemämme oikeudet aiemmassa tehtävässä määrittämiltämme käyttäjiltä ja korvaa ne uusilla
roolimäärityksillä. Ota uudet roolit käyttöön.
*/

REVOKE All privileges ON Verkkolehti. * from 'user'@'localhost';
REVOKE all privileges ON Verkkolehti. * from 'author'@'localhost';
create ROLE 'user_role'
create ROLE 'writer_role'
grant insert, select on Verkkolehti.Kommentit TO 'user_role';
grant select on Verkkolehti.Artikkelit TO 'user_role';
grant select, update, insert on Verkkolehti.Kayttajat TO 'user_role';
create ROLE 'writer_role'
grant insert, update, delete, select on Verkkolehti.Artikkelit TO 'writer_role';
grant insert, update, delete, select on Verkkolehti.Kommentit TO 'writer_role';
grant insert, update, delete, select on Verkkolehti.Kayttajat TO 'writer_role';
Grant writer_role to author@localhost;
Grant user_role to user@localhost;
set default role writer_role for author@localhost;
set default role writer_role for author@localhost;
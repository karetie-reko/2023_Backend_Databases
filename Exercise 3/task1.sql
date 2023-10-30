/*
Create a database based on last week's task 4. In that task we designed a database for a web news paper. The database has
to follow the plan created last week. If you need to update the plan, include an updated drawing of the
database to your return. Add foreign key restrictions for the tables as well.

Luo tietokanta viime viikon tehtävän 3 perusteella. Tuossa tehtävässä suunittelimme tietokannan verkkolehdelle.
Tietokannan tulee noudattaa viime viikon suunitelmaa. Jos suunnitelmaan pitää tehdä muutoksia, lisää palautukseen
mukaan kuva päivitetyn tietokannan rakenteesta. Lisää myös vierasavainrajoitteet tauluille.
*/
Create DATABASE Verkkolehti;


CREATE table if not EXISTS Kayttajat (
    id int AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    PhoneNumber INT not NULL,
    email VARCHAR(255) NOT NULL,
    userauth VARCHAR(255) not NULL,
    user_info VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE if not EXISTS Artikkelit (
 id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    content TEXT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Kayttajat(id) on delete set null on update cascade,
    time_of_release TIMESTAMP NOT NULL
);

 CREATE TABLE if not EXISTS Kommentit(
    id INT AUTO_INCREMENT PRIMARY KEY,
    article_id int,
    foreign key(article_id) References Artikkelit(id) on delete set null,
    COMMENT_date TEXT not NULL,
    user_id int,
    foreign key (user_id) References Kayttajat(id) on delete set null
 );
/*
Fetch all the tracks which length is less than one minute or more than five minutes.
Order the results in ascending order based on the length.

Hae kaikki kappaleet, joiden pituus on vähemmän kuin yhden minuutin tai enemmän kuin viisi minuuttia.
Järjestä kappaleet nousevaan järjestykseen pituuden perusteella.
*/

SELECT *
from track
where length < "00:01:00" or length > "00:05:00"
order by length;

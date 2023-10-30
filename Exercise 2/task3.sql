/*
Kirjoita kysely, joka palauttaa niiden ruokalajien määrän, jotka sisältävät ainesosan "Sipuli".

Write a query which returns the amount of dishes that contain ingredient "Sipuli".
*/

SELECT count(DISTINCT d.name) as Amount_Of_Dishes
from dishes d
JOIN contains c ON d.id = c.dish_id
JOIN  ingredients i on c.ingredient_id = i.id;
Where i.name = "Sipuli";

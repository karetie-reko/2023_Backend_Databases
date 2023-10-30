/*
Listaa ruokalajin "Lihapiirakka" kaikki ainesosat.

List all the ingredients which are used in the dish "Lihapiirakka".
*/

SELECT i.name as ingredient_name
from dishes d

JOIN contains c ON d.id = c.dish_id

JOIN ingredients i ON c.ingredient_id = i.id

WHERE d.name = "Lihapiirakka"

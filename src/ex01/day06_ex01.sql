INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER( ) OVER ( ) AS id, person_id, menu.pizzeria_id,
        CASE
        	WHEN (menu.pizzeria_id) = 1 THEN 10.5
        	WHEN (menu.pizzeria_id) = 2 THEN 22
        	ELSE 30
        END AS discount
FROM person_order p
JOIN menu ON menu.id = p.menu_id
GROUP BY person_id, menu.pizzeria_id;

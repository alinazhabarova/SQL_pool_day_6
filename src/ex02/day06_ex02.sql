SELECT DISTINCT ON (person.name, pizza_name)
        person.name as person_name, 
		pizza_name, 
        price, 
        (price - price * (person_discounts.discount / 100)):: INTEGER AS discount_price,
        pizzeria.name as pizzeria_name
FROM menu
INNER JOIN pizzeria on pizzeria.id = menu.pizzeria_id
INNER JOIN person_order on menu.id = person_order.menu_id
INNER JOIN person on person.id = person_order.person_id
INNER JOIN person_discounts on person_discounts.person_id = person_order.person_id
ORDER BY person.name, pizza_name;

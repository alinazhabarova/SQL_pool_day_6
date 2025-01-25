CREATE UNIQUE INDEX idx_person_discounts_unique on person_discounts (person_id, pizzeria_id);

SET enable_seqscan = off;
EXPLAIN ANALYSE
SELECT *
FROM person_discounts
JOIN person_order ON person_order.person_id = person_discounts.person_id
WHERE person_discounts.person_id = 1 AND pizzeria_id = 2;

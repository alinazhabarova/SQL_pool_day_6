COMMENT ON TABLE person_discounts IS 'This table stores information about discounts assigned to persons in different pizzerias.';

COMMENT ON COLUMN person_discounts.id IS 'Unique identifier for the discount record.';
COMMENT ON COLUMN person_discounts.person_id IS 'Identifier of the person who receives the discount.';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Identifier of the pizzeria where the discount is applicable.';
COMMENT ON COLUMN person_discounts.discount IS 'Discount percentage applied to the person''s order at the specified pizzeria.';
